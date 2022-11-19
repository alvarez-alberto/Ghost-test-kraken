Feature: Crear page

@user1 @web
Scenario: Como usuario inicio sesion y creo una pagina con titulo New page test
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  Then I take screenshot "page/crearPage" test, "1.Inicio" step
  And I wait for 5 seconds
  When I enter email "<USERNAME>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD>"
  And I wait for 2 seconds
  Then I take screenshot "page/crearPage" test, "2.Datos_autenticarse" step
  And I click next
  And I wait for 2 seconds
  Then I take screenshot "page/crearPage" test, "3.Autenticacion_exitosa" step
  When I go to pages
  And I wait for 2 seconds
  Then I take screenshot "page/crearPage" test, "4.Ingreso_pages" step
  When I click on new page
  Then I take screenshot "page/crearPage" test, "5.Nueva_pagina" step
  When I type the tittle 'New page test'
  Then I take screenshot "page/crearPage" test, "6.Titulo" step
  And I wait for 1 seconds
  When I click on settings
  When I click on publish
  And I wait for 3 seconds
  When I click on publish continue
  And I wait for 1 seconds
  When I click on publish page
  Then I take screenshot "page/crearPage" test, "7.Publicar_Page" step
  And I wait for 1 seconds
  When I go to editor section
  And I wait for 1 seconds
  When I go to pages section
  Then I take screenshot "page/crearPage" test, "8.Ingreso_page" step
  When I go pages publish
  And I wait for 2 seconds
  Then I take screenshot "page/crearPage" test, "8.lista_pages" step
  Then I check the first row with tittle 'New page test'

  
