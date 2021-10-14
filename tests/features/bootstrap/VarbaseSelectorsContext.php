<?php

use Drupal\DrupalExtension\Context\RawDrupalContext;
use Behat\Behat\Context\SnippetAcceptingContext;
use Behat\Mink\Selector\CssSelector;
use Symfony\Component\Yaml\Yaml;

/**
 * Defines application features from the specific context.
 */
class VarbaseSelectorsContext extends RawDrupalContext implements SnippetAcceptingContext {

  /**
   * Holed a list of CSS Selectors.
   *
   * @var array
   */
  protected $cssSelectors = [];

  /**
   * Holed a list of XPaht Selectors.
   *
   * @var array
   */
  protected $xpathSelectors = [];

  /**
   * Holed the file path for where we could have selector files.
   *
   * @var string
   */
  protected $filesPath = '';

  /**
   * Initializes context.
   *
   * Every scenario gets its own context instance.
   * You can also pass arbitrary arguments to the
   * context constructor through behat.yml.
   */
  public function __construct(array $parameters) {

    if (isset($parameters['selectors'])) {
      if (isset($parameters['selectors']['css']) ||
         isset($parameters['selectors']['xpath']) ||
         (isset($parameters['files_path']) &&
          isset($parameters['files']))) {

        if (isset($parameters['selectors']['css']) &&
           count($parameters['selectors']['css'])) {
          $this->cssSelectors = $parameters['selectors']['css'];
        }

        if (isset($parameters['selectors']['xpath']) &&
           count($parameters['selectors']['xpath'])) {
          $this->xpathSelectors = $parameters['selectors']['xpath'];
        }

        if (isset($parameters['files_path']) &&
           $parameters['files_path'] != '' &&
           isset($parameters['files']) &&
           count($parameters['files'])) {

          $this->filesPath = $parameters['files_path'];

          foreach ($parameters['files'] as $selectorFile) {

            // Get the content of the selector file.
            $fileContent = file_get_contents($this->filesPath . $selectorFile);
            if (!empty($fileContent) && $fileContent != '') {
              $fileSelectors = Yaml::parse($fileContent);

              // Add all list of CSS selectors to the cssSelectors Array.
              if (isset($fileSelectors['css']) && count($fileSelectors['css'])) {
                foreach ($fileSelectors['css'] as $selectorName => $cssSelecter) {
                  $this->cssSelectors[$selectorName] = $cssSelecter;
                }
              }

              // Add all list of XPath selectors to the xpathSelectors Array.
              if (isset($fileSelectors['xpath']) && count($fileSelectors['xpath'])) {
                foreach ($fileSelectors['xpath'] as $selectorName => $xpathSelector) {
                  $this->xpathSelectors[$selectorName] = $xpathSelector;
                }
              }

            }
            else {
              throw new \Exception('The file "' . $this->filesPath . $selectorFile . '" is empty or does not exist under SelectorsContext');
            }
          }
        }

      }
      else {
        throw new \Exception('behat.yml should include "selectors" with css, xpath, files_path, and files parametars. under SelectorsContext');
      }
    }
  }

  /**
   * Register Selectors.
   *
   * @BeforeStep @javascript
   */
  public function registerSelectors() {

    $selectorHandler = $this->getSession()->getSelectorsHandler()->getSelector('named');

    // Register selector name for all CSS selectors.
    $css = new CssSelector();
    foreach ($this->cssSelectors as $name => $selector) {
      $selectorHandler->registerNamedXpath($name, $css->translateToXPath($selector));
    }

    // Register selector name for all XPath selectors.
    foreach ($this->xpathSelectors as $name => $selector) {
      $selectorHandler->registerNamedXpath($name, $selector);
    }
  }

