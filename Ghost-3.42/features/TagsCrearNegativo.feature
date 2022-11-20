Feature: Crear Tag con Basic Settings Negativo

@user1 @web
Scenario: Como usuario 1 inicio session y creo un tag con info en la sección Basic Settings
  Given I navigate to page "<URL_GHOST>"
  And I wait for 5 seconds
  Then I take screenshot "tag/crearTagNegativo" test, "1.Inicio" step
  When I enter email "<USERNAME>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD>"
  And I wait for 2 seconds
  Then I take screenshot "tag/crearTagNegativo" test, "2.Datos_Autenticacion" step
  And I click next
  And I wait for 5 seconds
  Then I take screenshot "tag/crearTagNegativo" test, "3.Autenticacion_Exitosa" step
  And I click on the in the menu option Tags
  And I wait for 2 seconds
  Then I take screenshot "tag/crearTagNegativo" test, "4.Modulo_Tag" step
  And I click on button New Tag 
  And I wait for 3 seconds
  Then I take screenshot "tag/crearTagNegativo" test, "5.New_Tag" step
  And I click on button Save in Tags
  Then I take screenshot "tag/crearTagNegativo" test, "6.Save_Tag" step
  And I Confirm Validation Error on Tag Name field
  And I wait for 2 seconds
  Then I take screenshot "tag/crearTagNegativo" test, "7.Validacion_Tag_Name" step
