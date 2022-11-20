Feature: Crear Tag con Meta Data

@user1 @web
Scenario: Como usuario 1 inicio session y creo un tag con info en la sección Basic Settings
  Given I navigate to page "<URL_GHOST>"
  And I wait for 5 seconds
  Then I take screenshot "tag/crearTagPositivo2" test, "1.Inicio" step
  When I enter email "<USERNAME>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD>"
  And I wait for 2 seconds
  Then I take screenshot "tag/crearTagPositivo2" test, "2.Datos_Autenticacion" step
  And I click next
  And I wait for 5 seconds
  Then I take screenshot "tag/crearTagPositivo2" test, "3.Autenticacion_Exitosa" step
  And I click on the in the menu option Tags
  And I wait for 2 seconds
  Then I take screenshot "tag/crearTagPositivo2" test, "4.Modulo_Tag" step
  And I click on button New Tag 
  And I wait for 3 seconds
  Then I take screenshot "tag/crearTagPositivo2" test, "5.New_Tag" step
  And I enter Tag Name "Productos Importados"
  And I wait for 1 seconds
  Then I take screenshot "tag/crearTagPositivo2" test, "6.Ingresa_Tag_Name" step
  And I click on the button Expand option Tags
  And I wait for 5 seconds
  Then I take screenshot "tag/crearTagPositivo2" test, "7.Expand_Meta_Data" step
  And I enter Tag meta-title "Productos Importados"
  Then I take screenshot "tag/crearTagPositivo2" test, "8.Ingresa_Tag_Meta_Tittle" step
  And I click on button Save in Tags
  And I wait for 3 seconds
  Then I take screenshot "tag/crearTagPositivo2" test, "9.Save_Tag" step
  And I click on the in the menu option Tags
  And I wait for 3 seconds
  Then I take screenshot "tag/crearTagPositivo2" test, "10.Modulo_Tag" step
  And I validating that new tag is in Tags list
  And I wait for 2 seconds
  Then I take screenshot "tag/crearTagPositivo2" test, "11.Lista_Tag" step
  And I Delete Tag
  And I wait for 2 seconds
  Then I take screenshot "tag/crearTagPositivo2" test, "12.Eliminar_Tag" step
  And I Confirm Delete Tag
  And I wait for 5 seconds
  Then I take screenshot "tag/crearTagPositivo2" test, "13.Confirmar_Elimininar_Tag" step

