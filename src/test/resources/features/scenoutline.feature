@scenoutline
  Feature: scenoutline

    Background: Teacher login
      Given I open url "http://ask-stage.portnov.com"
      Then I wait for 3 sec
      Then I type "Teacher79@enoiv.com" into element with xpath "//input[@formcontrolname='email']"
      Then I type "Roseb1" into element with xpath "//input[@formcontrolname='password']"
      Then I click on element with xpath "//button[@type='submit']"
      And I wait for 2 sec
      And I wait for element with xpath "//h5[contains(text(), 'Quizzes')]" to be present
      And I wait for 2 sec
      And I click on element with xpath "//h5[contains(text(), 'Quizzes')]"
      And I wait for 2 sec



    @multiplechoicequiz
      Scenario Outline: Test for mcq
      And I wait for element with xpath "//button/span[contains(text(), 'Create New Quiz')]" to be present
      And I click on element with xpath "//button/span[contains(text(), 'Create New Quiz')]"
      And I wait for element with xpath "//input[@formcontrolname='name']" to be present
      And I type "<Quizname>" into element with xpath "//input[@formcontrolname='name']"
      And I click on element with xpath "//mat-icon[contains(text(), 'add_circle')]/../.."
      And I click on element with xpath "//mat-radio-button[3]"
      And I type "<questions>" into element with xpath "//textarea[@formcontrolname='question']"
      And I wait for 1 sec
      And I click on element with xpath "(//textarea[@formcontrolname='option'])[1]/../../../../..//input[@type='checkbox']/.."
      And I type "<firstoptionname>" into element with xpath "(//textarea[@formcontrolname='option'])[1]"
      And I type "<secondoptionname>" into element with xpath "(//textarea[@formcontrolname='option'])[2]"
      And I create <numofoptions> options
      And I choose <correctoption1> as correct option
      And I choose <correctoption2> as correct option
      And I choose <correctoption3> as correct option
      And I move question slider 3 step to the "Right"
      Then I wait for 3 sec
      And I click on element with xpath "//button[contains(., 'Save')]"
      Then I wait for 3 sec

  Examples:
      | Quizname| questions | firstoptionname| secondoptionname| numofoptions | correctoption1|correctoption2 |correctoption3|
      | mcq1    | q1        | option1        | option2         | 5            | 5             | 2             | 1            |
      | mcq2    | q1        | option1        | option2         | 7            | 3             | 7             | 5            |
      | mcq3    | q1        | option1        | option2         | 3            | 2             | 1             | 3            |
      | mcq4    | q1        | option1        | option2         | 5            | 1             | 5             | 4            |

    @deleteQuiz
    Scenario Outline: Deleting Quiz
      Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
      Then I scroll to the element with xpath "//*[contains(text(),'<Quizname>')]/../.." with offset 2
      Then I click on element with xpath "//*[contains(text(),'<Quizname>')]/../.."
      Then I wait for element with xpath "//*[contains(text(),'<Quizname>')]/../../..//*[contains(text(),'Delete')]/.." to be present
      Then I click on element with xpath "//*[contains(text(),'<Quizname>')]/../../..//*[contains(text(),'Delete')]/.."
      Then I wait for element with xpath "//mat-dialog-container" to be present
      Then I click on element with xpath "//mat-dialog-container/..//button/span[contains(text(),'Delete')]/.."
      Then I wait for 2 sec

      Examples:
      |Quizname|
      |mcq1    |
      |mcq2    |
      |mcq3    |
      |mcq4    |


