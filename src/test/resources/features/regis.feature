@regis
  Feature: smoke-step
    @Registration
    Scenario: Registration
      Given I open url "http://ask-stage.portnov.com"
      Then I wait for 3 sec
      Then I click on element with xpath "//a[@href='#/registration']"
      Then I wait for 3 sec
      Then I type "Riana" into element with xpath "//input[@formcontrolname='firstName']"
      Then I type "gi" into element with xpath "//input[@formcontrolname='lastName']"
      Then I type "Riana1@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      Then I type "RRR" into element with xpath "//input[@formcontrolname='group']"
      Then I type "rianag" into element with xpath "//input[@formcontrolname='password']"
      Then I type "rianag" into element with xpath "//input[@formcontrolname='confirmPassword']"
      Then I click on element with xpath "//button[@type='submit']"
      Then I confirm user account with email "Riana@gmail.com"
      Then I wait for 3 sec

      @scq
      Scenario: test scenario scq
        Given I open url "http://ask-stage.portnov.com"
        Then I wait for 3 sec
        Then I type "Teacher79@enoiv.com" into element with xpath "//input[@formcontrolname='email']"
        Then I type "Roseb1" into element with xpath "//input[@formcontrolname='password']"
        Then I click on element with xpath "//button[@type='submit']"
        Then I wait for element with xpath "//h5[contains(text(),'Quizzes')]" to be present
        Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
        Then I wait for element with xpath "//span[contains(text(),'Create New Quiz')]/.." to be present
        Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]/.."
        Then I wait for 2 sec
        Then I type "newscq" into element with xpath "//input[@formcontrolname='name']"
        Then I click on element with xpath "(//button[@type='button'])[3]"
        Then I click on element with xpath "(//*[@class='mat-radio-outer-circle'])[2]/.."
        Then I wait for element with xpath "//textarea[@formcontrolname='question']" to be present
        Then I type "automation tool" into element with xpath "//textarea[@formcontrolname='question']"
        Then I wait for element with xpath "//textarea[@formcontrolname='option']" to be present
        Then I type "jira" into element with xpath "//textarea[@formcontrolname='option']"
#       Then I wait for element with xpath "(//textarea[@formcontrolname='option'])[2]" to be present
#       Then I type "intellij" into element with xpath "//textarea[@placeholder='Option 2*']"
        Then I type "Intellij" into element with xpath "(//textarea[@formcontrolname='option'])[2]"
#       Then I wait for element with xpath "(//*[@class='mat-radio-outer-circle'])[5]/.." to be present
        Then I click on element with xpath "(//*[@class='mat-radio-outer-circle'])[5]/.."
