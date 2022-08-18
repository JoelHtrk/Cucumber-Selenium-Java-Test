Feature: Bincang QA Login Test
  Scenario: Login succes on saucedemo
    Given open web url "https://www.saucedemo.com/"
    And Input username "standard_user" and password "secret_sauce"
    When Click button login
    Then Should succes login and redirected to homepage
  
   Scenario Outline: Login failed on saucedemo using scenario outline
     Given open web url "https://www.saucedemo.com/"
     And Input username "<username>" and password "<password>"
     When Click button login
     Then Failed login and showing message
    Examples:
     |username|password|
     |standard_user|asqwxczcasdd|