  /**
   * Selector : To add a new selector name with a css selector.
   *
   * Example 1: When I add "mobile logo" selector for "header img#logo" css selector
   * Example 2:  And I add "breadcrumb" selector for ".breadcrumb" css selector
   * Example 3:  And I add "breadcrumb first link" selector for ".breadcrumb li:nth-child(1) a" css selector.
   *
   *         You could add in the behat.yml file so that you do not need
   *         to add the most general selectors in your features.
   *          default:
   *            suites:
   *              default:
   *                contexts:
   *                  - VarbaseSelectorsContext:
   *                     parameters:
   *                       selectors:
   *                         css:
   *                           breadcrumb first link: ".breadcrumb li:nth-child(1) a"
   *                         xpath:
   *                           page title: "//h1[contains(@class, 'page-header')"
   *
   * @When /^I add "(?P<selectorName>[^"]*)" selector for "(?P<cssSelecter>[^"]*)" css selector$/
   */
  public function addSelectorNameForCssSelector($selectorName, $cssSelecter) {

    if (!empty($selectorName) && $selectorName != '' && !empty($cssSelecter) && $cssSelecter != '') {
      // Add the selector name for the css selector to the selectors array.
      $this->cssSelectors[$selectorName] = $cssSelecter;

      // Translate the CSS selector to XPath selector.
      $css = new CssSelector();
      $xpathSelector = $css->translateToXPath($cssSelecter);

      // Registor the name for the XPath selector.
      $selectorHandler = $this->getSession()->getSelectorsHandler()->getSelector('named');
      $selectorHandler->registerNamedXpath($selectorName, $xpathSelector);
    }
    else {
      throw new \Exception('The selector name and the CSS selector must not be empty.');
    }
  }

  /**
   * Selector : To add a new selector name with a XPath selector.
   *
   * Exmaple 1: When I add "page title" selector for "//h1[contains(@class, 'page-header')" xpath selector
   * Example 2:  And I add "Dashboard" selector for "//*[@id='navbar-link-admin-dashboard']" xpath selector
   * Example 3:  And I add "Vertical orientation" selector for "//*[@id='navbar-item--2-tray']/div/div[2]/div/button" xpath selector.
   *
   *
   *         You could add in the behat.yml file so that you do not need
   *         to add the most general selectors in your features.
   *          default:
   *            suites:
   *              default:
   *                contexts:
   *                  - VarbaseSelectorsContext:
   *                     parameters:
   *                       selectors:
   *                         css:
   *                           breadcrumb first link: ".breadcrumb li:nth-child(1) a"
   *                         xpath:
   *                           page title: '//h1[contains(@class, "page-header")'
   *
   * @When /^I add "(?P<selectorName>[^"]*)" selector for "(?P<xpathSelector>[^"]*)" xpath selector$/
   */
  public function addSelectorNameForXpathSelector($selectorName, $xpathSelector) {
    if (!empty($selectorName) && $selectorName != '' && !empty($xpathSelector) && $xpathSelector != '') {
      // Add the selector name for the XPath selector to the selectors array.
      $this->xpathSelectors[$selectorName] = $xpathSelector;

      // Registor the name for the XPath selecor.
      $selectorHandler = $this->getSession()->getSelectorsHandler()->getSelector('named');
      $selectorHandler->registerNamedXpath($selectorName, $xpathSelector);
    }
    else {
      throw new \Exception('The selector name and the XPath selector must not be empty.');
    }
  }

  /**
   * Selector : To add a new selector name with a css selector.
   *
   * Example 1: When I load selectors from "" file
   * Example 2:  And I add "breadcrumb" selector for ".breadcrumb" css selector
   * Example 3:  And I add "breadcrumb first link" selector for ".breadcrumb li:nth-child(1) a" css selector.
   *
   * @When /^I add selectors from "(?P<fileName>[^"]*)" file$/
   */
  public function iAddSelectorsFromFile($fileName) {

    if (!empty($fileName) && $fileName != '' &&
        isset($this->filesPath) && $this->filesPath != '') {

      // Get the content of the file.
      $fileContent = file_get_contents($this->filesPath . $fileName);

      if (!empty($fileContent) && $fileContent != '') {
        $fileSelectors = Yaml::parse($fileContent);

        // Register all CSS selectors in the file.
        if (isset($fileSelectors['css']) && count($fileSelectors['css'])) {
          foreach ($fileSelectors['css'] as $selectorName => $cssSelecter) {
            // Add the css selector to the css selector array.
            $this->cssSelectors[$selectorName] = $cssSelecter;

            // Translate the CSS selector to XPath selector.
            $css = new CssSelector();
            $xpathSelector = $css->translateToXPath($cssSelecter);

            // Registor the name for the CSS selecor.
            $selectorHandler = $this->getSession()->getSelectorsHandler()->getSelector('named');
            $selectorHandler->registerNamedXpath($selectorName, $xpathSelector);
          }
        }

        // Register all XPath selectors in the file.
        if (isset($fileSelectors['xpath']) && count($fileSelectors['xpath'])) {
          foreach ($fileSelectors['xpath'] as $selectorName => $xpathSelector) {
            // Add the selector name for the XPath selector to the xpath selectors array.
            $this->xpathSelectors[$selectorName] = $xpathSelector;

            // Registor the name for the XPath selecor.
            $selectorHandler = $this->getSession()->getSelectorsHandler()->getSelector('named');
            $selectorHandler->registerNamedXpath($selectorName, $xpathSelector);
          }
        }

      }
      else {
        throw new \Exception('The file "' . $this->filesPath . $fileName . '" is empty or does not exist under VarbaseSelectorsContext');
      }
    }
    else {
      throw new \Exception('No file name or the file_path parameter is not right in the behat.yml file');
    }
  }

