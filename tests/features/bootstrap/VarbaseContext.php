<?php

use WebDriver\Exception;
use Drupal\DrupalExtension\Context\RawDrupalContext;
use Behat\Behat\Context\SnippetAcceptingContext;
use Behat\Mink\Element\Element;

/**
 * Defines application features from the specific context.
 */
class VarbaseContext extends RawDrupalContext implements SnippetAcceptingContext {

  /**
   * Hold the user name and password from drupal_users parameters.
   *
   * @var array
   */
  protected $users = [];

  /**
   * Hold the user name and password from varbase_users parameters.
   *
   * @var array
   */
  protected $varbaseUsers = [];

  /**
   * Hold all passed parameters.
   *
   * @var array
   */
  protected $parameters = [];

  /**
   * Initializes context.
   *
   * @param array $parameters
   *   Context parameters (set them up through behat.yml or behat.local.yml).
   */
  public function __construct(array $parameters) {

    // Set the list of parameters.
    $this->parameters = $parameters;

    if (isset($parameters['varbase_users'])) {
      $this->varbaseUsers = $parameters['varbase_users'];
      foreach ($parameters['varbase_users'] as $varbaseUsername => $varbaseUser) {
        $this->users[$varbaseUsername] = $varbaseUser['password'];
      }
    }
    else {
      throw new \Exception('behat.yml config files should include "varbase_users" property.');
    }
  }

  /**
   * Clean users.
   */
  public function cleanUsers() {

  }

  /**
   * Authenticate a user with password from varbase configuration.
   *
   * Varbase Context #varbase. If you want to see the list of users or add yours you can go and
   * edit the behat.varbase.yml file under the varbase_users list.
   *
   * Example: I am a logged in user with the username "Content admin"
   *
   * @Given /^I am a logged in user with (?:|the )"(?P<username>[^"]*)"(?:| user)$/
   * @Then /^I login with (?:|the )"(?P<username>[^"]*)"(?:| user)$/
   */
  public function iAmloggedInUserWithTheUser($username) {

    if (isset($this->users[$username])) {
      try {
        $password = $this->users[$username];
      }
      catch (Exception $e) {
        throw new \Exception("Password not found for '$username'.");
      }

      if ($this->loggedIn()) {
        $this->logout();
      }

      $this->getSession()->visit($this->locatePath('/user/login'));
      $page = $this->getSession()->getPage();

      if ($this->matchingElementAfterWait('css', '[data-drupal-selector="edit-name"]', 6000)) {
        $page->fillField('name', $username);
        $page->fillField('pass', $password);
        $this->iScrollToBottom();
        $this->iWaitForSeconds(2);
        $submit = $page->findButton('op');
        $submit->click();
      }

    }
    else {
      throw new \Exception("The '$username' user name is wrong or it was not listed in the list of default testing users.");
    }
  }

  /**
   * Authenticate a user with a given username and password on the spot.
   *
   * Varbase Context #varbase.
   *
   * Example: I am a logged in user with the username "testing" and password "testing user password"
   *
   * @Given /^I am a logged in user with (?:|the )username "(?P<username>[^"]*)" and password "(?P<password>[^"]*)"$/
   */
  public function iAmLoggedInUserWithTheUsernameAndPassword($username, $password) {
    // Logout if I am logged in.
    if ($this->loggedIn()) {
      $this->logout();
    }

    // Login with the.
    $this->getSession()->visit($this->locatePath('/user/login'));
    $page = $this->getSession()->getPage();

    if ($this->matchingElementAfterWait('css', '[data-drupal-selector="edit-name"]', 6000)) {
      $page->fillField('name', $username);
      $page->fillField('pass', $password);
      $this->iScrollToBottom();
      $this->iWaitForSeconds(2);
      $submit = $page->findButton('op');
      $submit->click();
    }
  }

  /**
   * Logout from the current session.
   *
   * Varbase Context #varbase.
   *
   * Example: When I logout.
   *
   * @When /^I logout$/
   */
  public function iLogout() {
    // Logout if I am logged in.
    if ($this->loggedIn()) {
      $this->logout();
    }
  }

  /**
   * Navigate directly to an external web site.
   *
   * Varbase Context #varbase.
   *
   * Example: When I go to "https://www.google.com" website.
   *
   * @When /^I go to "(?P<domain>[^"]*)" website$/
   */
  public function iGoToWebsite($domain) {
    $this->getSession()->visit($domain);
  }

  /**
   * Wait for seconds before going to the next step.
   *
   * Varbase Context #varbase.
   *
   * Example 1:  And wait for "1" second
   * Example 2: When I wait for "5" seconds
   * Example 3:  And wait 1 second
   * Example 4: When I wait for 60 seconds
   * Example 5:  And wait 1s
   * Example 6: When I wait for 60s.
   *
   * @When /^(?:|I )wait (?:|for )"(?P<seconds>\d+)" second(?:|s)$/
   * @When /^(?:|I )wait (?:|for )(?P<seconds>\d+) second(?:|s)$/
   * @When /^(?:|I )wait (?:|for )(?P<seconds>\d+)s$/
   */
  public function iWaitForSeconds($seconds = 1) {
    $this->getSession()->wait($seconds * 1000);
  }

  /**
   * Wait for minutes before going to the next step.
   *
   * Varbase Context #varbase.
   *
   * Example 1:  And I wait for "1" minute
   * Example 2: When I wait for "2" minutes
   * Example 3:  And wait 1 minute
   * Example 4: When I wait for 3 minutes
   * Example 5:  And wait 1m
   * Example 6: When I wait for 3m.
   *
   * @When /^(?:|I )wait (?:|for )"(?P<minutes>\d+)" minute(?:|s)$/
   * @When /^(?:|I )wait (?:|for )(?P<minutes>\d+) minute(?:|s)$/
   * @When /^(?:|I )wait (?:|for )(?P<minutes>\d+)m$/
   */
  public function iWaitForMinutes($minutes = 1) {
    $this->getSession()->wait($minutes * 60 * 1000);
  }

  /**
   * Wait max of seconds for the page to be ready and loaded.
   *
   * Varbase Context #varbase.
   *
   * Example 1: And wait
   * Example 2: And I wait
   * Example 3: And wait for the page
   * Example 4: And I wait for the page
   * Example 5: And wait max of 5 seconds
   * Example 6: And wait max of 5s
   * Example 7: And I wait max of 5s
   * Example 8: And I wait max of "5" seconds
   * Example 9: And I wait max of "5" seconds for the page to be ready and loaded.
   *
   * @Given /^(?:|I )wait max of "(?P<time>\d+)" second(?:|s)(?:| for the page to be ready and loaded)$/
   * @Given /^(?:|I )wait max of (?P<time>\d+) second(?:|s)(?:| for the page to be ready and loaded)$/
   * @Given /^(?:|I )wait max of (?P<time>\d+)s(?:| for the page to be ready and loaded)$/
   * @Given /^(?:|I )wait(?:| for the page)$/
   *
   * @throws \WebDriver\Exception
   *   If timeout is reached.
   */
  public function iWaitMaxOfSecondsForThePageToBeReadyAndLoaded($time = 10000) {
    if (!$this->getSession()->getDriver() instanceof Selenium2Driver) {
      return;
    }
    $start = microtime(TRUE);
    $end = $start + $time / 1000.0;
    $conditions = [
    // Page is ready.
    "document.readyState == 'complete'",
    // jQuery is loaded.
    "typeof $ != 'undefined'",
    // No ajax request is active.
    "!$.active",
    // Page is displayed (no progress bar)
    "$('#page').css('display') == 'block'",
    // Page is not loading (no black mask loading page)
    "$('.loading-mask').css('display') == 'none'",
    // Jstree has finished loading.
    "$('.jstree-loading').length == 0",
   ];
    $condition = implode(' && ', $conditions);
    // Make sure the AJAX calls are fired up before checking the condition.
    $this->getSession()->wait(100, FALSE);
    $this->getSession()->wait($time, $condition);
    // Check if we reached the timeout unless the condition is false to explicitly wait the specified time.
    if ($condition !== FALSE && microtime(TRUE) > $end) {
      throw new \Exception(sprintf('Timeout of %d reached when checking on %s', $time, $condition));
    }
  }

  /**
   * Editor Media Browser functions.
   *
   * ==========================================================================.
   */

  /**
   * Click the editor media browser command button.
   *
   * Varbase Context #varbase.
   *
   * Example 1: When I click the editor media browser command button.
   *
   * @When /^I click the editor media browser command button$/
   */
  public function iClickTheEditorMediaBrowserCommandButton() {

    $editorMediaBrowserButton = $this->getSession()->getPage()->find('css', '.cke_button.cke_button__media');

    if (empty($editorMediaBrowserButton)) {
      throw new \Exception('The editor media browser button dose not exist.');
    }

    $editorMediaBrowserButton->click();
  }

  /**
   * Check if the editor media browser is open.
   *
   * Varbase Context #varbase.
   *
   * @Then /^the editor media browser should be open$/
   */
  public function theEitorMediaBrowserIsOpen() {
    if (!$elem = $this->getSession()->getPage()->find('css', '.ui-dialog.media-wrapper')
    || !$this->getSession()->getPage()->find('css', '.ui-dialog.media-wrapper .media-browser-panes')) {
      throw new \Exception('The editor media browser failed to open.');
    }
  }

  /**
   * Press a button in the filter form under the editor media browser.
   *
   * Varbase Context #varbase.
   *
   * Example 1: When I press the "Apply" button under the editor media browser
   * Example 2:  And I press the "Submit" button under the editor media browser.
   *
   * @When /^I press (?:|the )"([^"]*)" button under the editor media browser$/
   */
  public function iPressTheButtonUnderTheEditorMediaBrowser($button) {
    // Switch to the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame('entity_browser_iframe_editor_media_browser');

    try {
      $this->getSession()->wait(1000, 'typeof(jQuery)=="undefined" || jQuery("#autocomplete").length === 0');
    }
    catch (UnsupportedDriverActionException $e) {

    }

    $this->getSession()->getPage()->pressButton($button);

    // Switch back too the page from the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame(NULL);
  }

  /**
   * Click on a link or button under the editor media browser.
   *
   * Varbase Context #varbase.
   *
   * Example 1: When I click "Submit" button under the media browser
   * Example 2: When I click "Submit" under media browser
   * Example 3: When I click "Upload" under the media browser.
   *
   * @When /^I click "([^"]*)" (?:|button )under (?:|the )editor media browser$/
   */
  public function iClickButtonUnderTheEditorMediaBrowser($text) {
    // Switch to the "mediaBrowser" iframe.
    $this->getSession()->switchToIFrame('entity_browser_iframe_editor_media_browser');

    // Find the Tab by txt.
    $element = $this->getSession()->getPage()->find('xpath', "//*[contains(@class, 'button') and text() = '{$text}']");

    if (empty($element)) {
      throw new \Exception('The editor media browser dose not have [ ' . $text . ' ] button.');
    }

    $element->click();

    // Switch back too the page from the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame(NULL);
  }

