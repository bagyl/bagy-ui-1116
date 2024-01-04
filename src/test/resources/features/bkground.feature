@bkground
  Feature: bkground

    Background: Teacher login
      Given I open url "http://ask-stage.portnov.com"
      Then I wait for 3 sec
      Then I type "Teacher79@enoiv.com" into element with xpath "//input[@formcontrolname='email']"
      Then I type "Roseb1" into element with xpath "//input[@formcontrolname='password']"
      Then I click on element with xpath "//button[@type='submit']"

    @scq1
    Scenario: test scenario scq
      Then I wait for element with xpath "//h5[contains(text(),'Quizzes')]" to be present
      Then I wait for 2 sec
      Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
      Then I wait for element with xpath "//span[contains(text(),'Create New Quiz')]/.." to be present
      Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]/.."
      Then I wait for 2 sec
      Then I type "newscq" into element with xpath "//input[@formcontrolname='name']"
      Then I click on element with xpath "(//button[@type='button'])[3]"
      Then I wait for 2 sec
      Then I click on element with xpath "(//*[@class='mat-radio-outer-circle'])[2]/.."
      Then I wait for 2 sec
      Then I wait for element with xpath "//textarea[@formcontrolname='question']" to be present
      Then I type "automation tool" into element with xpath "//textarea[@formcontrolname='question']"
      Then I wait for element with xpath "//textarea[@formcontrolname='option']" to be present
      Then I type "jira" into element with xpath "//textarea[@formcontrolname='option']"
      Then I type "Intellij" into element with xpath "(//textarea[@formcontrolname='option'])[2]"
      Then I click on element with xpath "(//*[@class='mat-radio-outer-circle'])[5]/.."
      Then I click on element with xpath "//span[contains(text(),'Save')]"
      Then I wait for 5 sec


    @groupcode1
    Scenario: group code assign
      And I wait for element with xpath "//h5[contains(text(),'Assignments')]" to be present
      Then I wait for 2 sec
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
      And I scroll to the element with xpath "//span[contains(string(),'Assignment Date: 12/27/23')]" with offset 2
      Then I wait for 2 sec
      Then I click on element with xpath "//span[contains(string(),'Assignment Date: 12/27/23')]"

