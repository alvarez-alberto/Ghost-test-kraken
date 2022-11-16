Feature: Crear page without author

@user4 @web
Scenario: Como usuario inicio sesion creo una pagina y elimino el autor para mostrar el error
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  And I wait for 5 seconds
  When I enter email "<USERNAME>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD>"
  And I wait for 2 seconds
  And I click next
  And I wait for 5 seconds
  When I go to pages
  And I wait for 3 seconds
  When I click on new page
  When I type the tittle 'page without author'
  And I wait for 5 seconds
  When I click on settings
  When I click on remove author
  Then I check the error message 'At least one author is required.'



