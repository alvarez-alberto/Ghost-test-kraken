Feature: Crear page draft and publish

@user3 @web
Scenario: Como usuario inicio sesion creo una pagina la dejo en borrador y despues la publico
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
  When I type the tittle 'New page test in draft and publish'
  And I wait for 5 seconds
  When I go to editor section
  When I go to pages section
  And I wait for 5 seconds
  When I go pages drafts
  When I select draft page
  And I wait for 2 seconds
  When I click on publish
  And I wait for 6 seconds
  When I click on publish continue
  And I wait for 2 seconds
  When I click on publish page
  And I wait for 2 seconds
  When I go to editor section
  And I wait for 2 seconds
  When I go to pages section
  When I go pages publish
  And I wait for 2 seconds
  Then I check the first row with tittle 'New page test in draft and publish'