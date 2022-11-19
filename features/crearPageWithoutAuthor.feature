Feature: Crear page without author

@user4 @web
Scenario: Como usuario inicio sesion creo una pagina y elimino el autor para mostrar el error
  Given I navigate to page "http://localhost:2368/ghost/#/signin"
  Then I take screenshot "page/crearPageWithoutAuthor" test, "1.Inicio" step
  And I wait for 5 seconds
  When I enter email "<USERNAME>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD>"
  And I wait for 2 seconds
  Then I take screenshot "page/crearPageWithoutAuthor" test, "2.Datos_autenticarse" step
  And I click next
  And I wait for 5 seconds
  Then I take screenshot "page/crearPageWithoutAuthor" test, "3.Autenticacion_exitosa" step
  When I go to pages
  And I wait for 3 seconds
  Then I take screenshot "page/crearPageWithoutAuthor" test, "4.Ingreso_pages" step
  When I click on new page
  Then I take screenshot "page/crearPageWithoutAuthor" test, "5.Nueva_pagina" step
  When I type the tittle 'page without author'
  And I wait for 5 seconds
  Then I take screenshot "page/crearPageWithoutAuthor" test, "6.Titulo" step
  When I click on settings
  When I click on remove author
  Then I check the error message 'At least one author is required.'
    Then I take screenshot "page/crearPageWithoutAuthor" test, "7.author_required" step



