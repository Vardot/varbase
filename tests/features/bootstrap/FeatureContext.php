<?php

/**
 * @file
 * Contains \FeatureContext.
 */

use Drupal\DrupalExtension\Context\RawDrupalContext;
use Behat\Behat\Context\SnippetAcceptingContext;

/**
 * Defines application features from the specific context.
 */
class FeatureContext extends RawDrupalContext implements SnippetAcceptingContext {

  /**
   * #varbase : To authenticat a user with a gavin username and password on the spot.
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
   public function logout() {
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
}
