<?php

namespace Drupal\varbase\Entity;

use Drupal\Core\Entity\EntityDefinitionUpdateManagerInterface;
use Drupal\Core\Entity\EntityFieldManagerInterface;
use Drupal\Core\Entity\EntityLastInstalledSchemaRepositoryInterface;
use Drupal\Core\Entity\EntityTypeListenerInterface;
use Drupal\Core\Entity\EntityTypeManagerInterface;
use Drupal\Core\Field\FieldStorageDefinitionListenerInterface;
use Vardot\Entity\EntityDefinitionUpdateManager;

/**
 * Varbase Entity Definition Update Manager.
 *
 * Customized class from the Devel Entity Updates module
 * Development version of the entity definition update manager.
 * Swhiched to EntityDefinitionUpdateManager
 * https://github.com/Vardot/entity-definition-update-manager
 */
final class VarbaseEntityDefinitionUpdateManager extends EntityDefinitionUpdateManager {

  /**
   * Constructs a new VarbaseEntityDefinitionUpdateManager.
   *
   * @param \Drupal\Core\Entity\EntityDefinitionUpdateManagerInterface $entity_definition_update_manager
   *   The entity definition update manager.
   * @param \Drupal\Core\Entity\EntityTypeManagerInterface $entity_type_manager
   *   The entity type manager service.
   * @param \Drupal\Core\Entity\EntityLastInstalledSchemaRepositoryInterface $entity_last_installed_schema_repository
   *   The last installed schema repository service.
   * @param \Drupal\Core\Entity\EntityFieldManagerInterface $entity_field_manager
   *   The entity field manager service.
   * @param \Drupal\Core\Entity\EntityTypeListenerInterface $entity_type_listener
   *   The entity type listener interface.
   * @param \Drupal\Core\Field\FieldStorageDefinitionListenerInterface $field_storage_definition_listener
   *   The field storage definition listener service.
   */
  public function __construct(
    EntityDefinitionUpdateManagerInterface $entity_definition_update_manager,
    EntityTypeManagerInterface $entity_type_manager,
    EntityLastInstalledSchemaRepositoryInterface $entity_last_installed_schema_repository,
    EntityFieldManagerInterface $entity_field_manager,
    EntityTypeListenerInterface $entity_type_listener,
    FieldStorageDefinitionListenerInterface $field_storage_definition_listener
  ) {
    $this->entityDefinitionUpdateManager = $entity_definition_update_manager;
    $this->entityTypeManager = $entity_type_manager;
    $this->entityLastInstalledSchemaRepository = $entity_last_installed_schema_repository;
    $this->entityFieldManager = $entity_field_manager;
    $this->entityTypeListener = $entity_type_listener;
    $this->fieldStorageDefinitionListener = $field_storage_definition_listener;
  }

}