#       Then I wait for element with xpath "//span[contains(text(),'Save')]" to be present
        Then I click on element with xpath "//span[contains(text(),'Save')]"
        Then I wait for 5 sec

    @test-scenario
    Scenario: Test scenario for xpath validations
      Given I open url "http://ask-stage.portnov.com"
      Then I type "Teacher79@enoiv.com" into element with xpath "//*[@formcontrolname='email']"
      Then I type "Roseb1" into element with xpath "//*[@formcontrolname='password']"
      And I click on element with xpath "//button[@type='submit']"
      And I wait for element with xpath "//h5[contains(text(), 'Quizzes')]" to be present
      And I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
      And I wait for element with xpath "//button/span[contains(text(), 'Create New Quiz')]" to be present
      And I click on element with xpath "//button/span[contains(text(), 'Create New Quiz')]"
      And I wait for element with xpath "//input[@formcontrolname='name']" to be present
      And I type "Testquiz1" into element with xpath "//input[@formcontrolname='name']"
      And I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../.."
      And I click on element with xpath "//mat-radio-button[3]"
      And I type "Testquestion1" into element with xpath "//textarea[@formcontrolname='question']"
      And I wait for 1 sec
      And I click on element with xpath "(//textarea[@formcontrolname='option'])[1]/../../../../..//input[@type='checkbox']/.."
      And I type "Option 1" into element with xpath "(//textarea[@formcontrolname='option'])[1]"
      And I type "Option 2" into element with xpath "(//textarea[@formcontrolname='option'])[2]"
      And I create 5 options
      And I choose 5 as correct option
      And I move question slider 3 step to the "Right"
      Then I wait for 3 sec

      @groupcode
      Scenario: group code assign
        Given I open url "http://ask-stage.portnov.com"
        Then I type "Teacher79@enoiv.com" into element with xpath "//*[@formcontrolname='email']"
        Then I type "Roseb1" into element with xpath "//*[@formcontrolname='password']"
        And I click on element with xpath "//button[@type='submit']"
        And I wait for element with xpath "//h5[contains(text(),'Assignments')]" to be present
        And I click on element with xpath "//h5[contains(text(),'Assignments')]"
        Then I wait for 2 sec
        And I click on element with xpath "//button/span[contains(text(),'Create New Assignment')]"
        Then I wait for 2 sec
        And I click on element with xpath "//*[@formcontrolname='groupFilter']/.."
        Then I wait for 2 sec
        And I scroll to the element with xpath "//mat-option/span[contains(text(),'555')]" with offset 2
        And I click on element with xpath "//mat-option/span[contains(text(),'555')]"
        Then I wait for 2 sec
        Then I click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]"
        And I scroll to the element with xpath "//span[contains(text(),'newscq1')]" with offset 2
        And I click on element with xpath "//span[contains(text(),'newscq1')]"
        And I click on element with xpath "//span[contains(text(),'Select All')]"
        And I wait for element with xpath "//button/span[contains(text(),'Give Assignment')]" to be present
        And I click on element with xpath "//button/span[contains(text(),'Give Assignment')]"
        And I wait for element with xpath "//h4[contains(text(),'List of Assignments')]" to be present
#        And I scroll to the element with xpath "//mat-panel-title[contains(string(),'Assignment Date: 12/27/23')]" with offset 1
        And I scroll to the element with xpath "//span[contains(string(),'Assignment Date: 12/27/23')]" with offset 2
        Then I wait for 2 sec
        Then I click on element with xpath "//span[contains(string(),'Assignment Date: 12/27/23')]"


       @Settings
       Scenario: Settings accepts alphanum
         Given I open url "http://ask-stage.portnov.com"
         Then I type "Student3@enoiv.com" into element with xpath "//*[@formcontrolname='email']"
         Then I type "Roseb1" into element with xpath "//*[@formcontrolname='password']"
         And I click on element with xpath "//button[@type='submit']"
         Then I wait for element with xpath "//h3[contains(text(),'Tulip')]" to be present
         Then element with xpath "//h3[contains(text(),'Tulip')]" should be displayed
         Then I scroll to the element with xpath "//h5[contains(text(),'Settings')]" with offset 4
         Then I click on element with xpath "//h5[contains(text(),'Settings')]"
         And I wait for element with xpath "//h4[contains(text(),'Settings')]/.." to be present
         Then I click on element with xpath "//button/span[contains(text(),'Change Your Name')]/.."
         And I wait for element with xpath "//mat-dialog-container[@role='dialog']" to be present
         Then I click on element with xpath "//input[@formcontrolname='name']" 
         And I clear element with xpath "//input[@formcontrolname='name']"
         Then I type "Tulips" into element with xpath "//input[@formcontrolname='name']"
         Then I wait for 2 sec
         #And I click on element with xpath "//button[@aria-label='Close dialog'][2]"
         And I click on element with xpath "//*[text()='Change']"
         Then I wait for 20 sec
#         And element with xpath "//td[contains(text(),'Tulip')]" should be displayed
         And element with xpath "//h4[contains(text(),'Settings')]/.." should contain text "Tulips"
         And I wait for 2 sec

        

      














