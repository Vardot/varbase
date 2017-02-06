<?php

namespace Drupal\varbase\Form;

use Drupal\Core\Render\ElementInfoManagerInterface;

/**
 * Form helper.
 */
class FormHelper {

  /**
   * The element info plugin manager.
   *
   * @var \Drupal\Core\Render\ElementInfoManagerInterface
   */
  protected $elementInfo;

  /**
   * FormHelper constructor.
   *
   * @param \Drupal\Core\Render\ElementInfoManagerInterface $element_info
   *   Element info plugin manager.
   */
  public function __construct(ElementInfoManagerInterface $element_info) {
    $this->elementInfo = $element_info;
  }

  /**
   * Applies standard process for elements in the form.
   *
   * @param array $element
   *   Form element.
   */
  public function applyStandardProcessing(array &$element) {
    if (empty($element['#process'])) {
      $info = $this->elementInfo->getInfo($element['#type']);

      if (isset($info['#process'])) {
        $element['#process'] = $info['#process'];
      }
    }
  }

}
