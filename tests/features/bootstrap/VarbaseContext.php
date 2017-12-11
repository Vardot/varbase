<?php

use Behat\Behat\Tester\Exception\PendingException;
use Drupal\DrupalExtension\Context\RawDrupalContext;
use Behat\Behat\Context\SnippetAcceptingContext;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;

/**
 * Defines application features from the specific context.
 */
class VarbaseContext extends RawDrupalContext implements SnippetAcceptingContext {

  /**
  * Hold the user name and password from drupal_users parameters.
  */
  protected $users = array();

  /**
  * Hold the user name and password from varbase_users parameters.
  */
  protected $varbase_users = array();

  /**
  * Hold all passed parameters.
  */
  protected $parameters = array();

  /**
   * Initializes context.
   *
   * @param array $parameters .
   *   Context parameters (set them up through behat.yml or behat.local.yml).
   */
  public function __construct(array $parameters) {

    // Set the list of parameters.
    $this->parameters = $parameters;

    if (isset($parameters['varbase_users'])) {
      $this->varbase_users = $parameters['varbase_users'];
      foreach ($parameters['varbase_users'] as $varbase_username => $varbase_user) {
        $this->users[$varbase_username] = $varbase_user['password'];
      }
    }
    else {
      throw new Exception('behat.yml config files should include "varbase_users" property.');
    }
  }

  /**
   * #varbase : To authenticate a user with password from varbase configuration.
   *            If you want to see the list of users or add yours you can go and
   *            edit the behat.varbase.yml file under the varbase_users list.
   *
   * Example: I am a logged in user with the username "test_content_admin"
   *
   * @Given /^I am a logged in user with (?:|the )"(?P<username>[^"]*)"(?:| user)$/
   * @Then /^I login with (?:|the )"(?P<username>[^"]*)"(?:| user)$/
   */
  public function iAmloggedInUserWithTheUser($username) {

    try {
      $password = $this->users[$username];
    }
    catch (Exception $e) {
      throw new Exception("Password not found for '$username'.");
    }
    if ($this->loggedIn()) {
      $this->logout();
    }
    $element = $this->getSession()->getPage();
    $this->getSession()->visit($this->locatePath('/user'));
    $element->fillField('Username', $username);
    $element->fillField('Password', $password);
    $submit = $element->findButton('Log in');
    $submit->click();
  }

  /**
   * #varbase : To authenticate a user with a gavin username and password on the spot.
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

    // Login with the
    $element = $this->getSession()->getPage();
    $this->getSession()->visit($this->locatePath('/user'));
    $element->fillField('Username', $username);
    $element->fillField('Password', $password);
    $submit = $element->findButton('Log in');
    $submit->click();
  }

  /**
   * #varbase : To logout from the current session.
   *
   * Example: When I logout
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
   * #varbase: To go directly to an external website.
   *
   * Example: When I go to "https://www.google.com" website
   *
   * @When /^I go to "(?P<domain>[^"]*)" website$/
   */
  public function iGoToWebsite($domain) {
    $this->getSession()->visit($domain);
  }

  /**
   * #varbase: To wait for seconds before going to the next step.
   *
   * Example 1:  And wait for "1" second
   * Example 2: When I wait for "5" seconds
   * Example 3:  And wait 1 second
   * Example 4: When I wait for 60 seconds
   * Example 5:  And wait 1s
   * Example 6: When I wait for 60s
   *
   * @When /^(?:|I )wait (?:|for )"(?P<seconds>\d+)" second(?:|s)$/
   * @When /^(?:|I )wait (?:|for )(?P<seconds>\d+) second(?:|s)$/
   * @When /^(?:|I )wait (?:|for )(?P<seconds>\d+)s$/
   */
  public function iWaitForSeconds($seconds) {
    $this->getSession()->wait($seconds * 1000);
  }

  /**
   * #varbase: To wait for minutes before going to the next step
   *
   * Example 1:  And I wait for "1" minute
   * Example 2: When I wait for "2" minutes
   * Example 3:  And wait 1 minute
   * Example 4: When I wait for 3 minutes
   * Example 5:  And wait 1m
   * Example 6: When I wait for 3m
   *
   * @When /^(?:|I )wait (?:|for )"(?P<minutes>\d+)" minute(?:|s)$/
   * @When /^(?:|I )wait (?:|for )(?P<minutes>\d+) minute(?:|s)$/
   * @When /^(?:|I )wait (?:|for )(?P<minutes>\d+)m$/
   */
  public function iWaitForMinutes($minutes) {
    $this->getSession()->wait($minutes * 60 * 1000);
  }