  /**
   * Click on a tab under the editor media browser.
   *
   * Varbase Context #varbase.
   *
   * Example 1: When I click on the "Library" tab under the editor media browser
   * Example 2: When I click on the "My files" tab under the editor media browser.
   *
   * @When /^I click on the "([^"]*)" tab under the editor media browser$/
   */
  public function iClickOnTheTabUnderTheMediaBrowser($text) {
    // Switch to the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame('entity_browser_iframe_editor_media_browser');

    // Find the Tab by txt.
    $element = $this->getSession()->getPage()->find('xpath', "//*[contains(@class, 'ui-tabs-anchor') and text() = '{$text}']");

    if (empty($element)) {
      throw new \Exception('The editor media browser dose not have [ ' . $text . ' ] tab.');
    }

    $element->click();

    // Switch back too the page from the "mediaBrowser" iframe.
    $this->getSession()->switchToIFrame(NULL);
  }

  /**
   * Select the file under the editor media browser.
   *
   * Varbase Context #varbase.
   *
   * Example 1: When I click on the "Flag Earth" file under the editor media browser.
   *
   * @When /^I select (?:|the )"([^"]*)" file under (?:|the )editor media browser$/
   */
  public function iSelectTheFileUnderTheEditorMediaBrowser($text) {
    // Switch to the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame('entity_browser_iframe_editor_media_browser');

    // Find the file by text.
    $element = $this->getSession()->getPage()->find('xpath', "//div[contains(@class, 'media-item') and contains(@title, '{$text}')]");

    if (empty($element)) {
      throw new \Exception('The editor media browser dose not have [ ' . $text . ' ] file.');
    }

    $element->click();

    // Switch back too the page from the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame(NULL);
  }

  /**
   * Fill in a form field with id|name|title|alt|value.
   *
   * Under the editor media browser.
   * Varbase Context #varbase.
   *
   * Example: I fill in "flag earth" for "File name" under the editor media browser.
   *
   * @When /^(?:|I )fill in "(?P<field>(?:[^"]|\\")*)" with "(?P<value>(?:[^"]|\\")*)" under (?:|the )editor media browser$/
   * @When /^(?:|I )fill in "(?P<field>(?:[^"]|\\")*)" with: under (?:|the )editor media browser$/
   * @When /^(?:|I )fill in "(?P<value>(?:[^"]|\\")*)" for "(?P<field>(?:[^"]|\\")*)" under (?:|the )editor media browser$/
   */
  public function iFillInFieldUnderTheEditorMediaBrowser($field, $value) {
    // Switch to the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame('entity_browser_iframe_editor_media_browser');

    $field = str_replace('\\"', '"', $field);
    $value = str_replace('\\"', '"', $value);
    $this->getSession()->getPage()->fillField($field, $value);

    // Switch back too the page from the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame(NULL);
  }

  /**
   * Check if we can see a text under the editor media browser.
   *
   * Varbase Context #varbase.
   *
   * Example 1: Then I should see "this text" under editor media browser
   * Example 2: Then I should see "this text" under the editormedia browser modal window.
   *
   * @Then /^I should see "([^"]*)" under (?:|the )editor media browser(?:| modal window)$/
   */
  public function iShouldSeeTextUnderTheEditorMediaBrowser($text) {
    // Switch to the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame('entity_browser_iframe_editor_media_browser');

    $actual = $this->getSession()->getPage()->getText();
    $actual = preg_replace('/\s+/u', ' ', $actual);
    $regex = '/' . preg_quote($text, '/') . '/ui';

    if (!preg_match($regex, $actual)) {
      throw new \Exception(sprintf('The text "%s" was not found anywhere in the text of the current page.', $text));
    }

    // Switch back too the page from the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame(NULL);
  }

  /**
   * Find an image with the title text attribute.
   *
   * Varbase Context #varbase.
   *
   * Example 1: Then I should see image with the "Flag Earth" title text.
   *
   * @Then /^I should see image with the "([^"]*)" title text under (?:|the )editor media browser(?:| modal window)$/
   */
  public function iShouldSeeImageWithTheTitleTextUnderTheEditorMediaBrowser($titleText) {
    // Switch to the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame('entity_browser_iframe_editor_media_browser');

    // Find an image with the title.
    $element = $this->getSession()->getPage()->find('xpath', "//img[contains(@title, '{$titleText}')]");

    if (empty($element)) {
      throw new \Exception('The editor media browser dose not have an image with the [ ' . $titleText . ' ] title text.');
    }

    // Switch back too the page from the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame(NULL);
  }

  /**
   * Check if we can NOT see a text under the editor media browser.
   *
   * Varbase Context #varbase.
   *
   * Example 1: Then I should not see "this text" under editor media browser
   * Example 2: Then I should not see "this text" under the editor media browser modal window.
   *
   * @Then /^I should not see "([^"]*)" under (?:|the )editor media browser(?:| modal window)$/
   */
  public function iShouldNotSeeTextUnderTheeEitorMediaBrowser($text) {
    // Switch to the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame('entity_browser_iframe_editor_media_browser');

    $actual = $this->getSession()->getPage()->getText();
    $actual = preg_replace('/\s+/u', ' ', $actual);
    $regex = '/' . preg_quote($text, '/') . '/ui';

    if (preg_match($regex, $actual)) {
      throw new \Exception(sprintf('The text "%s" was not found anywhere in the text of the current page.', $text));
    }

    // Switch back too the page from the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame(NULL);
  }

  /*
   * ===========================================================================
   * Rich text editor Functions CKEditor.
   * ===========================================================================
   */

  /**
   * Fill in a rich text editor field  WYSIWYG with content.
   *
   * Using the name of the field.
   * Varbase Context #varbase.
   *
   *  Example: When I fill in the rich text editor field "Body" with "Test Body text"
   *
   * @When /^I fill in the rich text editor field "([^"]*)" with "([^"]*)"$/
   */
  public function iFillInTheRichTextEditorField($locator, $value) {
    $el = $this->getSession()->getPage()->findField($locator);
    $fieldId = $el->getAttribute('id');

    if ($fieldId == NULL) {
      // If the WYSIWYG is in an ifream with no id.
      $iFreamID = $this->getAttributeByOtherAttributeValue('id', 'title', "Rich Text Editor, " . $el->getAttribute('id'), 'iframe');
      if (!empty($iFreamID)) {
        $fieldId = $iFreamID;
      }
    }

    if (empty($fieldId)) {
      throw new \Exception('Could not find an id for the rich text editor field : ' . $locator);
    }

    $this->getSession()->executeScript("CKEDITOR.instances[\"$fieldId\"].setData(\"$value\");");
  }

  /**
   * Click a command button in the rich text editor.
   *
   * Varbase Context #varbase.
   *
   * Example 1: When I click on "bold" command button in the rich text editor field "Body"
   * Example 2: When I click on "media" command button in the rich text editor field "Body".
   *
   * @When /^I click on "([^"]*)" command button in the rich text editor field "([^"]*)"$/
   */
  public function iClickOnCommandButtonInTheRichTextEditorField($selectorCommand, $locator) {

    $el = $this->getSession()->getPage()->findField($locator);
    $fieldId = $el->getAttribute('id');

    if (empty($fieldId)) {
      throw new \Exception('Could not find an id for the rich text editor field : ' . $locator);
    }

    $this->getSession()->executeScript("CKEDITOR.instances[\"$fieldId\"].execCommand( '$selectorCommand' );");

  }

  /**
   * Append text at the end of a rich text editor field  WYSIWYG with content.
   *
   * Using the name of the field.
   *
   * Varbase Context #varbase.
   *
   * Example #1: When I append after the rich text editor field "Body" with "Test Body text"
   * Example #2: When I append the rich text editor field "Body" with "Test Body text"
   *
   * @When /^(?:|I )append(?:| after) the rich text editor field "([^"]*)" with "([^"]*)"$/
   */
  public function appendTheRichTextEditorField($locator, $value) {
    $el = $this->getSession()->getPage()->findField($locator);
    $fieldId = $el->getAttribute('id');

    if ($fieldId == NULL) {
      // If the WYSIWYG is in an ifream with no id.
      $iFreamID = $this->getAttributeByOtherAttributeValue('id', 'title', "Rich Text Editor, " . $el->getAttribute('id'), 'iframe');
      if (!empty($iFreamID)) {
        $fieldId = $iFreamID;
      }
    }

    if (empty($fieldId)) {
      throw new \Exception('Could not find an id for the rich text editor field : ' . $locator);
    }

    $this->getSession()->executeScript("CKEDITOR.instances[\"$fieldId\"].setData(CKEDITOR.instances[\"$fieldId\"].getData()+\"$value\");");
  }

  /**
   * Add append text at the end of rich text editor field WYSIWYG with content.
   *
   * Using the name of the field.
   * Varbase Context #varbase.
   *
   * Example #1: When I prepend before the rich text editor field "Body" with "Test Body text"
   * Example #2: When I prepend the rich text editor field "Body" with "Test Body text"
   *
   * @When /^(?:|I )prepend(?:| before) the rich text editor field "([^"]*)" with "([^"]*)"$/
   */
  public function prependTheRichTextEditorField($locator, $value) {
    $el = $this->getSession()->getPage()->findField($locator);
    $fieldId = $el->getAttribute('id');

    if ($fieldId == NULL) {
      // If the WYSIWYG is in an ifream with no id.
      $iFreamID = $this->getAttributeByOtherAttributeValue('id', 'title', "Rich Text Editor, " . $el->getAttribute('id'), 'iframe');
      if (!empty($iFreamID)) {
        $fieldId = $iFreamID;
      }
    }

    if (empty($fieldId)) {
      throw new \Exception('Could not find an id for the rich text editor field : ' . $locator);
    }

    $this->getSession()->executeScript("CKEDITOR.instances[\"$fieldId\"].setData(\"$value\"+CKEDITOR.instances[\"$fieldId\"].getData());");
  }

  /**
   * Move the focus to selected rich text editor field.
   *
   * Varbase Context #varbase.
   *
   * Example #1: When I move focus to "Title" rich text editor field
   * Example #2:  And I move focus to "Body" rich text editor field.
   *
   * @When /^(?:|I )move focus to "(?P<selectedField>[^"]*)" rich text editor field$/
   */
  public function moveFocusToTheRichTextEditorField($selectedField) {
    $el = $this->getSession()->getPage()->findField($selectedField);
    $fieldid = $el->getAttribute('id');

    if (empty($fieldid)) {
      throw new \Exception('Could not find an id for the rich text editor field : ' . $selectedField);
    }

    $this->getSession()->getDriver()->evaluateScript("CKEDITOR.instances[\"$fieldid\"].focus();");
  }

