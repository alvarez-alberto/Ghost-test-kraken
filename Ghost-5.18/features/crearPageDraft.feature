Feature: Crear page draft

@user2 @web
Scenario: Como usuario inicio sesion creo una pagina y la dejo en borrador
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  Then I take screenshot "page/crearPageDraft" test, "1.Inicio" step
  And I wait for 5 seconds
  When I enter email "<USERNAME>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD>"
  And I wait for 2 seconds
  Then I take screenshot "page/crearPageDraft" test, "2.Datos_autenticarse" step
  And I click next
  And I wait for 5 seconds
  Then I take screenshot "page/crearPageDraft" test, "3.Autenticacion_exitosa" step
  When I go to pages
  And I wait for 3 seconds
  Then I take screenshot "page/crearPageDraft" test, "4.Ingreso_pages" step
  When I click on new page
  Then I take screenshot "page/crearPageDraft" test, "5.Nueva_pagina" step
  When I type the tittle 'New page test in draft'
  And I wait for 5 seconds
  Then I take screenshot "page/crearPageDraft" test, "6.Titulo" step
  When I go to editor section
  When I go to pages section
  And I wait for 5 seconds
  Then I take screenshot "page/crearPageDraft" test, "7.Ingreso_page" step
  When I go pages drafts
  Then I take screenshot "page/crearPageDraft" test, "8.draft_page" step
  Then I check the first row with tittle 'New page test in draft'