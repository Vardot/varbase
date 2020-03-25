<?php

namespace Drupal\varbase\entity;

use Drupal\Core\DependencyInjection\ContainerInjectionInterface;
use Drupal\Core\Entity\EntityDefinitionUpdateManagerInterface;
use Drupal\Core\Entity\EntityFieldManagerInterface;
use Drupal\Core\Entity\EntityLastInstalledSchemaRepositoryInterface;
use Drupal\Core\Entity\EntityTypeListenerInterface;
use Drupal\Core\Entity\EntityTypeManagerInterface;
use Drupal\Core\Entity\Schema\EntityStorageSchemaInterface;
use Drupal\Core\Field\FieldStorageDefinitionInterface;
use Drupal\Core\Field\FieldStorageDefinitionListenerInterface;
use Symfony\Component\DependencyInjection\ContainerInterface;

/**
 * Varbase Entity Definition Update Manager.
 *
 * Customized class from the Devel Entity Updates module
 * Development version of the entity definition update manager.
 */
final class VarbaseEntityDefinitionUpdateManager implements ContainerInjectionInterface {

  /**
   * The entity definition update manager.
   *
   * @var \Drupal\Core\Entity\EntityDefinitionUpdateManagerInterface
   */
  private $entityDefinitionUpdateManager;

  /**
   * The last installed schema repository.
   *
   * @var \Drupal\Core\Entity\EntityLastInstalledSchemaRepositoryInterface
   */
  private $entityLastInstalledSchemaRepository;

  /**
   * The entity type manager service.
   *
   * @var \Drupal\Core\Entity\EntityTypeManagerInterface
   */
  private $entityTypeManager;

  /**
   * The entity type listener service.
   *
   * @var \Drupal\Core\Entity\EntityTypeListenerInterface
   */
  private $entityTypeListener;

  /**
   * The entity field manager service.
   *
   * @var \Drupal\Core\Entity\EntityFieldManagerInterface
   */
  private $entityFieldManager;

  /**
   * The field storage definition listener service.
   *
   * @var \Drupal\Core\Field\FieldStorageDefinitionListenerInterface
   */
  private $fieldStorageDefinitionListener;

  /**
   * Constructs a new EntityDefinitionUpdateManager.
   *
   * @param \Drupal\Core\Entity\EntityDefinitionUpdateManagerInterface $entity_definition_update_manager
   *   The entity definition update manager.
   * @param \Drupal\Core\Entity\EntityLastInstalledSchemaRepositoryInterface $entity_last_installed_schema_repository
   *   The last installed schema repository service.
   * @param \Drupal\Core\Entity\EntityTypeManagerInterface $entity_type_manager
   *   The entity type manager service.
   * @param \Drupal\Core\Entity\EntityTypeListenerInterface $entity_type_listener
   *   The entity type listener interface.
   * @param \Drupal\Core\Entity\EntityFieldManagerInterface $entity_field_manager
   *   The entity field manager service.
   * @param \Drupal\Core\Field\FieldStorageDefinitionListenerInterface $field_storage_definition_listener
   *   The field storage definition listener service.
   */
  public function __construct(
    EntityDefinitionUpdateManagerInterface $entity_definition_update_manager,
    EntityLastInstalledSchemaRepositoryInterface $entity_last_installed_schema_repository,
    EntityTypeManagerInterface $entity_type_manager,
    EntityTypeListenerInterface $entity_type_listener,
    EntityFieldManagerInterface $entity_field_manager,
    FieldStorageDefinitionListenerInterface $field_storage_definition_listener
  ) {
    $this->entityDefinitionUpdateManager = $entity_definition_update_manager;
    $this->entityLastInstalledSchemaRepository = $entity_last_installed_schema_repository;
    $this->entityTypeManager = $entity_type_manager;
    $this->entityTypeListener = $entity_type_listener;
    $this->entityFieldManager = $entity_field_manager;
    $this->fieldStorageDefinitionListener = $field_storage_definition_listener;
  }

  /**
   * {@inheritdoc}
   */
  public static function create(ContainerInterface $container) {
    // @noinspection PhpParamsInspection.
    return new static(
      $container->get('entity.definition_update_manager'),
      $container->get('entity.last_installed_schema.repository'),
      $container->get('entity_type.manager'),
      $container->get('entity_type.listener'),
      $container->get('entity_field.manager'),
      $container->get('field_storage_definition.listener')
    );
  }

