Feature: Crear page draft

@user2 @web
Scenario: Como usuario inicio sesion creo una pagina y la dejo en borrador
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
  When I type the tittle 'New page test in draft'
  And I wait for 5 seconds
  When I go to editor section
  When I go to pages section
  And I wait for 5 seconds
  When I go pages drafts
  Then I check the first row with tittle 'New page test in draft'