  /**
   * #varbase : I wait max of seconds for the page to be ready and loaded.
   *
   * Exmaple 1: And wait
   * Exmaple 2: And I wait
   * Example 3: And wait for the page
   * Example 4: And I wait for the page
   * Example 5: And wait max of 5 seconds
   * Example 6: And wait max of 5s
   * Example 7: And I wait max of 5s
   * Example 8: And I wait max of "5" seconds
   * Example 9: And I wait max of "5" seconds for the page to be ready and loaded
   *
   * @Given /^(?:|I )wait max of "(?P<time>\d+)" second(?:|s)(?:| for the page to be ready and loaded)$/
   * @Given /^(?:|I )wait max of (?P<time>\d+) second(?:|s)(?:| for the page to be ready and loaded)$/
   * @Given /^(?:|I )wait max of (?P<time>\d+)s(?:| for the page to be ready and loaded)$/
   * @Given /^(?:|I )wait(?:| for the page)$/
   *
   * @throws BehaviorException If timeout is reached
   */
  public function iWaitMaxOfSecondsForThePageToBeReadyAndLoaded($time = 10000) {
      if (!$this->getSession()->getDriver() instanceof Selenium2Driver) {
          return;
      }
      $start = microtime(true);
      $end = $start + $time / 1000.0;
      $defaultCondition = true;
      $conditions = [
          "document.readyState == 'complete'",           // Page is ready
          "typeof $ != 'undefined'",                     // jQuery is loaded
          "!$.active",                                   // No ajax request is active
          "$('#page').css('display') == 'block'",        // Page is displayed (no progress bar)
          "$('.loading-mask').css('display') == 'none'", // Page is not loading (no black mask loading page)
          "$('.jstree-loading').length == 0",            // Jstree has finished loading
      ];
      $condition = implode(' && ', $conditions);
      // Make sure the AJAX calls are fired up before checking the condition
      $this->getSession()->wait(100, false);
      $this->getSession()->wait($time, $condition);
      // Check if we reached the timeout unless the condition is false to explicitly wait the specified time
      if ($condition !== false && microtime(true) > $end) {
        throw new BehaviorException(sprintf('Timeout of %d reached when checking on %s', $time, $condition));
      }
  }

  // Editor Media Browser functions
  // ===========================================================================

  /**
   * #varbase : Click the editor media browser command button
   *
   * Example 1: When I click the editor media browser command button
   *
   * @When /^I click the editor media browser command button$/
   */
  public function iClickTheEditorMediaBrowserCommandButton() {
    $element = $this->getSession()->getPage();

    $editorMediaBrowserButton = $this->getSession()->getPage()->find('css', '.cke_button.cke_button__media');

    if (empty($editorMediaBrowserButton)) {
      throw new Exception('The editor media browser button dose not exist.');
    }

    $editorMediaBrowserButton->click();
  }

  /**
   * @Then /^the editor media browser should be open$/
   */
  public function theEitorMediaBrowserIsOpen() {
    if (!$elem = $this->getSession()->getPage()->find('css', '.ui-dialog.media-wrapper') || !$this->getSession()->getPage()->find('css', '.ui-dialog.media-wrapper .media-browser-panes')) {
      throw new Exception('The editor media browser failed to open.');
    }
  }

  /**
   * #varbase : To press a button in the filter form under the editor media browser.
   *
   * Example 1: When I press the "Apply" button under the editor media browser
   * Example 2: When I press the "Submit" button under the editor media browser
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
    $this->getSession()->switchToIFrame(null);
  }

  /**
   * #varbase : To click on a link or button under the editor media browser
   *
   * Example 1: When I click "Submit" button under the media browser
   * Example 2: When I click "Submit" under media browser
   * Example 3: When I click "Upload" under the media browser
   *
   * @When /^I click "([^"]*)" (?:|button )under (?:|the )editor media browser$/
   */
  public function iClickButtonUnderTheEditorMediaBrowser($text) {
    // Switch to the "mediaBrowser" iframe.
    $this->getSession()->switchToIFrame('entity_browser_iframe_editor_media_browser');

    // Find the Tab by txt
    $element = $this->getSession()->getPage()->find('xpath', "//*[contains(@class, 'button') and text() = '{$text}']");

    if (empty($element)) {
      throw new Exception('The editor media browser dose not have [ ' . $text . ' ] button.');
    }

    $element->click();

    // Switch back too the page from the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame(null);
  }

  /**
   * #varbase : To click on a tab under the editor media browser.
   *
   * Example 1: When I click on the "Library" tab under the editor media browser
   * Example 2: When I click on the "My files" tab under the editor media browser
   *
   * @When /^I click on the "([^"]*)" tab under the editor media browser$/
   */
  public function iClickOnTheTabUnderTheMediaBrowser($text) {
    // Switch to the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame('entity_browser_iframe_editor_media_browser');

    // Find the Tab by txt
    $element = $this->getSession()->getPage()->find('xpath', "//*[contains(@class, 'ui-tabs-anchor') and text() = '{$text}']");

    if (empty($element)) {
      throw new Exception('The editor media browser dose not have [ ' . $text . ' ] tab.');
    }

    $element->click();

    // Switch back too the page from the "mediaBrowser" iframe.
    $this->getSession()->switchToIFrame(null);
  }

  /**
   * #varbase : select the file under the editor media browser.
   *
   * Example 1: When I click on the "Flag Earth" file under the editor media browser
   *
   * @When /^I select (?:|the )"([^"]*)" file under (?:|the )editor media browser$/
   */
  public function iSelectTheFileUnderTheEditorMediaBrowser($text) {
    // Switch to the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame('entity_browser_iframe_editor_media_browser');

    // Find the file by text.
    $element = $this->getSession()->getPage()->find('xpath', "//div[contains(@class, 'media-item') and contains(@title, '{$text}')]");

    if (empty($element)) {
      throw new Exception('The editor media browser dose not have [ ' . $text . ' ] file.');
    }

    $element->click();

    // Switch back too the page from the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame(null);
  }

