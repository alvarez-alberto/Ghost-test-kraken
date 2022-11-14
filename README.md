# Ghost-test

|Nombre|Correo|
|------|------|
|Alberto Alvarez Herrera|a.alvarezh2@uniandes.edu.co|
|Miguel Angel Orjuela Rocha|ma.orjuela73@uniandes.edu.co|
|Nestor Pérez Espinel|n.pereze@uniandes.edu.co|
|Arturo Reyna|a.reyna@uniandes.edu.co|



# Funcionalidades a probar:
|Funcionalidad|Descripcion||
|-------------|-----------|-|
|Crear Post|Se debe poder crear un post a la página exitosamente|Miguel Orjuela|
|Crear una pagina|Se debe poder crear un página exitosamente|Alberto|
|Crear tag|Se debe poder crear un tag exitosamente|Nestor|
|Editar tag|Se debe poder editar un tag exitosamente|Nestor|
|Crear miembro|Se debe poder crear un miembro a la página exitosamente|Arturo|
|Editar post|Se debe poder editar un post existente en la pagina exitosamente|Conjunto|

Herramientas a usar:
<br/>**Kraken:**
<br/>**Playwright:**

Tareas:

Realizar 4 Casos/escenarios de prueba  en ambas herramientas según la funcionalidad asignada.


# Instrucciones para ejecutar los escenarios de prueba en Kraken:
1. Clonar el repo https://github.com/alvarez-alberto/Ghost-test.git
2. Ejecutar el comando **npm install**
3. En el archivo **Ghost-test\properties.json** colocar el usuario y el password para ghost
4. En la ruta **Ghost-test\features** solo dejar un archivo con extension **.feature**
5. En una consola  **Git Bash** ubicarse en la raiz del repo clonado y ejecuar el comando **./node_modules/kraken-node/bin/kraken-node run**