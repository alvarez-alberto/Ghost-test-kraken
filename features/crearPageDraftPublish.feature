Feature: Crear page draft and publish

@user3 @web
Scenario: Como usuario inicio sesion creo una pagina la dejo en borrador y despues la publico
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  Then I take screenshot "page/crearPageDraftPublish" test, "1.Inicio" step
  And I wait for 5 seconds
  When I enter email "<USERNAME>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD>"
  And I wait for 2 seconds
  Then I take screenshot "page/crearPageDraftPublish" test, "2.Datos_autenticarse" step
  And I click next
  And I wait for 5 seconds
  Then I take screenshot "page/crearPageDraftPublish" test, "3.Autenticacion_exitosa" step
  When I go to pages
  And I wait for 3 seconds
  Then I take screenshot "page/crearPageDraftPublish" test, "4.Ingreso_pages" step
  When I click on new page
  Then I take screenshot "crearPageDraftPublish/crearPage" test, "5.Nueva_pagina" step
  When I type the tittle 'New page test in draft and publish'
  And I wait for 5 seconds
  Then I take screenshot "page/crearPageDraftPublish" test, "6.Titulo" step
  When I go to editor section
  When I go to pages section
  And I wait for 5 seconds
  Then I take screenshot "page/crearPageDraftPublish" test, "7.Ingreso_page" step
  When I go pages drafts
  Then I take screenshot "page/crearPageDraftPublish" test, "8.draf_pages" step
  When I select draft page
  And I wait for 2 seconds
  Then I take screenshot "page/crearPageDraftPublish" test, "9.draf_page" step
  When I click on publish
  And I wait for 6 seconds
  When I click on publish continue
  And I wait for 2 seconds
  When I click on publish page
  And I wait for 2 seconds
  Then I take screenshot "page/crearPageDraftPublish" test, "10.Publicar_Page" step
  When I go to editor section
  And I wait for 2 seconds
  Then I take screenshot "page/crearPageDraftPublish" test, "11.Ingreso_page" step
  When I go to pages section
  When I go pages publish
  And I wait for 2 seconds
  Then I take screenshot "page/crearPageDraftPublish" test, "12.publish_pages" step
  Then I check the first row with tittle 'New page test in draft and publish'