  /**
  * #varbase : To fill in a form field with id|name|title|alt|value
  *            under the editor media browser.
  *
  * Example: I fill in "flag earth" for "File name" under the editor media browser
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
    $this->getSession()->switchToIFrame(null);
  }


  /**
  * #varbase : To check if we can see a text
  *            under the editor media browser.
  *
  * Example 1: Then I should see "this text" under editor media browser
  * Example 2: Then I should see "this text" under the editormedia browser modal window
  *
  * @Then /^I should see "([^"]*)" under (?:|the )editor media browser(?:| modal window)$/
  */
  public function iShouldSeeTextUnderTheEditorMediaBrowser($text) {
    // Switch to the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame('entity_browser_iframe_editor_media_browser');

    $actual = $this->getSession()->getPage()->getText();
    $actual = preg_replace('/\s+/u', ' ', $actual);
    $regex = '/'.preg_quote($text, '/').'/ui';

    if (!preg_match($regex, $actual)) {
      throw new Exception(sprintf('The text "%s" was not found anywhere in the text of the current page.', $text));
    }

    // Switch back too the page from the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame(null);
  }


  /**
   * #varbase : To Find an image with the title text attribute.
   *
   * Example 1: Then I should see image with the "Flag Earth" title text
   *
   * @Then /^I should see image with the "([^"]*)" title text under (?:|the )editor media browser(?:| modal window)$/
   */
  public function iShouldSeeImageWithTheTitleTextUnderTheEditorMediaBrowser($titleText) {
    // Switch to the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame('entity_browser_iframe_editor_media_browser');

    // Find an image with the title.
    $element = $this->getSession()->getPage()->find('xpath', "//img[contains(@title, '{$titleText}')]");

    if (empty($element)) {
      throw new Exception('The editor media browser dose not have an image with the [ ' . $titleText . ' ] title text.');
    }

    // Switch back too the page from the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame(null);
  }

   /**
   * #varbase : To check if we can NOT see a text
   *            under the editor media browser.
   *
   * Example 1: Then I should not see "this text" under editor media browser
   * Example 2: Then I should not see "this text" under the editor media browser modal window
   *
   * @Then /^I should not see "([^"]*)" under (?:|the )editor media browser(?:| modal window)$/
   */
  public function iShouldNotSeeTextUnderTheeEitorMediaBrowser($text) {
    // Switch to the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame('entity_browser_iframe_editor_media_browser');

    $actual = $this->getSession()->getPage()->getText();
    $actual = preg_replace('/\s+/u', ' ', $actual);
    $regex = '/'.preg_quote($text, '/').'/ui';

    if (preg_match($regex, $actual)) {
      throw new Exception(sprintf('The text "%s" was not found anywhere in the text of the current page.', $text));
    }

    // Switch back too the page from the "entity_browser_iframe_editor_media_browser" iframe.
    $this->getSession()->switchToIFrame(null);
  }
  // ===========================================================================


  // Rich text editor Functions CKEditor.
  // ===========================================================================

  /**
  * #varbase : To fill in a rich text editor field  WYSIWYG with content
  *            using the name of the field.
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
      $iFreamID = $this->_getAttributeByOtherAttributeValue('id', 'title', "Rich Text Editor, ". $el->getAttribute('id'), 'iframe');
      if (!empty($iFreamID)) {
        $fieldId = $iFreamID;
      }
    }


    if (empty($fieldId)) {
      throw new Exception('Could not find an id for the rich text editor field : ' . $locator);
    }

    $this->getSession()->executeScript("CKEDITOR.instances[\"$fieldId\"].setData(\"$value\");");
  }

  /**
   * #varbase : To click a command button in the rich text editor
   *  Example 1: When I click on "bold" command button in the rich text editor field "Body"
   *  Exmaple 2: When I click on "media" command button in the rich text editor field "Body"
   *
   * @When /^I click on "([^"]*)" command button in the rich text editor field "([^"]*)"$/
   */
  public function iClickOnCommandButtonInTheRichTextEditorField($selectorCommand, $locator) {

    $el = $this->getSession()->getPage()->findField($locator);
    $fieldId = $el->getAttribute('id');

    if (empty($fieldId)) {
      throw new Exception('Could not find an id for the rich text editor field : ' . $locator);
    }

    $this->getSession()->executeScript("CKEDITOR.instances[\"$fieldId\"].execCommand( '$selectorCommand' );");

  }

  /**
  * #varbase : To append text at the end of a rich text editor field  WYSIWYG with content
  *            using the name of the field.
  *
  *  Example #1: When I append after the rich text editor field "Body" with "Test Body text"
  *  Example #2: When I append the rich text editor field "Body" with "Test Body text"
  *
  * @When /^(?:|I )append(?:| after) the rich text editor field "([^"]*)" with "([^"]*)"$/
  */
  public function appendTheRichTextEditorField($locator, $value) {
    $el = $this->getSession()->getPage()->findField($locator);
    $fieldId = $el->getAttribute('id');

    if ($fieldId == NULL) {
      // If the WYSIWYG is in an ifream with no id.
      $iFreamID = $this->_getAttributeByOtherAttributeValue('id', 'title', "Rich Text Editor, ". $el->getAttribute('id'), 'iframe');
      if (!empty($iFreamID)) {
        $fieldId = $iFreamID;
      }
    }


    if (empty($fieldId)) {
      throw new Exception('Could not find an id for the rich text editor field : ' . $locator);
    }

    $this->getSession()->executeScript("CKEDITOR.instances[\"$fieldId\"].setData(CKEDITOR.instances[\"$fieldId\"].getData()+\"$value\");");
  }

