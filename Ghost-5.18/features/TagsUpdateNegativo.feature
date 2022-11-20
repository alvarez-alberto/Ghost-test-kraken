Feature: Modificar Tag con Basic Settings

@user1 @web
Scenario: Como usuario 1 inicio session y creo un tag con info en la sección Basic Settings y lo modifico
  Given I navigate to page "<URL_GHOST>"
  And I wait for 2 seconds
  Then I take screenshot "tag/actualizarTagNegativo" test, "1.Inicio" step
  When I enter email "<USERNAME>"
  And I wait for 2 seconds
  And I enter password "<PASSWORD>"
  And I wait for 2 seconds
  Then I take screenshot "tag/actualizarTagNegativo" test, "2.Datos_Autenticacion" step
  And I click next
  And I wait for 2 seconds
  Then I take screenshot "tag/actualizarTagNegativo" test, "3.Autenticacion_Exitosa" step
  And I click on the in the menu option Tags
  And I wait for 2 seconds
  Then I take screenshot "tag/actualizarTagNegativo" test, "4.Modulo_Tag" step
  And I click on button New Tag 
  And I wait for 3 seconds
  Then I take screenshot "tag/actualizarTagNegativo" test, "5.New_Tag" step
  And I enter Tag Name "Productos Importados"
  And I wait for 1 seconds
  Then I take screenshot "tag/actualizarTagNegativo" test, "6.Ingresa_Tag_Name" step
  And I click on button Save in Tags
  And I wait for 3 seconds
  Then I take screenshot "tag/actualizarTagNegativo" test, "7.Save_Tag" step
  And I click on the in the menu option Tags
  And I wait for 3 seconds
  Then I take screenshot "tag/actualizarTagNegativo" test, "8.Modulo_Tag" step
  And I validating that new tag is in Tags list
  And I wait for 2 seconds
  Then I take screenshot "tag/actualizarTagNegativo" test, "9.Lista_Tags" step
  And I enter Tag Slug "Productos Importados Productos Importados Productos Importados Productos Importados Productos Importados Productos Importados Productos Importados Productos Importados Productos Importados Productos Importados"
  And I wait for 2 seconds
  Then I take screenshot "tag/actualizarTagNegativo" test, "10.Ingresa_Tag_Slug" step
  And I click on button Save in Tags
  And I wait for 4 seconds
  Then I take screenshot "tag/actualizarTagNegativo" test, "11.Save_Tag" step
  And I Confirm Validation Error on Tag Slug field
  And I wait for 2 seconds
  Then I take screenshot "tag/actualizarTagNegativo" test, "12.Validacion_Tag_Slug" step
  And I Delete Tag
  And I wait for 2 seconds
  Then I take screenshot "tag/actualizarTagNegativo" test, "13.Eliminar_Tag" step
  And I Confirm Delete Tag
  And I wait for 2 seconds
  Then I take screenshot "tag/actualizarTagNegativo" test, "14.Confirmar_Elimininar_Tag" step


 