  /**
   * Select all text in selected field input element.
   *
   * Varbase Context #varbase.
   *
   * Example #1: When I select all text in "Body" field
   * Example #2:  And I select all text in "Body" field.
   *
   * @When /^(?:|I )select all text in "(?P<selectedField>[^"]*)" rich text editor field$/
   */
  public function selectAllTextInTheRichTextEditorField($selectedField) {
    $el = $this->getSession()->getPage()->findField($selectedField);
    $fieldid = $el->getAttribute('id');

    if (empty($fieldid)) {
      throw new \Exception('Could not find an id for the rich text editor field : ' . $selectedField);
    }

    $this->getSession()->getDriver()->evaluateScript("CKEDITOR.instances[\"$fieldid\"].execCommand('selectAll', false, null);");
    $this->getSession()->getDriver()->evaluateScript("CKEDITOR.instances[\"$fieldid\"].forceNextSelectionCheck();");
    $this->getSession()->getDriver()->evaluateScript("CKEDITOR.instances[\"$fieldid\"].selectionChange();");

  }

  /**
   * =========================================================.
   *
   * Section Configuration Functions
   *
   * =========================================================.
   */

  /**
   * Add a basic section at the end of layout.
   *
   * Varbase Context #varbase
   *
   * Example #1: When I add a basic "4 Cols" section at the end of layout
   * Example #2: And I add a basic section at the end of layout
   *
   * @When I add a basic section at the end of layout
   * @When I add a basic :arg1 section at the end of layout
   * @And I add a basic (?:|arg1 ) section at the end of layout
   */
  public function iAddABasicSectionAtTheEndOfLayout($cols = "1 Col") {
    $this->iScrollToBottom();
    $this->iWaitForSeconds(1);
    $end_layout = $this->getSession()->getPage()->find('xpath', "//a[contains(@class, 'use-ajax layout-builder__link layout-builder__link--add') and contains(., 'at end of layout')]")->click();
    $this->iWaitForSeconds(1);
    $section = $this->getSession()->getPage()->find('xpath', "//*[contains(., '$cols') and contains(@class, 'use-ajax')]");
    if (is_null($section)) {
      throw new \Exception('The ' . $cols . ' option was not found or not visible');
    }
    $section->click();
    $this->iWaitForSeconds(1);
  }

  /**
   * @When I save the section
   */
  public function iSaveTheSection() {
    $save = $this->getSession()->getPage()->find('xpath', "//button[contains(@value, 'Add section')]");
    if (is_null($save)) {
      throw new \Exception('The "Add section" button was not found or not visible');
    }
    $save->click();
  }

  /**
   * Select a section container type.
   *
   * Varbase Context #varbase
   *
   * Example #1: When I select the "Edge to Edge" container type
   * Example #2:  And I select the "Boxed" container type with a "Tiny" width
   *
   * @When I select the :type container type
   * @When I select the :type container type with a :width width
   */
  public function iSelectTheContainerType($type, $width = NULL) {
    $element = $this->getSession()->getPage()->find('xpath', "//label[contains(.,'$type') and contains(@for, 'edit-layout-settings-ui-tab-content-layout-container-type')]");
    if (is_null($element)) {
      throw new \Exception("The $type option was not found or not visible. \nThese are the available container types:\n\tFull (Default)\n\tEdge to Edge\n\tBoxed\n");
    }
    $element->click();
    if ($type === "Boxed" && isset($width)) {
      $this->iSelectTheContainerWidth($width);
    }
  }

  /**
   * Select a section container width.
   *
   * Varbase Context #varbase
   *
   * Example #1: When I select the "Tiny" container width
   * Example #2:  And I select the "Narrow" container width
   *
   * @When I select the :width container width
   */
  public function iSelectTheContainerWidth($width) {
    $element = $this->getSession()->getPage()->find('xpath', "//label[contains(.,'$width') and contains(@for, 'edit-layout-settings-ui-tab-content-layout-container-width')]");
    if (is_null($element)) {
      throw new \Exception("The $width option was not found or not visible. \nThese are the available container widths:\n\tWide (Default)\n\tMedium\n\tNarrow\n\tTiny\n");
    }
    $element->click();
  }

  /**
   * Select a section breakpoint.
   *
   * Varbase Context #varbase
   *
   * Example #1: When I select the "md" "33% 67%" section breakpoint
   * Example #2:  And I select the "xs" "75% 25%" section breakpoint
   *
   * @When I select the :size :point section breakpoint
   */
  public function iSelectTheSectionBreakpoint($size, $point) {
    $screen_size = $this->getSession()->getPage()->find('xpath', "//*[contains(@class, '$size')]");
    if (is_null($screen_size)) {
      throw new \Exception("The $size option was not found or not visible. \nThese are the available screen sizes:\n\tlg\n\tmd\n\tsm\n\txs\n");
    }
    $break = $this->getSession()->getPage()->find('xpath', "//*[contains(., '$point')]");
    if (is_null($break)) {
      throw new \Exception('The break point selected was not found or not suitable for the screen size selected');
    }
    $element = $this->getSession()->getPage()->find('xpath', "//*[contains(@class,'$size') and contains(.,'$point')]")->click();
  }

  /**
   * Select with gutters option for section.
   *
   * Varbase Context #varbase
   *
   * Example #1: When I add section gutters
   * Example #2:  And I add section gutters
   *
   * @When I add section gutters
   */
  public function iAddSectionGutters() {
    $with_gutters = $this->getSession()->getPage()->find('xpath', "//label[contains(., 'With Gutters')]");
    if (is_null($with_gutters)) {
      throw new \Exception('The "With Gutters" option was not found or not visible');
    }
    $with_gutters->click();
  }

  /**
   * Remove gutters between columns.
   *
   * Varbase Context #varbase
   *
   * Example #1: When I remove gutters between section columns
   * Example #2:  And I remove gutters between section columns
   *
   * @When I remove gutters between section columns
   */
  public function iRemoveGuttersBetweenSectionColumns() {
    $no_gutters = $this->getSession()->getPage()->find('xpath', "//*[contains(@class, 'vlb_gutters_between')]");
    if (is_null($no_gutters)) {
      throw new \Exception('The "Keep gutters between columns" checkbox was not found or not visible');
    }
    $no_gutters->click();
  }

  /**
   * Move to the section styles tab.
   *
   * Varbase Context #varbase
   *
   * Example #1: When I move to the section styles tab
   * Example #2:  And I move to the section styles tab
   *
   * @When I move to the section styles tab
   */
  public function iMoveToTheSectionStylesTab() {
    $styles_tab = $this->getSession()->getPage()->find('xpath', "//a[contains(@data-target, 'appearance')]");
    if (is_null($styles_tab)) {
      throw new \Exception('The section styles tab was not found or not visible');
    }
    $styles_tab->click();
  }