  /**
  * #varbase : To add append text at the end of a rich text editor field  WYSIWYG with content
  *            using the name of the field.
  *
  *  Example #1: When I prepend before the rich text editor field "Body" with "Test Body text"
  *  Example #2: When I prepend the rich text editor field "Body" with "Test Body text"
  *
  * @When /^(?:|I )prepend(?:| before) the rich text editor field "([^"]*)" with "([^"]*)"$/
  */
  public function prependTheRichTextEditorField($locator, $value) {
    $el = $this->getSession()->getPage()->findField($locator);
    $fieldId = $el->getAttribute('id');

    if ($fieldId == NULL) {
      // If the WYSIWYG is in an ifream with no id.
      $iFreamID = $this->_getAttributeByOtherAttributeValue('id', 'title', "Rich Text Editor, ". $el->getAttribute('id'), 'iframe');
      if (!empty($iFreamID)) {
        $fieldId = $iFreamID;
      }
    }


    if (empty($fieldId)) {
      throw new Exception('Could not find an id for the rich text editor field : ' . $locator);
    }

    $this->getSession()->executeScript("CKEDITOR.instances[\"$fieldId\"].setData(\"$value\"+CKEDITOR.instances[\"$fieldId\"].getData());");
  }

  /**
   * #vardot : Move the focus to selected rich text editor field.
   *
   * Example #1: When I move focus to "Title" rich text editor field
   * Example #2:  And I move focus to "Body" rich text editor field
   *
   * @When /^(?:|I )move focus to "(?P<selectedField>[^"]*)" rich text editor field$/
   */
  function moveFocusToTheRichTextEditorField($selectedField) {
    $el = $this->getSession()->getPage()->findField($selectedField);
    $fieldid = $el->getAttribute('id');

    if (empty($fieldid)) {
     throw new Exception('Could not find an id for the rich text editor field : ' . $selectedField);
    }

   $this->getSession()->getDriver()->evaluateScript("CKEDITOR.instances[\"$fieldid\"].focus();");
  }

  /**
  * #vardot : Select all text in selected field input element.
  *
  * Example #1: When I select all text in "Body" field
  * Example #2:  And I select all text in "Body" field
  *
  * @When /^(?:|I )select all text in "(?P<selectedField>[^"]*)" rich text editor field$/
  */
  function selectAllTextInTheRichTextEditorField($selectedField) {
    $el = $this->getSession()->getPage()->findField($selectedField);
    $fieldid = $el->getAttribute('id');

    if (empty($fieldid)) {
     throw new Exception('Could not find an id for the rich text editor field : ' . $selectedField);
    }

   $this->getSession()->getDriver()->evaluateScript("CKEDITOR.instances[\"$fieldid\"].execCommand('selectAll', false, null);");
   $this->getSession()->getDriver()->evaluateScript("CKEDITOR.instances[\"$fieldid\"].forceNextSelectionCheck();");
   $this->getSession()->getDriver()->evaluateScript("CKEDITOR.instances[\"$fieldid\"].selectionChange();");

  }

  // ===========================================================================



  // Images Functions.
  // ===========================================================================

  /**
   * #varbase : To Find an image with the title text attribute.
   *
   * Example 1: Then I should see image with the "Flag Earth" title text
   *
   * @Then /^I should see image with the "([^"]*)" title text$/
   */
  public function iShouldSeeImageWithTheTitleText($titleText) {
    // Find an image with the title.
    $element = $this->getSession()->getPage()->find('xpath', "//img[contains(@title, '{$titleText}')]");

    if (empty($element)) {
      throw new Exception('The page dose not have an image with the [ ' . $titleText . ' ] title text.');
    }
  }

  /**
   * #varbase : To Find an image with the alt text attribute.
   *
   * Example 1: Then I should see image with the "Flag Earth" alt text
   *
   * @Then /^I should see image with the "([^"]*)" alt text$/
   */
  public function iShouldSeeImageWithTheAltText($altText) {
    // Find an image with the title.
    $element = $this->getSession()->getPage()->find('xpath', "//img[contains(@alt, '{$altText}')]");

    if (empty($element)) {
      throw new Exception('The page dose not have an image with the [ ' . $altText . ' ] Alt Text.');
    }
  }

    /**
    * #varbase: To double click on an image with the provided title.
    *
    * Example 1: I double on the image with the "Flag Earth image title" title text
    *
    * @Given /^I double click on the image with the "([^"]*)" title text$/
    */
   public function iDoubleClickOnTheImageWithTheTitleText($titleText) {
     // Find an image with the title.
     $element = $this->getSession()->getPage()->find('xpath', "//img[contains(@title, '{$titleText}')]");

     if (empty($element)) {
       throw new Exception('The page dose not have an image with the [ ' . $titleText . ' ] title text.');
     }

     // Double click on the image.
     $element->doubleClick();
   }