  /**
   * Applies all the detected valid changes.
   */
  public function applyUpdates() {
    // Ensure this works also on Drupal 8.6 and earlier.
    $reflector = new \ReflectionMethod($this->entityDefinitionUpdateManager, 'getChangeList');
    $reflector->setAccessible(TRUE);
    $complete_change_list = $reflector->invoke($this->entityDefinitionUpdateManager);

    if ($complete_change_list) {
      // EntityDefinitionUpdateManagerInterface::getChangeList() only disables
      // the cache and does not invalidate. In case there are changes,
      // explicitly invalidate caches.
      $this->entityTypeManager->clearCachedDefinitions();
      $this->entityFieldManager->clearCachedFieldDefinitions();
    }
    foreach ($complete_change_list as $entity_type_id => $change_list) {
      // Process entity type definition changes before storage definitions ones
      // this is necessary when you change an entity type from non-revisionable
      // to revisionable and at the same time add revisionable fields to the
      // entity type.
      if (!empty($change_list['entity_type'])) {
        $this->doEntityUpdate($change_list['entity_type'], $entity_type_id);
      }

      // Process field storage definition changes.
      if (!empty($change_list['field_storage_definitions'])) {
        $storage_definitions = $this->entityFieldManager->getFieldStorageDefinitions($entity_type_id);
        $original_storage_definitions = $this->entityLastInstalledSchemaRepository->getLastInstalledFieldStorageDefinitions($entity_type_id);

        foreach ($change_list['field_storage_definitions'] as $field_name => $change) {
          $storage_definition = isset($storage_definitions[$field_name]) ? $storage_definitions[$field_name] : NULL;
          $original_storage_definition = isset($original_storage_definitions[$field_name]) ? $original_storage_definitions[$field_name] : NULL;
          $this->doFieldUpdate($change, $storage_definition, $original_storage_definition);
        }
      }
    }
  }

  /**
   * Performs an entity type definition update.
   *
   * @param string $op
   *   The operation to perform, either static::DEFINITION_CREATED or
   *   static::DEFINITION_UPDATED.
   * @param string $entity_type_id
   *   The entity type ID.
   */
  private function doEntityUpdate($op, $entity_type_id) {
    $entity_type = $this->entityTypeManager->getDefinition($entity_type_id);
    switch ($op) {
      case EntityDefinitionUpdateManagerInterface::DEFINITION_CREATED:
        $this->entityTypeListener->onEntityTypeCreate($entity_type);
        break;

      case EntityDefinitionUpdateManagerInterface::DEFINITION_UPDATED:
        $original = $this->entityLastInstalledSchemaRepository->getLastInstalledDefinition($entity_type_id);
        $storage = $this->entityTypeManager->getStorage($entity_type->id());
        if ($storage instanceof EntityStorageSchemaInterface && $storage->requiresEntityDataMigration($entity_type, $original)) {
          throw new \InvalidArgumentException('The entity schema update for the ' . $entity_type->id() . ' entity type requires a data migration.');
        }
        $field_storage_definitions = $this->entityFieldManager->getFieldStorageDefinitions($entity_type_id);
        $original_field_Storage_definitions = $this->entityLastInstalledSchemaRepository->getLastInstalledFieldStorageDefinitions($entity_type_id);
        $this->entityTypeListener->onFieldableEntityTypeUpdate($entity_type, $original, $field_storage_definitions, $original_field_Storage_definitions);
        break;
    }
  }

  /**
   * Performs a field storage definition update.
   *
   * @param string $op
   *   The operation to perform, possible values are:
   *   - EntityDefinitionUpdateManagerInterface::DEFINITION_CREATED
   *   - EntityDefinitionUpdateManagerInterface::DEFINITION_UPDATED
   *   - EntityDefinitionUpdateManagerInterface::DEFINITION_DELETED.
   * @param \Drupal\Core\Field\FieldStorageDefinitionInterface|null $storage_definition
   *   (optional) The new field storage definition. Defaults to none.
   * @param \Drupal\Core\Field\FieldStorageDefinitionInterface|null $original_storage_definition
   *   (optional) The original field storage definition. Defaults to none.
   */
  private function doFieldUpdate($op, FieldStorageDefinitionInterface $storage_definition = NULL, FieldStorageDefinitionInterface $original_storage_definition = NULL) {
    switch ($op) {
      case EntityDefinitionUpdateManagerInterface::DEFINITION_CREATED:
        $this->fieldStorageDefinitionListener->onFieldStorageDefinitionCreate($storage_definition);
        break;

      case EntityDefinitionUpdateManagerInterface::DEFINITION_UPDATED:
        if ($storage_definition && $original_storage_definition) {
          $this->fieldStorageDefinitionListener->onFieldStorageDefinitionUpdate($storage_definition, $original_storage_definition);
        }
        break;

      case EntityDefinitionUpdateManagerInterface::DEFINITION_DELETED:
        if ($original_storage_definition) {
          $this->fieldStorageDefinitionListener->onFieldStorageDefinitionDelete($original_storage_definition);
        }
        break;
    }
  }

}