  /**
   * Selector: To print list of CSS selectors which has been registered.
   *
   * Example: When I print css selectors.
   *
   * @Then /^(?:|I )print css selectors$/
   */
  public function printCssSelectors() {
    echo Yaml::dump($this->cssSelectors);
  }

  /**
   * Selector: To print list of XPath selectors which has been registered.
   *
   * Example: When I print xpath selectors.
   *
   * @Then /^(?:|I )print xpath selectors$/
   */
  public function printXpathSelectors() {
    echo Yaml::dump($this->xpathSelectors);
  }

  /**
   * Move the focus to selected field input element.
   *
   * Example #1: When I move focus to "Title" field
   * Example #2:  And I move focus to "Body" field.
   *
   * @When /^(?:|I )move focus to "(?P<selectedField>[^"]*)" field$/
   */
  public function moveFocusToField($selectedField) {
    $field = $this->getSession()->getPage()->findField($selectedField);
    $fieldid = $field->getAttribute('id');
    $this->getSession()->getDriver()->evaluateScript("jQuery('#{$fieldid}').focus();");
  }

  /**
   * Select all text in selected field input element.
   *
   * Example #1: When I select all text in "Title" field
   * Example #2:  And I select all text in "Description" field.
   *
   * @When /^(?:|I )select all text in "(?P<selectedField>[^"]*)" field$/
   */
  public function selectAllTextInField($selectedField) {
    $field = $this->getSession()->getPage()->findField($selectedField);
    $fieldid = $field->getAttribute('id');
    $this->getSession()->getDriver()->evaluateScript('document.getElementById("' . $fieldid . '").select();');
  }

  /**
   * Select part of the text in selected field input element.
   *
   * Example #1: When I select from 0 to 5 text in "Title" field
   * Example #2:  And I select from 0 to 5 text in "Description" field.
   *
   * @When /^(?:|I )select from (?P<from>\d+) to (?P<to>\d+) text in "(?P<selectedField>[^"]*)" field$/
   */
  public function setSelectionRangeFromField($from, $to, $selectedField) {
    $field = $this->getSession()->getPage()->findField($selectedField);
    $fieldid = $field->getAttribute('id');

    if ($from < 0) {
      $from = 0;
    }

    if ($to === 0) {
      $to = $field->getValue()->length();
    }

    $this->getSession()->getDriver()->evaluateScript('document.getElementById("' . $fieldid . '").setSelectionRange(' . $from . ',' . $to . ');');
  }

  /**
   * Select a part text in selected field input element.
   *
   * Example #1: When I select "title name" text in "Title" field
   * Example #2:  And I select "some content" text in "Description" field.
   *
   * @When /^(?:|I )select "(?P<selectedText>[^"]*)" text in "(?P<selectedField>[^"]*)" field$/
   */
  public function selectTextInField($selectedText, $selectedField) {
    $field = $this->getSession()->getPage()->findField($selectedField);
    $fieldid = $field->getAttribute('id');

    // Get the value of the selected field.
    $fieldValue = $field->getValue();

    // Have the $selectionStart.
    $selectionStart = strpos($fieldValue, $selectedText);
    if (empty($selectionStart)) {
      throw new \Exception(sprintf('We do not have "%s" in the "%s" field.', $selectedText, $selectedField));
    }

    // Have the selectionEnd.
    $selectionEnd = $selectionStart + strlen($selectedText);

    $this->getSession()->getDriver()->evaluateScript('document.getElementById("' . $fieldid . '").setSelectionRange(' . $selectionStart . ',' . $selectionEnd . ');');
  }

}