   /**
   * #varbase: To click on an image with the provided title.
   *
   * Example 1: I click on the image with the "Flag Earth image title" title text
   *
   * @Given /^I click on the image with the "([^"]*)" title text$/
   */
  public function iClickOnTheImageWithTheTitleText($titleText) {
     // Find an image with the title.
     $element = $this->getSession()->getPage()->find('xpath', "//img[contains(@title, '{$titleText}')]");

     if (empty($element)) {
       throw new Exception('The page dose not have an image with the [ ' . $titleText . ' ] title text.');
     }

    // Click on the image.
    $element->click();
  }


  /**
   * #varbase: To double click on an image with the provided  alt Text.
   *
   * Example 1: I double click on the image with the "Flag Earth image title" alt text
   *
   * @Given /^I double click on the image with the "([^"]*)" alt text$/
   */
  public function iDoubleClickOnTheImageWithTheAltText($altText) {
    // Find an image with the title.
    $element = $this->getSession()->getPage()->find('xpath', "//img[contains(@alt, '{$altText}')]");

    if (empty($element)) {
      throw new Exception('The page dose not have an image with the [ ' . $altText . ' ] alt text.');
    }

    // Double click on the image.
    $element->doubleClick();
  }

   /**
   * #varbase: To click on an image with the provided alt.
   *
   * Example 1: I click on the image with the "Flag Earth image title" alt text
   *
   * @Given /^I click on the image with the "([^"]*)" alt text$/
   */
  public function iClickOnTheImageWithTheAltText($titleText) {
    // Find an image with the title.
    $element = $this->getSession()->getPage()->find('xpath', "//img[contains(@title, '{$altText}')]");

    if (empty($element)) {
      throw new Exception('The page dose not have an image with the [ ' . $altText . ' ] title text.');
    }

    // click on the image.
    $element->click();
  }

  /**
   * #varbase : To Find an image with the title text attribute
   *            under a custom iframe.
   *
   * Example 1: Then I should see image with the "Flag Earth" title text in the rich text editor field "Body"
   *
   * @Then /^I should see image with the "([^"]*)" title text in the rich text editor field "([^"]*)"$/
   */
  public function iShouldSeeImageWithTheTitleTextInTheRichTextEditorField($titleText, $locator) {

    $el = $this->getSession()->getPage()->findField($locator);
    $fieldId = $el->getAttribute('id');

    if (empty($fieldId)) {
      throw new Exception('Could not find an id for the rich text editor field : ' . $locator);
    }

    $CKEditorContent = $this->getSession()->executeScript("return CKEDITOR.instances[\"$fieldId\"].getData();");


    // Switch to the iframe.
    $iFreamID = $this->_getAttributeByOtherAttributeValue('id', 'title', $filedName, 'iframe');
    $this->getSession()->switchToIFrame($iFreamID);

    // Find an image with the title.
    $element = $this->getSession()->getPage()->findAll('xpath', "//img[contains(@title, '{$titleText}')]");

    if (empty($element)) {
      throw new Exception('The page dose not have an image with the [ ' . $titleText . ' ] title text under [ '. $filedName .' ].');
    }

    // Switch back too the page from the iframe.
    $this->getSession()->switchToIFrame(null);
  }

  /**
   * #varbase : To Find an image with the alt text attribute.
   *            under a custom iframe.
   *
   * Example 1: Then I should see image with the "Flag Earth" alt text in the rich text editor field "Body"
   *
   * @Then /^I should see image with the "([^"]*)" alt text in the rich text editor field "([^"]*)"$/
   */
  public function iShouldSeeImageWithTheAltTextUnder($altText, $filedName) {
    // Switch to the iframe.
    $iFreamID = $this->_getAttributeByOtherAttributeValue('id', 'title', $filedName, 'iframe');
    $this->getSession()->switchToIFrame($iFreamID);

    // Find an image with the title.
    $element = $this->getSession()->getPage()->find('xpath', "//img[contains(@alt, '{$altText}')]");

    if (empty($element)) {
      throw new Exception('The page dose not have an image with the [ ' . $altText . ' ] Alt Text under [ '. $filedName .' ].');
    }

    // Switch back too the page from the iframe.
    $this->getSession()->switchToIFrame(null);
  }

  // ===========================================================================

  // Mouse Functions.
  // ===========================================================================
   /**
   * #varbase: To move the mouse over an element.
   *
   * Example: When I move the mouse over "header#navbar #main_menu ul.nav li a"
   *
   * @When /^I move the mouse over the "([^"]*)"$/
   */
  public function iMouseOver($selector) {
    $elem = $this->getSession()->getPage()->find('css', $selector);
    if ($elem) {
      $elem->mouseOver();
    }
    else {
      throw new Exception("No element matching \"$selector\" is found.");
    }
  }

  /**
  * #varbase: To double click on an element.
  *
  * Example: When I move the mouse over "#select .option-switch"
  *
  * @When /^I double click "([^"]*)"$/
  */
  public function iDoubleClick($selector) {
    $elem = $this->getSession()->getPage()->find('css', $selector);
    if ($elem) {
     $elem->doubleClick();
    }
    else {
     throw new Exception("No element matching \"$selector\" is found.");
    }
  }

