Feature: Modificar Tag con Basic Settings


@user1 @web
Scenario: Como usuario 1 inicio session y creo un tag con info en la sección Basic Settings y lo modifico
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 2 seconds
  When I enter email "<USERNAME>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD>"
  And I wait for 2 seconds
  And I click next
  And I wait for 2 seconds
  And I click on the in the menu option Tags
  And I wait for 2 seconds
  And I click on button New Tag 
  And I wait for 3 seconds
  And I enter Tag Name "Productos Importados"
  And I wait for 1 seconds
  And I click on button Save in Tags
  And I wait for 3 seconds
  And I click on the in the menu option Tags
  And I wait for 3 seconds
  And I validating that new tag is in Tags list
  And I wait for 2 seconds
  And I enter Tag Description "Este tag identifica los prodcutos que se importan para la tienda"
  And I wait for 1 seconds
  And I click on button Save in Tags
  And I wait for 2 seconds
  And I click on the in the menu option Tags
  And I wait for 3 seconds
  And I validating that new tag is in Tags list
  And I wait for 2 seconds
  And I Delete Tag
  And I wait for 2 seconds
  And I Confirm Delete Tag
  And I wait for 2 seconds
 