  /**
   * Open a specific setting menu under styles tab in section configuration.
   *
   * Varbase Context #varbase
   *
   * Example #1: When I open the section "Background" settings menu
   * Example #2: And I open the section "Border" settings menu
   *
   * @When I open the section :menu settings menu
   */
  public function iOpenTheSectionSettingsMenu($menu) {
    $this->iMoveToTheSectionStylesTab();
    $js = <<<JS
			var title = "$menu";
			const xpath = "//span[contains(text(),'" + title + "')]";
			const js_menu = document.evaluate(xpath, document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue;
			js_menu.closest("details").setAttribute("open", "");
		JS;
    try {
      $this->getSession()->executeScript($js);
    }
    catch (Exception $e) {
      throw new \Exception('The "' . $menu . '" menu was not found or not visible');
    }
  }

  /**
   * Select a section background color.
   *
   * Varbase Context #varbase
   *
   * Example #1: When I select the "Primary" section background color
   * Example #2:  And I select the "Light" section background color
   *
   * @When I select the :color section background color
   */
  public function iSelectTheSectionBackgroundColor($color) {
    $this->iOpenTheSectionSettingsMenu("Background");
    $bg_color = $this->getSession()->getPage()->find('xpath', "//label[contains(., '$color') and contains(@for, 'edit-layout-settings-ui-tab-content-appearance-background-background-color')]");
    if (is_null($bg_color)) {
      throw new \Exception('The "' . $color . '" option was not found or not visible');
    }
    $bg_color->click();
  }

  /**
   * Uncheck the Edge to Edge Background option.
   *
   * Varbase Contaxt #varbase
   *
   * Example #1: When I uncheck the Edge to Edge Background
   * Example #2: And I uncheck the Edge to Edge Background
   *
   * @When I uncheck the Edge to Edge Background
   */
  public function iUncheckTheEdgeToEdgeBackground() {
    $this->iOpenTheSectionSettingsMenu("Background");
    $e2e = $this->getSession()->getPage()->find('xpath', "//input[contains(@class, 'field-background-edge-to-edge')]");
    if (is_null($e2e)) {
      throw new \Exception('The "Edge to Edge Background" checkbox was not found or not visible');
    }
    $e2e->click();
  }

  /**
   * Select a section text color.
   *
   * Varbase Context #varbase
   *
   * Example #1: When I select the "Dark" section text color
   * Example #2:  And I select the "White" section text color
   *
   * @When I select the :color section text color
   */
  public function iSelectTheSectionTextColor($color) {
    $this->iOpenTheSectionSettingsMenu("Typography");
    $text_color = $this->getSession()->getPage()->find('xpath', "//label[contains(., '$color') and contains(@for, 'edit-layout-settings-ui-tab-content-appearance-typography-text-color-text')]");
    if (is_null($text_color)) {
      throw new \Exception('The "' . $color . '" option was not found or not visible');
    }
    $text_color->click();
  }

  /**
   * Set alignment of text.
   *
   * Varbase Context #varbase
   *
   * Example #1: When I set the alignment to "End"
   * Example #2:  And I set the alignment to "Start"
   *
   * @When I set the alignment to :align
   */
  public function iSetTheAlignmentTo($align) {
    $this->iOpenTheSectionSettingsMenu("Typography");
    $alignment = $this->getSession()->getPage()->find('xpath', "//label[contains(., '$align') and contains(@for, 'edit-layout-settings-ui-tab-content-appearance-typography-text-alignment')]");
    if (is_null($alignment)) {
      throw new \Exception("The alignment option selected was not found or not visible. \nSelect one of these: \n\tStart\n\tCenter\n\tEnd\n\tJustify\n");
    }
    $alignment->click();
  }

  /**
   * Set the section blocks alignemnt.
   *
   * #Varbase Context #varbase
   *
   * Example #1: When I set the blocks vertical alignment to "Align middle"
   * Example #2: When I set the blocks horizontal alignment to "Align start"
   *
   * @When I set the blocks :orientation alignment to :align
   */
  public function iSetTheBlocksAlignmentTo($orientation, $align) {
    $this->iOpenTheSectionSettingsMenu("Blocks alignment");
    $alignment = $this->getSession()->getPage()->find('xpath', "//label[contains(., '$align') and contains(@for, 'edit-layout-settings-ui-tab-content-appearance-alignment-$orientation')]");
    if (is_null($alignment)) {
      throw new \Exception("The alignment option selected was not found or not visible\nAlignment options for vertical orientation are: \n\tAlign top\n\tAlign middle\n\tAlign bottom\n\nAlignment options for horizontal orientation are: \n\tAlign start\n\tAlign center\n\tAlign end\n");
    }
    $alignment->click();
  }

  /**
   * Set the padding for a section.
   *
   * Varbase Context #varbase
   *
   * Example #1: When I set the section padding to "2"
   * Example #2: And I set the section "top" padding to "1"
   * Example #3: When I set the section "left" padding to "4"
   * Example #4: And I set the section right padding to 3
   * Example #5: And I set the section padding to 4
   *
   * @When I set the section :side padding to :value
   * @When I set the section padding to :value
   */
  public function iSetTheSectionPaddingTo($side = NULL, $value = 0) {
    $this->iOpenTheSectionSettingsMenu("Spacing");
    if (is_numeric($value)) {
      if ($value >= 1 && $value <= 5) {
        $padding_side = $this->getSession()->getPage()->find('xpath', "//*[contains(., 'Padding $side')]");
        if (is_null($side)) {
          $this->getSession()->executeScript('jQuery(".bs-field-padding.form-range").val("' . $value . '")');
        }
        else {
          $padding_side->click();
          $js = <<<JS
					var js_side = "$side";
					var js_value = "$value";
					jQuery(".bs-field-padding-" + js_side).val(js_value);
					JS;
          $this->getSession()->executeScript($js);
        }
      }
      else {
        throw new \Exception('The section padding value should be between 1(min) - 5(max)');
      }
    }
    else {
      throw new \Exception('The section padding value should be an integer');
    }
  }

  /**
   * Set the margin for a section.
   *
   * Varbase Context #varbase
   *
   * Example #1: When I set the section margin to "3"
   * Example #2: And I set the section "right" margin to "2"
   * Example #3: When I set the section "top" margin to "1"
   * Example #4: And I set the section left margin to 5
   * Example #5: And I set the section margin to 4
   *
   * @When I set the section :side margin to :value
   * @When I set the section margin to :value
   */
  public function iSetTheSectionMarginTo($side = NULL, $value = 0) {
    $this->iOpenTheSectionSettingsMenu("Spacing");
    if (is_numeric($value)) {
      if ($value >= 1 && $value <= 5) {
        $margin_side = $this->getSession()->getPage()->find('xpath', "//*[contains(., 'Margin $side')]");
        if (is_null($side)) {
          $this->getSession()->executeScript('jQuery(".bs-field-margin.form-range").val("' . $value . '")');
        }
        else {
          $margin_side->click();
          $js = <<<JS
					var js_side = "$side";
					var js_value = "$value";
					jQuery(".bs-field-margin-" + js_side).val(js_value);
					JS;
          $this->getSession()->executeScript($js);
        }
      }
      else {
        throw new \Exception('The section margin value should be between 1(min) - 5(max)');
      }
    }
    else {
      throw new \Exception('The section margin value should be an integer');
    }
  }

  /**
   * Select a border style for a section.
   *
   * Varbase Context #varbase
   *
   * Example #1: And I select the section "solid" border style
   * Example #2: And I select the section dashed border style
   * Example #3: When I select the section "solid" "left" border style
   * Example #4: And I select the section dotted top border style
   * Example #5: When I select the section solid "bottom" border style
   *
   * @When I select the section :b_style border style
   * @When I select the section :b_style :b_side border style
   */
  public function iSelectTheSectionBorderStyle($b_style, $b_side = NULL) {
    $this->iOpenTheSectionSettingsMenu("Border");
    if (is_null($b_side)) {
      $all_sides = $this->getSession()->getPage()->find('xpath', "//label[contains(@for, 'edit-layout-settings-ui-tab-content-appearance-border-border-style-bs-border-style-$b_style')]");
      if (is_null($all_sides)) {
        throw new \Exception("The $b_style option was not found or not visible");
      }
      $all_sides->click();
    }
    else {
      $one_side = $this->getSession()->getPage()->find('xpath', "//label[contains(@for, 'edit-layout-settings-ui-tab-content-appearance-border-border-type-border-$b_side')]");
      if (is_null($one_side)) {
        throw new \Exception("The option selected was not found or not visible\nThe available border sides are:\n\ttop\n\tright\n\tbottom\n\tleft\n");
      }
      $one_side->click();
      $style = $this->getSession()->getPage()->find('xpath', "//label[contains(@for, 'edit-layout-settings-ui-tab-content-appearance-border-border-$b_side-style-bs-border-style-$b_side-$b_style')]");
      if (is_null($style)) {
        throw new \Exception("The $b_style option was not found or not visible");
      }
      $style->click();
    }
  }

  /**
   * Set the border width for a section.
   *
   * Varbase Context #varbase
   *
   * Example #1: When I set the section border width to "3"
   * Example #2: And I set the section top border width to "2"
   * Example #3: When I set the section left border width to 1
   *
   * @When I set the section border width to :b_width
   * @When I set the section :b_side border width to :b_width
   */
  public function iSetTheSectionBorderWidthTo($b_width, $b_side = NULL) {
    $this->iOpenTheSectionSettingsMenu("Border");
    if (is_numeric($b_width)) {
      if ($b_width >= 1 && $b_width <= 3) {
        if (is_null($b_side)) {
          $this->getSession()->executeScript('jQuery(".bs-field-border-width.form-range").val("' . $b_width . '")');
        }
        else {
          $this->getSession()->getPage()->find('xpath', "//label[contains(@for, 'edit-layout-settings-ui-tab-content-appearance-border-border-type-border-$b_side')]")->click();
          $js = <<<JS
						var js_side = "$b_side";
						var js_width = "$b_width";
						jQuery(".bs-field-border-width-" + js_side).val(js_width);
					JS;
          $this->getSession()->executeScript($js);
        }
      }
      else {
        throw new \Exception('The border width value should be between 1(min) - 5(max)');
      }
    }
    else {
      throw new \Exception('The border width value should be an integer');
    }
  }

  /**
   * Set the border color.
   *
   * Varbase Context #varbase
   *
   * Example #1: And I select the section "Dark" border color
   * Example #2: When I select the section "Primary" border color
   * Example #3: And I select the section "Danger" top border color
   * Example #4: When I select the section "Info" right border color
   *
   * @When I select the section :b_color border color
   * @When I select the section :b_color :b_side border color
   */
  public function iSelectTheSectionBorderColor($b_color, $b_side = NULL) {
    $this->iOpenTheSectionSettingsMenu("Border");
    if (is_null($b_side)) {
      $all_sides = $this->getSession()->getPage()->find('xpath', "//label[contains(.,'$b_color') and contains(@for, 'edit-layout-settings-ui-tab-content-appearance-border-border-color-border')]");
      if (is_null($all_sides)) {
        throw new \Exception("The $b_color option was not found or not visible");
      }
      $all_sides->click();
    }
    else {
      $one_side = $this->getSession()->getPage()->find('xpath', "//label[contains(@for, 'edit-layout-settings-ui-tab-content-appearance-border-border-type-border-$b_side')]");
      if (is_null($one_side)) {
        throw new \Exception("The option selected was not found or not visible\nThe available border sides are:\n\ttop\n\tright\n\tbottom\n\tleft\n");
      }
      $one_side->click();
      $color = $this->getSession()->getPage()->find('xpath', "//label[contains(@for, 'edit-layout-settings-ui-tab-content-appearance-border-border-$b_side') and contains(.,'$b_color')]");
      if (is_null($color)) {
        throw new \Exception("The $b_color option was not found or not visible");
      }
      $color->click();
    }
  }

  /**
   * Set the border radius.
   *
   * Varbase Context #varbase
   *
   * Example #1: When I set the section border radius to 2
   * Example #2: And I set the section border radius to "2"
   * Example #3: And I set the section "top left" border radius to 2
   * Example #4: When I set the section "bottom right" border radius to "3"
   * Example #5: And I set the section top right border radius to 1
   *
   * @When I set the section border radius to :value
   * @When I set the section :corner border radius to :value
   */
  public function iSetTheSectionBorderRadiusTo($corner = NULL, $value = 0) {
    $this->iOpenTheSectionSettingsMenu("Border");
    if (is_numeric($value)) {
      if ($value >= 1 && $value <= 3) {
        if (is_null($corner)) {
          $this->getSession()->executeScript('jQuery(".bs-field-rounded-corners").val("' . $value . '")');
        }
        else {
          $js = <<<JS
					var js_corner = "$corner";
					var js_value = "$value";
					js_corner = js_corner.replace(' ', '_');
					jQuery(".bs-field-rounded-corner-" + js_corner).val(js_value);
					JS;
          $this->getSession()->executeScript($js);
        }
      }
      else {
        throw new \Exception('The border radius value should be between 1(min) - 3(max)');
      }
    }
    else {
      throw new \Exception('The border radius value entered should be an integer');
    }
  }

  /**
   * Switch to the background image settings found under background styles settings.
   *
   * Varbase Context #varbase
   *
   * Example #1: And I switch to section background image settings
   *
   * @When I switch to section background image settings
   */
  public function iSwitchToSectionBackgroundImageSettings() {
    $this->iOpenTheSectionSettingsMenu("Background");
    $bg_image = $this->getSession()->getPage()->find('xpath', "//label[contains(@for, 'edit-layout-settings-ui-tab-content-appearance-background-background-type-image')]");
    if (is_null($bg_image)) {
      throw new \Exception('The section background image tab was not found or not visible');
    }
    $bg_image->click();
  }

  /**
   * Switch to the background video settings found under background styles settings.
   *
   * Varbase Context #varbase
   *
   * Exmaple #1: And I switch to section background video settings
   *
   * @When I switch to section background video settings
   */
  public function iSwitchToSectionBackgroundVideoSettings() {
    $this->iOpenTheSectionSettingsMenu("Background");
    $bg_video = $this->getSession()->getPage()->find('xpath', "//label[contains(@for, 'edit-layout-settings-ui-tab-content-appearance-background-background-type-video')]");
    if (is_null($bg_video)) {
      throw new \Exception('The section background video tab was not found or not visible');
    }
    $bg_video->click();
  }

  /**
   * Set an image attachment to be fixed.
   *
   * Varbase Context #varbase
   *
   * Example: When I set the attachment to be fixed
   *
   * @When I set the attachment to be fixed
   */
  public function iSetTheAttachmentToBeFixed() {
    $fixed_image = $this->getSession()->getPage()->find('xpath', "//label[contains(@for, 'edit-layout-settings-ui-tab-content-appearance-background-background-options-background-attachment-fixed')]");
    if (is_null($fixed_image)) {
      throw new \Exception('The image attachment options were not found or not visible');
    }
    $fixed_image->click();
  }

  /**
   * Set the background image size.
   *
   * Varbase Context #varbase
   *
   * Example #1: When I set the image size to "Contain"
   * Example #2: And I set the image size to "Auto"
   *
   * @When I set the image size to :arg1
   */
  public function iSetTheImageSizeTo($arg1) {
    $this->iOpenTheSectionSettingsMenu("Background");
    $this->iSwitchToSectionBackgroundImageSettings();
    $image_size = $this->getSession()->getPage()->find('xpath', "//label[contains(@for, 'edit-layout-settings-ui-tab-content-appearance-background-background-options-background-size') and contains(., '$arg1')]");
    if (is_null($image_size)) {
      throw new \Exception("The background image size selected was not found or not visible\nThe available images sizes are:\n\tCover (Default)\n\tContain\n\tAuto\n");
    }
    $image_size->click();
  }

  /**
   * Select an animation for a section.
   *
   * Varbase Context #varbase
   *
   * Example #1: When I select the section "Flip Right" animation
   * Example #2:  And I select the section "Zoom Out" animation
   *
   * @When I select the section :arg1 animation
   */
  public function iSelectTheSectionAnimation($anime) {
    $this->iOpenTheSectionSettingsMenu("Animation");
    $animation = $this->getSession()->getPage()->find('xpath', "//label[contains(., '$anime') and contains(@for, 'edit-layout-settings-ui-tab-content-appearance-animation-scroll-effects')]");
    if (is_null($animation)) {
      throw new \Exception('The "' . $anime . '" option was not found or not visible');
    }
    $animation->click();
  }

  /**
   * Add a block to a section.
   *
   * Varbase Context #varbase
   *
   * Example #1: And I add a Heading block
   * Example #2: When I add a "HTML code" block
   * Example #3: And I add a "Rich text" block
   *
   * @When I add a :block block
   */
  public function iAddABlock($block) {
    $add_block_btn = $this->getSession()->getPage()->find('xpath', "//*[contains(@class, 'use-ajax layout-builder__link layout-builder__link--add') and contains(., 'Add block')]")->click();
    $this->iWaitForSeconds(1);
    $custom_block_btn = $this->getSession()->getPage()->find('xpath', "//*[contains(@class, 'use-ajax inline-block-create-button') and contains(., 'Create custom block')]")->click();
    $this->iWaitForSeconds(1);
    $block = $this->getSession()->getPage()->find('xpath', "//*[contains(@class, 'use-ajax js-layout-builder-block-link inline-block-list__item') and contains(., '$block')]")->click();
  }

  /**
   * Images Functions.
   *
   * ==========================================================================.
   */

  /**
   * Find an image with the title text attribute.
   *
   * Varbase Context #varbase.
   *
   * Example 1: Then I should see image with the "Flag Earth" title text.
   *
   * @Then /^I should see image with the "([^"]*)" title text$/
   */
  public function iShouldSeeImageWithTheTitleText($titleText) {
    // Find an image with the title.
    $element = $this->getSession()->getPage()->find('xpath', "//img[contains(@title, '{$titleText}')]");

    if (empty($element)) {
      throw new \Exception('The page dose not have an image with the [ ' . $titleText . ' ] title text.');
    }
  }

  /**
   * Find an image with the alt text attribute.
   *
   * Varbase Context #varbase.
   *
   * Example 1: Then I should see image with the "Flag Earth" alt text.
   *
   * @Then /^I should see image with the "([^"]*)" alt text$/
   */
  public function iShouldSeeImageWithTheAltText($altText) {
    // Find an image with the title.
    $element = $this->getSession()->getPage()->find('xpath', "//img[contains(@alt, '{$altText}')]");

    if (empty($element)) {
      throw new \Exception('The page dose not have an image with the [ ' . $altText . ' ] Alt Text.');
    }
  }

  /**
   * Double click on an image with the provided title.
   *
   * Varbase Context #varbase.
   *
   * Example 1: I double click on the image with the "Flafg Earth image title" title text.
   *
   * @Given /^I double click on the image with the "([^"]*)" title text$/
   */
  public function iDoubleClickOnTheImageWithTheTitleText($titleText) {
    // Find an image with the title.
    $element = $this->getSession()->getPage()->find('xpath', "//img[contains(@title, '{$titleText}')]");

    if (empty($element)) {
      throw new \Exception('The page dose not have an image with the [ ' . $titleText . ' ] title text.');
    }

    // Double click on the image.
    $element->doubleClick();
  }

  /**
   * Click on an image with the provided title.
   *
   * Varbase Context #varbase.
   *
   * Example 1: I click on the image with the "Flag Earth image title" title text.
   *
   * @Given /^I click on the image with the "([^"]*)" title text$/
   */
  public function iClickOnTheImageWithTheTitleText($titleText) {
    // Find an image with the title.
    $element = $this->getSession()->getPage()->find('xpath', "//img[contains(@title, '{$titleText}')]");

    if (empty($element)) {
      throw new \Exception('The page dose not have an image with the [ ' . $titleText . ' ] title text.');
    }

    // Click on the image.
    $element->click();
  }

  /**
   * Double click on an image with the provided  alt Text.
   *
   * Varbase Context #varbase.
   *
   * Example 1: I double click on the image with the "Flag Earth image title" alt text.
   *
   * @Given /^I double click on the image with the "([^"]*)" alt text$/
   */
  public function iDoubleClickOnTheImageWithTheAltText($altText) {
    // Find an image with the title.
    $element = $this->getSession()->getPage()->find('xpath', "//img[contains(@alt, '{$altText}')]");

    if (empty($element)) {
      throw new \Exception('The page dose not have an image with the [ ' . $altText . ' ] alt text.');
    }

    // Double click on the image.
    $element->doubleClick();
  }

  /**
   * Click on an image with the provided alt.
   *
   * Varbase Context #varbase.
   *
   * Example 1: I click on the image with the "Flag Earth image title" alt text.
   *
   * @Given /^I click on the image with the "([^"]*)" alt text$/
   */
  public function iClickOnTheImageWithTheAltText($altText) {
    // Find an image with the title.
    $element = $this->getSession()->getPage()->find('xpath', "//img[contains(@title, '{$altText}')]");

    if (empty($element)) {
      throw new \Exception('The page dose not have an image with the [ ' . $altText . ' ] title text.');
    }

    // Click on the image.
    $element->click();
  }

  /**
   * Find an image with the title text attribute under a custom iframe.
   *
   * Varbase Context #varbase.
   *
   * Example 1: Then I should see image with the "Flag Earth" title text in the rich text editor field "Body"
   *
   * @Then /^I should see image with the "([^"]*)" title text in the rich text editor field "([^"]*)"$/
   */
  public function iShouldSeeImageWithTheTitleTextInTheRichTextEditorField($titleText, $locator) {

    $el = $this->getSession()->getPage()->findField($locator);
    $fieldId = $el->getAttribute('id');

    if (empty($fieldId)) {
      throw new \Exception('Could not find an id for the rich text editor field : ' . $locator);
    }

    $this->getSession()->executeScript("return CKEDITOR.instances[\"$fieldId\"].getData();");

    // Switch to the iframe.
    $iFreamID = $this->getAttributeByOtherAttributeValue('id', 'title', $fieldId, 'iframe');
    $this->getSession()->switchToIFrame($iFreamID);

    // Find an image with the title.
    $element = $this->getSession()->getPage()->findAll('xpath', "//img[contains(@title, '{$titleText}')]");

    if (empty($element)) {
      throw new \Exception('The page dose not have an image with the [ ' . $titleText . ' ] title text under [ ' . $locator . ' ].');
    }

    // Switch back too the page from the iframe.
    $this->getSession()->switchToIFrame(NULL);
  }

  /**
   * Find an image with the alt text attribute under a custom iframe.
   *
   * Varbase Context #varbase.
   *
   * Example 1: Then I should see image with the "Flag Earth" alt text in the rich text editor field "Body"
   *
   * @Then /^I should see image with the "([^"]*)" alt text in the rich text editor field "([^"]*)"$/
   */
  public function iShouldSeeImageWithTheAltTextUnder($altText, $filedName) {
    // Switch to the iframe.
    $iFreamID = $this->getAttributeByOtherAttributeValue('id', 'title', $filedName, 'iframe');
    $this->getSession()->switchToIFrame($iFreamID);

    // Find an image with the title.
    $element = $this->getSession()->getPage()->find('xpath', "//img[contains(@alt, '{$altText}')]");

    if (empty($element)) {
      throw new \Exception('The page dose not have an image with the [ ' . $altText . ' ] Alt Text under [ ' . $filedName . ' ].');
    }

    // Switch back too the page from the iframe.
    $this->getSession()->switchToIFrame(NULL);
  }

  /**
   * Mouse Functions.
   *
   * ==========================================================================.
   */

  /**
   * Move the mouse over an element.
   *
   * Varbase Context #varbase.
   *
   * Example #1: When I move the mouse over "header#navbar #main_menu ul.nav li a"
   * Example #2:  And I move the mouse over "hero_slider"
   *
   * @When /^I move the mouse over the "([^"]*)"$/
   */
  public function iMouseOver($selector) {
    $elem = $this->getSession()->getPage()->find('css', $selector);
    if ($elem) {
      $elem->mouseOver();
    }
    else {
      throw new \Exception("No element matching \"$selector\" is found.");
    }
  }

  /**
   * Double click on an element.
   *
   * Varbase Context #varbase.
   *
   * Example #1 : When I double click "Earth Flag Image"
   * Example #1 :  And I double click "input#username"
   *
   * @When /^I double click "([^"]*)"$/
   */
  public function iDoubleClick($selector) {
    $elem = $this->getSession()->getPage()->find('css', $selector);
    if ($elem) {
      $elem->doubleClick();
    }
    else {
      throw new \Exception("No element matching \"$selector\" is found.");
    }
  }

  /**
   * Right click on an element.
   *
   * Varbase Context #varbase.
   *
   * Example #1: When I right click "#right-click-to-configure a"
   * Example #2:  And I right click "Right click action box"
   *
   * @When /^I right click "([^"]*)"$/
   */
  public function iRightClick($selector) {
    $elem = $this->getSession()->getPage()->find('css', $selector);
    if ($elem) {
      $elem->rightClick();
    }
    else {
      throw new \Exception("No element matching \"$selector\" is found.");
    }
  }

  /**
   * Check if we do have the text in the selected element.
   *
   * Varbase Context #varbase.
   *
   * Example #1: Then I should see "your text" in the "ol" element with the "class" attribute set to "breadcrumb"
   * Example #2:  And I should see "your text" in the "div" element with the "id" attribute set to "right-panel"
   *
   * @Then /^I should see "(?P<text>[^"]*)" in the "(?P<htmlTagName>[^"]*)" element with the "(?P<attribute>[^"]*)" attribute set to "(?P<value>[^"]*)"$/
   */
  public function ishouldSeeTextInTheHtmlTagElement($text, $htmlTagName, $attribute, $value) {

    $elements = $this->getSession()->getPage()->findAll('css', $htmlTagName);
    if (empty($elements)) {
      throw new \Exception(sprintf('The element "%s" was not found in the page', $htmlTagName));
    }

    $found = FALSE;
    foreach ($elements as $element) {
      $actual = $element->getText();
      $actual = preg_replace('/\s+/u', ' ', $actual);
      $regex = '/' . preg_quote($text, '/') . '/ui';

      if (preg_match($regex, $actual)) {
        $found = TRUE;
        break;
      }
    }
    if (!$found) {
      throw new \Exception(sprintf('"%s" was not found in the "%s" element', $text, $htmlTagName));
    }

    if (!empty($attribute)) {
      $attr = $element->getAttribute($attribute);
      if (empty($attr)) {
        throw new \Exception(sprintf('The "%s" attribute is not present on the element "%s"', $attribute, $htmlTagName));
      }
      if (strpos($attr, "$value") === FALSE) {
        throw new \Exception(sprintf('The "%s" attribute does not equal "%s" on the element "%s"', $attribute, $value, $htmlTagName));
      }
    }
  }

  /**
   * Check if we do not have the text in the selected element.
   *
   * Varbase Context #varbase.
   *
   * Example #1: Then I should not see "your text" in the "ol" element with the "class" attribute set to "breadcrumb"
   * Example #2:  And I should not see "your text" in the "div" element with the "id" attribute set to "right-panel"
   *
   * @Then /^I should not see "(?P<text>[^"]*)" in the "(?P<htmlTagName>[^"]*)" element with the "(?P<attribute>[^"]*)" attribute set to "(?P<value>[^"]*)"$/
   */
  public function iShouldNotSeeTextInTheHtmlTagElement($text, $htmlTagName, $attribute, $value) {

    $elements = $this->getSession()->getPage()->findAll('css', $htmlTagName);
    if (empty($elements)) {
      throw new \Exception(sprintf('The element "%s" was not found in the page', $htmlTagName));
    }

    $found = FALSE;
    foreach ($elements as $element) {
      $actual = $element->getText();
      $actual = preg_replace('/\s+/u', ' ', $actual);
      $regex = '/' . preg_quote($text, '/') . '/ui';

      if (preg_match($regex, $actual)) {
        $found = TRUE;
        break;
      }
    }
    if ($found) {
      throw new \Exception(sprintf('"%s" was found in the "%s" element', $text, $htmlTagName));
    }

    if (empty($attribute)) {
      $attr = $element->getAttribute($attribute);
      if (empty($attr)) {
        throw new \Exception(sprintf('The "%s" attribute is present on the element "%s"', $attribute, $htmlTagName));
      }
      if (strpos($attr, "$value") === FALSE) {
        throw new \Exception(sprintf('The "%s" attribute does not equal "%s" on the element "%s"', $attribute, $value, $htmlTagName));
      }
    }
  }

  /**
   * Click on the text in the selected element.
   *
   * Varbase Context #varbase.
   *
   * Example #1: Then I click "your text" in the "ol" element with the "class" attribute set to "breadcrumb"
   * Example #2:  And I click "your text" in the "div" element with the "id" attribute set to "right-panel"
   *
   * @Then /^I click "(?P<text>[^"]*)" in the "(?P<htmlTagName>[^"]*)" element with the "(?P<attribute>[^"]*)" attribute set to "(?P<value>[^"]*)"$/
   */
  public function iClickTextInTheHtmlTagElement($text, $htmlTagName, $attribute, $value) {

    $elements = $this->getSession()->getPage()->findAll('css', $htmlTagName);
    if (empty($elements)) {
      throw new \Exception(sprintf('The element "%s" was not found in the page', $htmlTagName));
    }

    $found = FALSE;
    foreach ($elements as $element) {
      $actual = $element->getText();
      $actual = preg_replace('/\s+/u', ' ', $actual);
      $regex = '/' . preg_quote($text, '/') . '/ui';

      if (preg_match($regex, $actual)) {
        $found = TRUE;
        $element->click();
        break;
      }
    }
    if (!$found) {
      throw new \Exception(sprintf('"%s" was not found in the "%s" element', $text, $htmlTagName));
    }

    if (!empty($attribute)) {
      $attr = $element->getAttribute($attribute);
      if (empty($attr)) {
        throw new \Exception(sprintf('The "%s" attribute is not present on the element "%s"', $attribute, $htmlTagName));
      }
      if (strpos($attr, "$value") === FALSE) {
        throw new \Exception(sprintf('The "%s" attribute does not equal "%s" on the element "%s"', $attribute, $value, $htmlTagName));
      }
    }
  }

  /**
   * Check if we do have a text in the input element.
   *
   * Example #1: Then I should see "your text" value in the "edit-items-2-target-id" input element
   * Example #2:  And I should see "Location property" value in the "edit-name" input element.
   *
   * @Then /^I should see "(?P<text>[^"]*)" value in the "(?P<selector>[^"]*)" input element$/
   */
  public function iShouldSeeValueInTheInputElement($text, $selector) {

    $elements = $this->getSession()->getPage()->findAll('xpath', "//*[@data-drupal-selector='{$selector}']");
    if (empty($elements)) {
      throw new \Exception(sprintf('The input element "%s" was not found in the page', $selector));
    }

    $found = FALSE;
    foreach ($elements as $element) {
      $elementTextValue = $element->getValue();
      $actual = preg_replace('/\s+/u', ' ', $elementTextValue);
      $regex = "/" . preg_quote($text, '/') . "/";

      if (preg_match($regex, $actual)) {
        $found = TRUE;
        break;
      }
    }
    if (!$found) {
      throw new \Exception(sprintf('"%s" value was not found in the "%s" input element', $text, $selector));
    }
  }

  /**
   * Check if we can click a value in the input element.
   *
   * Example #1: When I click "your text" value in the "edit-items-2-target-id" input element
   * Example #2:  And I click "Location property" value in the "edit-name" input element.
   *
   * @Then /^I click "(?P<text>[^"]*)" value in the "(?P<selector>[^"]*)" input element$/
   */
  public function iClickValueInTheInputElement($text, $selector) {

    $elements = $this->getSession()->getPage()->findAll('xpath', "//*[@data-drupal-selector='{$selector}']");
    if (empty($elements)) {
      throw new \Exception(sprintf('The input element "%s" was not found in the page', $selector));
    }

    $found = FALSE;
    foreach ($elements as $element) {
      $elementTextValue = $element->getValue();
      $actual = preg_replace('/\s+/u', ' ', $elementTextValue);
      $regex = "/" . preg_quote($text, '/') . "/";

      if (preg_match($regex, $actual)) {
        $found = TRUE;
        break;
      }
    }
    if (!$found) {
      throw new \Exception(sprintf('"%s" value was not found in the "%s" input element', $text, $selector));
    }
    $element->click();
  }

  /**
   * Check if we do have the text in the selected panel region.
   *
   * Using the code name of the panel region. or the html id.
   * Varbase Context #varbase.
   *
   * Example #1: Then I should see "Add new pane" in the "Center" panel region
   * Example #2: Then I should see "custom pane title" in the "Right side" panel region
   * Example #3:  And I should see "Add new pane" in the "panels-ipe-regionid-center" panel region.
   *
   * @Then /^I should see "(?P<text>[^"]*)" in the "(?P<panleRegion>[^"]*)" panel region$/
   */
  public function iShouldSeeInThePanelRegion($text, $panleRegion) {

    if (strpos($panleRegion, "panels-ipe-regionid-")) {
      $panleRegionId = $panleRegion;
    }
    else {
      $panleRegionId = "panels-ipe-regionid-" . str_replace(' ', '-', strtolower($panleRegion));
    }

    $elementPanelRegion = $this->getSession()->getPage()->find('xpath', "//*[contains(@id, '{$panleRegionId}')]");
    if (empty($elementPanelRegion)) {
      throw new \Exception('The panle region [ ' . $panleRegion . ' ] is not in the page.');
    }

    $element = $this->getSession()->getPage()->find('xpath', "//*[contains(@id, '{$panleRegionId}')]//*[text()='{$text}']");
    if (empty($element)) {
      throw new \Exception('The panle region "' . $panleRegion . '" dose not have "' . $text . '" in it.');
    }
  }

  /**
   * Check if we do not have the text in the selected panel region.
   *
   * Using the code name of the panel region. or the html id.
   * Varbase Context #varbase.
   *
   * Example #1: Then I should not see "Add new pane" in the "Center" panel region
   * Example #2: Then I should not see "custom pane title" in the "Right side" panel region
   * Example #3:  And I should not see "Add new pane" in the "panels-ipe-regionid-center" panel region.
   *
   * @Then /^I should not see "(?P<text>[^"]*)" in the "(?P<panleRegion>[^"]*)" panel region$/
   */
  public function iShouldNotSeeInThePanelRegion($text, $panleRegion) {

    if (strpos($panleRegion, "panels-ipe-regionid-")) {
      $panleRegionId = $panleRegion;
    }
    else {
      $panleRegionId = "panels-ipe-regionid-" . str_replace(' ', '-', strtolower($panleRegion));
    }

    $elementPanelRegion = $this->getSession()->getPage()->find('xpath', "//*[contains(@id, '{$panleRegionId}')]");
    if (empty($elementPanelRegion)) {
      throw new \Exception('The panle region [ ' . $panleRegion . ' ] is not in the page.');
    }

    $element = $this->getSession()->getPage()->find('xpath', "//*[contains(@id, '{$panleRegionId}')]//*[text()='{$text}']");
    if (!empty($element)) {
      throw new \Exception('The panle region "' . $panleRegion . '" dose have "' . $text . '" in it.');
    }
  }

  /**
   * Click on the text in the selected panel region.
   *
   * Using the code name of the panel region. or the html id.
   * Varbase Context #varbase.
   *
   * Example #1: When I click "Add new pane" in the "center" panel region
   * Example #2: When I click "Region style" in the "left" panel region
   * Example #3:  And I click "Add new pane" in the "panels-ipe-regionid-center" panel region.
   *
   * @When /^I click "(?P<text>[^"]*)" in the "(?P<panleRegion>[^"]*)" panel region$/
   */
  public function iClickInThePanelRegion($text, $panleRegion) {

    if (strpos($panleRegion, "panels-ipe-regionid-")) {
      $panleRegionId = $panleRegion;
    }
    else {
      $panleRegionId = "panels-ipe-regionid-" . str_replace(' ', '-', strtolower($panleRegion));
    }

    $elementpanelRegion = $this->getSession()->getPage()->find('xpath', "//*[contains(@id, '{$panleRegionId}')]");
    if (empty($elementpanelRegion)) {
      throw new \Exception('The panle region [ ' . $panleRegion . ' ] is not in the page.');
    }

    $element = $this->getSession()->getPage()->find('xpath', "//*[contains(@id, '{$panleRegionId}')]//*[text()='{$text}']");
    if (empty($element)) {
      throw new \Exception('The panle region "' . $panleRegion . '" dose not have "' . $text . '".');
    }

    $element->click();
  }

  /**
   * Alert Functions.
   *
   * ==========================================================================.
   */

  /**
   * Accept alert if present.
   *
   * Varbase Context #varbase.
   *
   * Example #1: When I accept alert
   * Example #2: And accept alert.
   *
   * @when /^(?:|I )accept alert$/
   */
  public function acceptAlert() {
    try {
      $this->getSession()->getDriver()->getWebDriverSession()->accept_alert();
    }
    catch (Exception $e) {
      // no-op, alert might not be present.
    }
  }

  /**
   * Dismiss alert if present.
   *
   * Varbase Context #varbase.
   *
   * Example #1: When I dismiss alert
   * Example #2:  And dismiss alert.
   *
   * @when /^(?:|I )dismiss alert$/
   */
  public function iDismissAlert() {
    try {
      $this->getSession()->getDriver()->getWebDriverSession()->dismiss_alert();
    }
    catch (Exception $e) {
      // no-op, alert might not be present.
    }
  }

  /**
   * Print the text of the current alert message.
   *
   * Varbase Context #varbase.
   *
   * Example #1: When I print alert text
   * Example #2:  And print alert text.
   *
   * @When /^(?:|I ) print alert text$/
   */
  public function iPrintAlertText() {
    try {
      return $this->getSession()->getDriver()->getWebDriverSession()->getAlert_text();
    }
    catch (Exception $e) {
      // no-op, alert might not be present.
    }
  }

  /**
   * Fill a text in the alert message.
   *
   * Varbase Context #varbase.
   *
   * Example #1: When I fill "See this alert" in alert
   * Example #2:  And fill "See this text" in alert.
   *
   * @When /^(?:|I )fill "(?P<text>[^"]*)" in alert$/
   */
  public function iFillInAlert($message) {
    try {
      $this->getSession()->getDriver()->getWebDriverSession()->postAlert_text($message);
    }
    catch (Exception $e) {
      // no-op, alert might not be present.
    }
  }

  /**
   * Press a modifier and other key.
   *
   * Modifier options: { ctrl, shift, alt } key options.
   * Varbase Context #varbase.
   *
   * Example #1: When I press "ctrl" and "v"
   * Example #2: When I press "alt" and "f"
   * Example #3:  And I press "ctrl" and "r"
   *
   * @When I press :modifier and :key in :field field
   */
  public function iPressModifierAndKeys($modifier, $key, $field) {

    static $keys = [
    'backspace' => 8,
    'tab' => 9,
    'enter' => 13,
    'shift' => 16,
    'ctrl' => 17,
    'alt' => 18,
    'pause' => 19,
    'break' => 19,
    'escape' => 27,
    'esc' => 27,
    'end' => 35,
    'home' => 36,
    'left' => 37,
    'up' => 38,
    'right' => 39,
    'down' => 40,
    'insert' => 45,
    'delete' => 46,
    'pageup' => 33,
    'pagedown' => 34,
    'capslock' => 20,
   ];

    static $modifiers = [
    'shift' => 16,
    'ctrl' => 17,
    'alt' => 18,
   ];

    $key           = is_numeric($key) ? $key : ord($key);
    $isCtrlKeyArg  = ($modifier == 'ctrl') ? "true" : "false";
    $isAltKeyArg   = ($modifier == 'alt') ? "true" : "false";
    $isShiftKeyArg = ($modifier == 'shift') ? "true" : "false";

    // Validate the modifier keys.
    if (is_string($modifier)) {
      if (strlen($modifier) < 1) {
        throw new \Exception('Modifier parameter was empty. one of \'shift\', \'alt\', \'ctrl\'');
      }
      elseif (strlen($modifier) > 1) {
        // One of 'shift', 'alt', 'ctrl'.
        $filteredModifier = strtolower(str_replace(' ', '', $modifier));
        if (isset($modifiers[$filteredModifier])) {
          $modifier = $modifiers[$filteredModifier];
        }
        else {
          throw new \Exception('Modifier parameter must be one of \'shift\', \'alt\', \'ctrl\'');
        }

      }
    }

    // Validate the other key.
    if (is_string($key)) {
      if (strlen($key) < 1) {
        throw new \Exception('Key parameter was empty.');
      }
      elseif (strlen($key) > 1) {
        // Support for all variations, e.g. ESC, Esc, page up, pageup.
        $filteredKey = strtolower(str_replace(' ', '', $key));
        if (isset($keys[$filteredKey])) {
          $key = $keys[$filteredKey];
        }
        else {
          throw new \Exception('Key parameter must a keyboard key');
        }
      }
    }

    $elementField = $this->getSession()->getPage()->findField($field);
    if (!$elementField) {
      throw new \Exception("Field '{$field}' not found");
    }

    $fieldid = $elementField->getAttribute('id');

    $js = <<<JS
var node = document.getElementById("{$fieldid}");
var keyEvent = document.createEvent('KeyboardEvent');
keyEvent.initKeyEvent('keypress',        // typeArg,
											 true,             // canBubbleArg,
											 true,             // cancelableArg,
											 window,             // viewArg,
											 {$isCtrlKeyArg},             // ctrlKeyArg,
											 {$isAltKeyArg},            // altKeyArg,
											 {$isShiftKeyArg},            // shiftKeyArg,
											 false,            // metaKeyArg,
											 {$key},       // keyCodeArg,
											 {$key}      // charCodeArg);
										 );
node.dispatchEvent(keyEvent);
JS;

    $this->getSession()->executeScript($js);
  }

  /**
   * Fill a text in the alert message.
   *
   * Varbase Context #varbase.
   *
   * Example #1: Given I drag and drop ".element-item" to ".target"
   * Example #2:  When I drag and drop "#panels-ipe-regionid-left .panels-ipe-portlet-wrapper" to "#panels-ipe-regionid-center .panels-ipe-sort-container"
   * Example #3:   And I drag and drop ".item-1" to ".target-2"
   *
   * @Given /^I drag and drop "([^"]*)" to "([^"]*)"$/
   */
  public function iDragAndDropTo($draggedElement, $targetElement) {

    $dragged = $this->getSession()->getPage()->find('css', $draggedElement);
    if (empty($dragged)) {
      throw new \Exception('The selected dragged element [ ' . $draggedElement . ' ] is not in the page.');
    }

    $target = $this->getSession()->getPage()->find('css', $targetElement);
    if (empty($target)) {
      throw new \Exception('The selected target element [ ' . $targetElement . ' ] is not in the page.');
    }

    $this->getSession()->getDriver()->evaluateScript("jQuery('{$draggedElement}').detach().prependTo('{$targetElement}');");

  }

  /**
   * Select a radio button.
   *
   * Varbase Context #varbase.
   *
   * Example #1: When I select the "Male" radio button
   * Example #2:  And I select the "Male" radio button
   *
   * @When /^I select the "([^"]*)" radio button$/
   */
  public function iSelectTheRadioButton($labelText) {
    // Find the label by its text, then use that to get the radio item's ID.
    $radioId = NULL;

    /** @var NodeElement $label */
    foreach ($this->getSession()->getPage()->findAll('css', 'label') as $label) {
      if ($labelText === $label->getText()) {
        if ($label->hasAttribute('for')) {
          $radioId = $label->getAttribute('for');
          break;
        }
        else {
          throw new \Exception("Radio button's label needs the 'for' attribute to be set");
        }
      }
    }
    if (!$radioId) {
      throw new \InvalidArgumentException("Label '$labelText' not found.");
    }

    // Now use the ID to retrieve the button and click it.
    /** @var NodeElement $radioButton. */
    $radioButton = $this->getSession()->getPage()->find('css', "#$radioId");
    if (!$radioButton) {
      throw new \Exception("$labelText radio button not found.");
    }

    $this->getSession()->getPage()->fillField($radioId, $radioButton->getAttribute('value'));
  }

  /**
   * Click on the label with the for attribute value.
   *
   * Linked to the an ID of a radio button with a value to select the radio
   * option. we need to use this when we do have a list of radio buttons
   * but we do have the label with extra HTML tags like images or the actual
   * radio button is hidden.
   * Varbase Context #varbase.
   *
   * Example #1: Given I click on the radio label for "right_sidebar_layout" value
   * Example #2:  When I click on the radio label for "layout-settings" value
   *
   * @Given /^I click on the radio label for "([^"]*)" value$/
   */
  public function iClickOnTheRadioLabelForValue($value) {
    $radio_label = $this->getSession()->getPage()->find('xpath', "//label[contains(@for, '{$value}')]");
    if ($radio_label) {
      $radio_label->click();
    }
    else {
      throw new \Exception("No label with the value of for='" . $value . "' radio button not found.");
    }
  }

  /**
   * Expand a field group by its id attribute.
   *
   * Varbase Context #varbase.
   *
   * Example #1: When I expand the field "Field Group ID"
   * Example #2:  And I expand the field "More options"
   *
   * @When I expand the field :arg1
   */
  public function iExpandThefield($fieldID) {
    $js = <<<JS
		var group = document.getElementById("{$fieldID}");
		group.setAttribute("open","");
JS;
    $this->getSession()->executeScript($js);
  }

  /**
   * Expand a select list by it's class attribute.
   *
   * Varbase Context #varbase.
   *
   * Example #1: When I expand the "1" select list "dropbutton-multiple"
   * Example #2:  And I expand the "2" select list "Editor Styling options"
   *
   * @When I expand the :nth select list :arg1
   */
  public function iExpandTheSelectList($index, $listClassName) {
    $js = <<<JS
		var group = document.getElementsByClassName("{$listClassName}")[{$index}];
		group.className += "open";
JS;
    $this->getSession()->executeScript($js);
  }

  /**
   * Scroll down in the current status of the page, about 350 down.
   *
   * Varbase Context #varbase.
   *
   * Example #1: When I scroll down
   * Example #2:  And I scroll down.
   *
   * @When /^(?:|I )scroll down$/
   */
  public function iScrolldown() {
    $this->getSession()->executeScript("javascript:window.scrollBy(0,350)");
  }

  /**
   * Scroll up in the current status of the page, about 350 up.
   *
   * Varbase Context #varbase.
   *
   * Example #1: When I scroll up.
   *
   * @When /^(?:|I )scroll up$/
   */
  public function iScrollup() {
    $this->getSession()->executeScript("javascript:window.scrollBy(0,-350)");
  }

  /**
   * Scroll down in the current status of the page and pass a value.
   *
   * Varbase Context #varbase.
   *
   * Example #1: When I scroll down 800
   * Example #2:  And I scroll down 2000
   *
   * @When /^(?:|I )scroll down (?P<value>\d+)$/
   */
  public function iScrolldownWithValue($value) {
    $this->getSession()->executeScript("javascript:window.scrollBy(0," . $value . ")");
  }

  /**
   * Scroll up in the current status of the page and pass a value.
   *
   * Varbase Context #varbase.
   *
   * Example #1: When I scroll up 1000
   *
   * @When /^(?:|I ) scroll up (?P<value>\d+)$/
   */
  public function iScrollupWithValue($value) {
    $this->getSession()->executeScript("javascript:window.scrollBy(0,-" . $value . ")");
  }

  /**
   * Scroll to top.
   *
   * Varbase Context #varbase.
   *
   * Example #1: When I scroll to top
   * Example #2: When I scroll to the top
   * Example #3: When I scroll to the top of the page
   * Example #4: And scroll to top
   *
   * @When /^(?:|I )scroll to (?:|the )top(?:| of the page)$/
   */
  public function iScrollToTop() {
    $this->getSession()->executeScript("document.documentElement.scrollTop = 0");
  }

  /**
   * Scroll to bottom.
   *
   * Varbase Context #varbase.
   *
   * Example #1: When I scroll to bottom
   * Example #2: And I scroll to the bottom
   * Example #3: When I scroll to the bottom of the page
   * Example #4: And scroll to bottom
   *
   * @When /^(?:|I )scroll to (?:|the )bottom(?:| of the page)$/
   */
  public function iScrollToBottom() {
    $this->getSession()->executeScript("window.scrollTo(0,document.body.scrollHeight)");
  }

  /**
   * Check if a checkbox is unchecked
   * 
   * Varbase Context #varbase
   * 
   * Example #1: And I should see the "Accept" checkbox unchecked
   * Example #1: Then I should see the "Enable" checkbox unchecked
   * 
   * @Then I should see the :label checkbox unchecked
   */
  public function iShouldSeeTheCheckboxUnchecked($label) {
    $isChecked = (boolean) $this->getSession()->getDriver()->isChecked("//label[contains(text(), '${label}')]/preceding-sibling::input");
    if ($isChecked) {
      throw new \Exception("The '" . $label . "' checkbox is checked");
    } 
  }

  /**
   * Check if a checkbox is checked
   * 
   * Varbase Context #varbase
   * 
   * Example #1: And I should see the "Site Admin" checkbox checked
   * Example #1: Then I should see the "Enable" checkbox checked
   * 
   * @Then I should see the :label checkbox checked
   */
  public function iShouldSeeTheCheckboxChecked($label) {
    $isChecked = (boolean) $this->getSession()->getDriver()->isChecked("//label[contains(text(), '${label}')]/preceding-sibling::input");
    if (!$isChecked) {
      throw new \Exception("The '" . $label . "' checkbox is unchecked");
    } 
  }

  /**
   * Check if the Image media browser opened.
   *
   * Varbase Context #varbase.
   *
   * Example #1: Then the image media browser should be open
   * Example #2:  And the image media browser should be open
   *
   * @Then /^the image media browser should be open$/
   */
  public function theImageMediaBrowserIsOpen() {
    if (!$this->getSession()->getPage()->find('css', '.ui-dialog.ui-widget-content')) {
      throw new \Exception('The image media browser failed to open.');
    }
  }

  /**
   * Check if the media browser with the selected iframe id is open.
   *
   * Varbase Context #varbase.
   *
   * Example #1: Then the "editor_media_browser" media browser should be open
   * Example #2:  And the "multiple_image_browser" media browser should be open
   *
   * @Then /^the "([^"]*)" media browser should be open$/
   */
  public function theMediaBrowserIsOpen($entityBrowserIframeId) {
    if (!$this->getSession()->getPage()->find('css', '.ui-dialog.ui-widget-content')) {
      throw new \Exception('The media browser failed to open.');
    }

    if (!$this->getSession()->getPage()->find('css', "#$entityBrowserIframeId")) {
      throw new \Exception("$entityBrowserIframeId is not found.");
    }
  }

  /**
   * Find an element with a selected index having the first attribute.
   *
   * Check if it's have the second one.
   * Varbase Context #varbase.
   *
   * Example #1: Then I should see the "1" "wrapper" with "align2right" class
   * Example #2:  And I should see the "2" "wrapper" with "align2right" class
   *
   * @Then I should see the :nth :arg1 with :arg2 class
   */
  public function iShouldSeeTheElementWithTheIndexHavingTheAttribute($index, $wrapper, $position) {
    $items = $this->getSession()->getPage()->findAll('css', '.' . $wrapper);
    $item = $items[$index]->find('css', '.' . $wrapper . '.' . $position);
    if (!$item) {
      throw new \Exception("The image position is wrong");
    }
  }

  /**
   * Resize the current window browser to a selected width and height.
   *
   * Varbase Context #varbase.
   *
   * Example #1: And I resize the current window to width="1280" and height="600"
   * Example #2: And I resize the current window to width="1280" and height="600"
   *
   * @Given /^I resize the current window to width="([^"]*)" and height="([^"]*)"$/
   */
  public function resizeTheCurrentWindowToWidthAndHeight($width, $height) {
    $this->getSession()->resizeWindow((int) $width, (int) $height, 'current');
  }

  /**
   * Switch to an ifram by its id.
   *
   * Varbase Context #varbase.
   *
   * Example #1: When I switch to iframe "entity_browser_iframe_media_browser"
   * Example #2:  And I switch to iframe "remote-video-media"
   *
   * @When /^(?:|I )switch to iframe "([^"]*)"$/
   */
  public function iSwitchToIframe($iFrameLocator) {
    $this->getSession()->getDriver()->switchToIFrame($iFrameLocator);
  }

  /**
   * Switch to the main frame or the parent ifram.
   *
   * Varbase Context #varbase.
   *
   * Example #1: When I switch to main fram
   * Example #2: When I switch to parent
   *
   * @When /^(?:|I )switch to main frame$/
   * @When /^(?:|I )switch to parent$/
   */
  public function iSwitchToParent() {
    $this->getSession()->getDriver()->switchToIFrame(NULL);
  }

  /**
   * Helper function to let you get the value of an attribute name.
   *
   * For an HTML tag by other Attribute name and value.
   *
   * @param string $attributeName
   *   The attribute name.
   * @param string $otherAttributeName
   *   The other attribute name.
   * @param string $otherAttributeValue
   *   The other attribute value.
   * @param string $htmlTagName
   *   The HTML tag name you are filtring with.
   *
   * @return string
   *   Attribute value for the first matching element.
   */
  private function getAttributeByOtherAttributeValue($attributeName, $otherAttributeName, $otherAttributeValue, $htmlTagName = "*") {
    $element = $this->getSession()->getPage()->find('xpath', "//{$htmlTagName}[contains(@{$otherAttributeName}, '{$otherAttributeValue}')]");
    return $element->getAttribute($attributeName);
  }

  /**
   * Select a paragraph component.
   *
   * Varbase Context #varbase.
   *
   * Example 1: When I select the "Drupal block" paragraph component
   * Example 2:  And I select the "Modal" paragraph component
   *
   * @When /^I select (?:|the )"([^"]*)" paragraph component$/
   */
  public function iSelectTheParagraphComponent($value) {
    $this->getSession()->getPage()->find('xpath', '//*[contains(@class, "paragraphs-add-dialog") and contains(@class, "ui-dialog-content")]//*[contains(@name, "' . $value . '")]')->click();
  }

  /**
   * Retrieve a table row containing specified entity with operations.
   *
   * @param \Behat\Mink\Element\Element $element
   *   The element row name.
   * @param string $search
   *   The text to search for in the table row.
   *
   * @return \Behat\Mink\Element\NodeElement
   *
   * @throws \Exception
   */
  public function getEntityRow(Element $element, $search) {
    $rows = $element->findAll('css', 'tr');
    if (empty($rows)) {
      throw new \Exception(sprintf('Entity not found on the page %s', $this->getSession()->getCurrentUrl()));
    }

    foreach ($rows as $row) {
      if (strpos($row->getText(), $search) !== FALSE) {
        return $row;
      }
    }
    throw new \Exception(sprintf('Failed to find an entity containing "%s" on the page %s', $search, $this->getSession()->getCurrentUrl()));
  }

  /**
   * Check if an entity has a specific operation link.
   *
   * Varbase Context #varbase.
   *
   * Example 1: Then I should see the "Edit" operation for the "Homepage" entity
   * Example 2: Then I should see "Layout" operation for the "Homepage"
   * Example 3: Then see "Edit" operation for "Homepage"
   * Example 4: Then should see "Delete" operation for the "Blog" entity
   * Example 5: Then I should see "Clone" operation for the "Homepage" entity
   *
   * @Then /^(?:|I )(?:|should )see (?:|the )"([^"]*)" operation for the "([^"]*)" (?:|entity|content|media|file|term|user)$/
   */
  public function iShouldSeetheOperationForTheEntity($operation, $entity) {
    $row = $this->getEntityRow($this->getSession()->getPage(), $entity);
    $operation_elment = $row->find('xpath', "//*[contains(@headers, 'view-operations-table-column')]//*[text()='{$operation}']");
    if (empty($operation_elment)) {
      throw new \Exception(sprintf('Found an entity containing "%s", but it did not have the operation "%s".', $entity, $operation));
    }
  }

  /**
   * Check if an entity not having a specific operation link.
   *
   * Varbase Context #varbase.
   *
   * Example 1: Then I should not see the "View API" operation for the "Homepage" entity
   * Example 2: Then I should not see "View API Docs" operation for the "Homepage"
   * Example 3: Then not see "Delete" operation for "Homepage"
   * Example 4: Then should not see "Delete" operation for the "Blog" entity
   * Example 5: Then I should not see "Clone" operation for the "Homepage" entity
   *
   * @Then /^(?:|I )(?:|should )not see (?:|the )"([^"]*)" operation for the "([^"]*)" (?:|entity|content|media|file|term|user)$/
   */
  public function iShouldNotSeetheOperationForTheEntity($operation, $entity) {
    $row = $this->getEntityRow($this->getSession()->getPage(), $entity);
    $operation_elment = $row->find('xpath', "//*[contains(@headers, 'view-operations-table-column')]//*[text()='{$operation}']");
    if (!empty($operation_elment)) {
      throw new \Exception(sprintf('Found an entity containing "%s", but it have the operation "%s".', $entity, $operation));
    }
  }

  /**
   * Matching element exists on the page after a wait.
   *
   * @param string $selector_type
   *   The element selector type (css, xpath).
   * @param string|array $selector
   *   The element selector.
   * @param int $timeout
   *   (optional) Timeout in milliseconds, defaults to 10000.
   */
  public function matchingElementAfterWait($selector_type, $selector, $timeout = 10000) {
    $start = microtime(TRUE);
    $end = $start + ($timeout / 1000);
    $page = $this->getSession()->getPage();

    do {
      $node = $page->find($selector_type, $selector);
      if (empty($node)) {
        return FALSE;
      }
      usleep(100000);
    } while (microtime(TRUE) < $end);

    return TRUE;
  }

  /**
   * Accept Alerts Before going to the next step.
   *
   * @BeforeStep @AcceptAlertsBeforStep
   */
  public function beforeStepAcceptAlert(BeforeStepScope $scope) {
    try {
      $this->getSession()->getDriver()->getWebDriverSession()->accept_alert();
    }
    catch (Exception $e) {
      // no-op, alert might not be present.
    }
  }

  /**
   * Accept Alerts After going to the next step.
   *
   * @AftereStep @AcceptAlertsAfterStep
   */
  public function afterStepAcceptAlert(AfterStepScope $scope) {
    try {
      $this->getSession()->getDriver()->getWebDriverSession()->accept_alert();
    }
    catch (Exception $e) {
      // no-op, alert might not be present.
    }
  }

  /**
   * Dismiss Alerts Before going to the next step.
   *
   * @BeforeStep @AcceptAlertsBeforStep
   */
  public function beforeStepDismissAlert(BeforeStepScope $scope) {
    try {
      $this->getSession()->getDriver()->getWebDriverSession()->dismiss_alert();
    }
    catch (Exception $e) {
      // no-op, alert might not be present.
    }
  }

  /**
   * Dismiss Alerts After going to the next step.
   *
   * @AftereStep @DismissAlertsAfterStep
   */
  public function afterStepDismissAlert(AfterStepScope $scope) {
    try {
      $this->getSession()->getDriver()->getWebDriverSession()->dismiss_alert();
    }
    catch (Exception $e) {
      // no-op, alert might not be present.
    }
  }

}