  /**
  * #varbase: To right click on an element.
  *
  * Example: When I move the mouse over "#right-click-to-configure a"
  *
  * @When /^I right click "([^"]*)"$/
  */
  public function iRightClick($selector) {
    $elem = $this->getSession()->getPage()->find('css', $selector);
    if ($elem) {
      $elem->rightClick();
    }
    else {
      throw new Exception("No element matching \"$selector\" is found.");
    }
  }
  // ===========================================================================

  /**
  * #varbase: To check if we do have the text in the selected element.
  *
  * Example 1: And I should see "your text" in the "ol" element with the "class" attribute set to "breadcrumb"
  * Example 2: And I should see "your text" in the "div" element with the "id" attribute set to "right-panel"
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
      $regex = '/'.preg_quote($text, '/').'/ui';

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
  * #varbase: To click on the text in the selected element.
  *
  * Example 1: And I click "your text" in the "ol" element with the "class" attribute set to "breadcrumb"
  * Example 2: And I click "your text" in the "div" element with the "id" attribute set to "right-panel"
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
      $regex = '/'.preg_quote($text, '/').'/ui';

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
  * #varbase: To check if we do have a text in the input element.
  *
  * Example 1: And I should see "your text" value in the "edit-items-2-target-id" input element
  * Example 2: And I should see "Location property" value in the "edit-name" input element
  *
 * @Then /^I should see "(?P<text>[^"]*)" value in the "(?P<selector>[^"]*)" input element$/
  */
  public function iShouldSeeValueInTheInputElement($text, $selector) {

    $elements = $this->getSession()->getPage()->findAll('xpath', "//input[@id='{$selector}']");
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
  * #varbase: To check if we do have the text in the selected panel region.
  *           using the code name of the panel region. or the html id.
  *
  * Example 1: Then I should see "Add new pane" in the "Center" panel region
  * Example 2: Then I should see "custom pane title" in the "Right side" panel region
  * Example 3: Then I should see "Add new pane" in the "panels-ipe-regionid-center" panel region
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
      throw new Exception('The panle region [ ' . $panleRegion . ' ] is not in the page.');
    }

