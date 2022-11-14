Feature: Crear Tag con Basic Settings Negativo

@user1 @web
Scenario: Como usuario 1 inicio session y creo un tag con info en la sección Basic Settings
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  And I click on the in the menu option Tags
  And I wait for 2 seconds
  And I click on button New Tag 
  And I wait for 3 seconds
  And I click on button Save in Tags
  And I Confirm Validation Error on Tag Name field
  And I wait for 2 seconds