    $element = $this->getSession()->getPage()->find('xpath', "//*[contains(@id, '{$panleRegionId}')]//*[text()='{$text}']");
    if (empty($element)) {
      throw new Exception('The panle region "' . $panleRegion . '" dose not have "'. $text .'" in it.');
    }
  }

  /**
  * #varbase: To check if we do not have the text in the selected panel region.
  *           using the code name of the panel region. or the html id.
  *
  * Example 1: Then I should not see "Add new pane" in the "Center" panel region
  * Example 2: Then I should not see "custom pane title" in the "Right side" panel region
  * Example 3: Then I should not see "Add new pane" in the "panels-ipe-regionid-center" panel region
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
      throw new Exception('The panle region [ ' . $panleRegion . ' ] is not in the page.');
    }

    $element = $this->getSession()->getPage()->find('xpath', "//*[contains(@id, '{$panleRegionId}')]//*[text()='{$text}']");
    if (!empty($element)) {
      throw new Exception('The panle region "' . $panleRegion . '" dose have "'. $text .'" in it.');
    }
  }

  /**
  * #varbase: To click on the text in the selected panel region.
  *           using the code name of the panel region. or the html id.
  *
  *
  * Example 1: When I click "Add new pane" in the "center" panel region
  * Example 2: When I click "Region style" in the "left" panel region
  * Example 3: When I click "Add new pane" in the "panels-ipe-regionid-center" panel region
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
      throw new Exception('The panle region [ ' . $panleRegion . ' ] is not in the page.');
    }

    $element = $this->getSession()->getPage()->find('xpath', "//*[contains(@id, '{$panleRegionId}')]//*[text()='{$text}']");
    if (empty($element)) {
      throw new Exception('The panle region "' . $panleRegion . '" dose not have "'. $text .'".');
    }

    $element->click();
  }

  // Alert Functions.
  // ===========================================================================

  /**
  * #varbase: To accept alert if present.
  *
  * Example 1: When I accept alert
  * Example 2: And accept alert
  *
  * @when /^(?:|I )accept alert$/
  */
  public function acceptAlert() {
    try {
      $this->getSession()->getDriver()->getWebDriverSession()->accept_alert();
    } catch(\WebDriver\Exception $e) {
      // no-op, alert might not be present
    }
  }

  /**
  * #varbase: To dismiss alert if present.
  *
  * Example 1: When I dismiss alert
  * Example 2: And dismiss alert
  *
  * @when /^(?:|I )dismiss alert$/
  */
  public function iDismissAlert() {
    try {
      $this->getSession()->getDriver()->getWebDriverSession()->dismiss_alert();
    } catch(\WebDriver\Exception $e) {
      // no-op, alert might not be present
    }
  }

  /**
  * #varbase: To print the text of the current alert message.
  *
  * Example 1: When I print alert text
  * Example 2: And print alert text
  *
  * @When /^(?:|I ) print alert text$/
  */
  public function iPrintAlertText() {
    try {
      return $this->getSession()->getDriver()->getWebDriverSession()->getAlert_text();
    } catch(\WebDriver\Exception $e) {
      // no-op, alert might not be present
    }
  }


  /**
  * #varbase: To fill a text in the alert message.
  *
  * Example 1: When I fill "See this alert" in alert
  * Example 2:  And fill "See this text" in alert
  *
  * @When /^(?:|I )fill "(?P<text>[^"]*)" in alert$/
  */
  public function iFillInAlert($message) {
    try {
      $this->getSession()->getDriver()->getWebDriverSession()->postAlert_text($message);
    } catch(\WebDriver\Exception $e) {
      // no-op, alert might not be present
    }
  }
  // ===========================================================================

  /**
   * #WIP#vardot: To press a modifier and other key
   *          Modifier options: { ctrl, shift, alt }
   *          Key options:
   *
   * Example #1: When I press "ctrl" and "v"
   * Example #2: When I press "alt" and "f"
   * Example #3: When I press "ctrl" and "r"
   *
   * @When I press :modifier and :key in :field field
   */
  public function iPressModifierAndKeys($modifier, $key, $field) {

      static $keys = array(
        'backspace' => 8,
        'tab' => 9,
        'enter' => 13,
        'shift' => 16,
        'ctrl' =>  17,
        'alt' => 18,
        'pause' => 19,
        'break' => 19,
        'escape' =>  27,
        'esc' =>  27,
        'end' => 35,
        'home' =>  36,
        'left' => 37,
        'up' => 38,
        'right' =>39,
        'down' => 40,
        'insert' =>  45,
        'delete' =>  46,
        'pageup' => 33,
        'pagedown' => 34,
        'capslock' => 20,
      );

      static $modifiers = array(
        'shift' => 16,
        'ctrl' =>  17,
        'alt' => 18,
      );

      $key = is_numeric($key) ? $key : ord($key);
      $isCtrlKeyArg  = ($modifier == 'ctrl')  ? "true" : "false";
      $isAltKeyArg   = ($modifier == 'alt')   ? "true" : "false";
      $isShiftKeyArg = ($modifier == 'shift') ? "true" : "false";
      $isMetaKeyArg  = ($modifier == 'meta')  ? "true" : "false";

      // Validate the modifier keys.
      if (is_string($modifier)) {
        if (strlen($modifier) < 1) {
          throw new \Exception('Modifier parameter was empty. one of \'shift\', \'alt\', \'ctrl\'');
        }
        elseif (strlen($modifier) > 1) {
          // one of 'shift', 'alt', 'ctrl'.
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
	 * Accept Alerts Before going to the next step.
	 *
   *  @BeforeStep @AcceptAlertsBeforStep
   */
   public function beforeStepAcceptAlert(BeforeStepScope $scope) {
    try {
    	$this->getSession()->getDriver()->getWebDriverSession()->accept_alert();
    } catch(\WebDriver\Exception $e) {
    	// no-op, alert might not be present
    }
	 }

  /**
	 * Accept Alerts After going to the next step.
	 *
   *  @AftereStep @AcceptAlertsAfterStep
   */
   public function afterStepAcceptAlert(AfterStepScope $scope) {
      try {
      	$this->getSession()->getDriver()->getWebDriverSession()->accept_alert();
      } catch(\WebDriver\Exception $e) {
      	// no-op, alert might not be present
      }
	 }

   /**
    * Accept Alerts Before going to the next step.
    *
    *  @BeforeStep @AcceptAlertsBeforStep
    */
    public function beforeStepDismissAlert(BeforeStepScope $scope) {
     try {
       $this->getSession()->getDriver()->getWebDriverSession()->dismiss_alert();
     } catch(\WebDriver\Exception $e) {
       // no-op, alert might not be present
     }
    }

   /**
    * Accept Alerts After going to the next step.
    *
    *  @AftereStep @DismissAlertsAfterStep
    */
    public function afterStepDismissAlert(AfterStepScope $scope) {
       try {
         $this->getSession()->getDriver()->getWebDriverSession()->dismiss_alert();
       } catch(\WebDriver\Exception $e) {
         // no-op, alert might not be present
       }
   }

  /**
  * #varbase: To fill a text in the alert message.
  *
  * Example 1: Given I drag and drop ".element-item" to ".target"
  * Example 2: When I drag and drop "#panels-ipe-regionid-left .panels-ipe-portlet-wrapper" to "#panels-ipe-regionid-center .panels-ipe-sort-container"
  *
  * @Given /^I drag and drop "([^"]*)" to "([^"]*)"$/
  */
  public function iDragAndDropTo($draggedElement, $targetElement) {

    $dragged = $this->getSession()->getPage()->find('css', $draggedElement);
    if (empty($dragged)) {
     throw new Exception('The selected dragged element [ ' . $draggedElement . ' ] is not in the page.');
    }

    $target = $this->getSession()->getPage()->find('css', $targetElement);
    if (empty($target)) {
      throw new Exception('The selected target element [ ' . $targetElement . ' ] is not in the page.');
    }

    $this->getSession()->getDriver()->evaluateScript("jQuery('{$draggedElement}').detach().prependTo('{$targetElement}');");

  }

  /**
  * #varbase: To select a radio button.
  *
  * Example 1: When I select the "Male" radio button
  *
  * @When /^I select the "([^"]*)" radio button$/
  */
  public function iSelectTheRadioButton($labelText) {
      // Find the label by its text, then use that to get the radio item's ID
      $radioId = null;

      /** @var $label NodeElement */
      foreach ($this->getSession()->getPage()->findAll('css', 'label') as $label) {
          if ($labelText === $label->getText()) {
              if ($label->hasAttribute('for')) {
                  $radioId = $label->getAttribute('for');
                  break;
              } else {
                  throw new \Exception("Radio button's label needs the 'for' attribute to be set");
              }
          }
      }
      if (!$radioId) {
          throw new \InvalidArgumentException("Label '$labelText' not found.");
      }

      // Now use the ID to retrieve the button and click it
      /** @var NodeElement $radioButton */
      $radioButton = $this->getSession()->getPage()->find('css', "#$radioId");
      if (!$radioButton) {
          throw new \Exception("$labelText radio button not found.");
      }

      $this->getSession()->getPage()->fillField($radioId, $radioButton->getAttribute('value'));
  }

   /**
   * #varbase: To click on the label with the for attribute value linked to
   *           to the an ID of a radio button with a value to select the radio option
   *           we need to use this when we do have a list of radio buttons
   *           but we do have the label with extra HTML tags like images or the
   *           actual radio button is hidden.
   *
   * Example 1: I click on the radio label for "right_sidebar_layout" value
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
   * #varbase: To expand a field group by its id attribute.
   *
   * Example #1: I expand the field "Field Group ID"
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
   * #varbase: To expand a select list by it's class attribute.
   *
   * Example #1: I expand the "1" select list "dropbutton-multiple"
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
   * #varbase: To scroll down in the current status of the page.
   *
   * Example #1: When I scrolldown
   * 
   * @When I scrolldown
   */
  public function iScrolldown() {
    $this->getSession()->executeScript("javascript:window.scrollBy(200,350)");
  }

  /**
   * #varbase: To scroll up in the current status of the page, about 350 up
   *
   * Example #1: When I scrollup
   * 
   * @When I scrollup
   */
  public function iScrollup() {
    $this->getSession()->executeScript("javascript:window.scrollBy(0,-350)");
  }

  /**
   * #varbase: To check if the Image media browser opened.
   * 
   * Example : Then the image media browser should be open
   *
   * @Then /^the image media browser should be open$/
   */
  public function theImageMediaBrowserIsOpen() {
    if (!$elem = $this->getSession()->getPage()->find('css', '.ui-dialog.ui-widget-content')) {
      throw new Exception('The image media browser failed to open.');
    }
  }
  
  /**
   * #varbase: To find an element with a selected index having the
   *           first attribute, and check if it's have the second one.
   * 
   * Example #1: Then I should see the "1" "wrapper" with "align2right" class
   *
   * @Then I should see the :nth :arg1 with :arg2 class
   */
  public function iShouldSeeTheElementWithTheIndexHavingTheAttribute($index, $wrapper, $position) {
    $items = $this->getSession()->getPage()->findAll('css', '.' . $wrapper);
    $item = $items[$index]->find('css', '.' . $wrapper . '.' . $position);
    if (!$item) {
      throw new Exception("The image position is wrong");
    }
  }


  public function cleanUsers() {

  }

  /**
   * Helper function to let you get the value of an attribute name for
   * an HTML tag by other Attribute name and value
   *
   * @param  string $attributeName       The attribute name.
   * @param  string $otherAttributeName  other attribute name.
   * @param  string $otherAttributeValue other attribute value.
   * @param  string $htmlTagName         the HTML tag name you are filtring with.
   * @return string                      Attribute value for the first matching element.
   */
  private function _getAttributeByOtherAttributeValue($attributeName, $otherAttributeName, $otherAttributeValue, $htmlTagName = "*") {
    $element = $this->getSession()->getPage()->find('xpath', "//{$htmlTagName}[contains(@{$otherAttributeName}, '{$otherAttributeValue}')]");
    return $element->getAttribute($attributeName);
  }

  /**
   *  Helper function to update a selected element id attribute by css.
   * @param  string $htmlTagCSS
   * @param  string $htmlTagID
   * @param  string $prefix
   */
  private function _updateIDByCSS($htmlTagCSS, $htmlTagID, $prefix = '') {
    $this->getSession()->getDriver()->evaluateScript('jQuery("' . $htmlTagCSS . '").attr("id", "'. $prefix . $htmlTagID. '");');
  }

  /**
   * Helper function to add an ID to an IFream.
   * @param string $fieldid field id in drupal.
   * @param string $prefix  a prefix which needed for the id.
   */
  private function _addIDtoIFrame($fieldid, $prefix = "ifream-") {
    // If the WYSIWYG is in an ifream with no id.
    $iFreamID = $this->_getAttributeByOtherAttributeValue('id', 'title', "Rich Text Editor, ". $fieldid, 'iframe');
    if (empty($iFreamID)) {
      $ifreamcss = $this->_getAttributeByOtherAttributeValue('class', 'title', "Rich Text Editor, ". $fieldid, 'iframe');
      $ifreamcss = str_replace(" ", ".", $ifreamcss);
      if (strpos($ifreamcss, ".") > 1) {
        $ifreamcss = '.' . $ifreamcss;
      }
      $this->_updateIDByCSS($ifreamcss, $fieldid, $prefix);
    }
  }

  /**
   * Maximize the window before scenario.
   *
   * @BeforeStep @javascript
   */
  public function beforeStepMaximizeWindow() {
    $this->getSession()->getDriver()->maximizeWindow();
  }

}
