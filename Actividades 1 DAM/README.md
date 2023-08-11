Actividad 4

**Enunciado**

Una vez que hemos generado nuestra base de datos con el script proyectos.sql que os he dejado en las unidades formativas, vamos a seguir practicando con el lenguaje SQL. Para ello se pide que realices las siguientes sentencias SQL.

1. Se pide que **muestres todos los datos** introducidos en las tablas. Para ello deberías **extraer las cuatro tablas** incluidas con comandos de selección.
1. Se necesita una lista de los proyectos (sólo indicando el nombre y la fecha de inicio) que empiezan a partir de Marzo. En la cabecera de la columna de la fecha debe de poner **“Fecha de inicio del proyecto”.**
1. Se necesita un **listado de todos los empleados** que tengan el apellido López, como primero o segundo apellido
1. Se pide que muestres el nombre del proyecto que tiene asignado el empleado “10480”, siguiendo estos pasos.
- **Son dos sentencias SELECT**: Primero averigua el número de de proyecto del empleado “10480” y luego cuando tengas el número de proyecto realizar la consulta sobre la tabla Proyectos.
5. Sacar un **listado de los empleados** que sean de Madrid o Córdoba. Realiza el select de dos maneras posibles.
5. Sacar un **listado de los empleados** que tengan un sueldo entre 1300 y 1550 Euros  
5. Ordena los empleados **por fecha de nacimiento descendente** y sólo los que hayan nacido después de 1976.
5. Se ha **detectado un error** y es necesario sumar 5000 Euros al presupuesto del departamento de Marketing. Modifícalo sin tener que volver a insertar de nuevo el registro.
5. Se va a **cambiar de proyecto** a “Alberto Pérez López”. Modifícalo para que tenga asignado el proyecto “RUNTA”.
5. Por motivos de logística “Antonio García Montero” ya no seguirá en el proyecto que tenía asignado y por lo tanto hay que **quitarle esa asignación**. Hazlo en dos pasos al igual que en la consulta 4.
5. Sacar todos los **empleados del departamento** de Diseño y que ganen más de 1500 Euros.
5. Incrementar en un **5% el sueldo de los empleados** que pertenezcan al departamento de I+D y que ganen menos de 1400 Euros. 

Una vez elaborado todas las sentencias **súbelo a la plataforma para su evaluación**.

**Metodología**

- El alumno deberá **estudiar los conceptos de las sentencias de SQL** de selección y filtrado, elaboración de subconsultas, y funciones de manipulación de los datos.
- Se irán **realizando los ejercicios consecutivamente**, ya que el orden de dificultad ira creciendo. Todos los ejercicios se refieren a la utilización de la sentencia **SELECT** con sus diferentes variantes y funciones para filtrar los datos.
- Será recomendable que para **cada sentencia introducida comprobar si el resultado es el esperado apoyándose para ello en la interfaz gráfica**.




Actividad 5

**Enunciado**

Dado el siguiente modelo relacional se piden dos tipos de trabajos:

- En las sentencias de selección pegar el comando y la salida del mismo.
- En las sentencias de creación ceñirse a los tipos de datos que se especifican más adelante.


![](img/Aspose.Words.7a5cc022-e94d-45f4-a424-535f9f7e099b.001.png)

1. Escribir las sentencias SQL correspondientes para crear las tablas en MYSQL u ORACLE, teniendo en cuenta las siguientes restricciones que se dan para el tipo de datos de Oracle. Si se quiere hacer la actividad en MYSQL busquen el tipo de dato equivalente:

|CENTROS||||
| :- | :- | :- | :- |
|**Campo**|**Nulo**|**Tipo de datos**|**Observaciones**|
|NUMCE|NOT NULL|NUMBER(4)|Número de centro|
|NOMCE| |VARCHAR2(25)|Nombre de centro|
|DIRCE| |VARCHAR2(25)|Dirección del centro|
|DEPARTAMENTOS||||
|**Campo**|**Nulo**|**Tipo de datos**|**Observaciones**|
|NUMDE|NOT NULL|NUMBER(3)|Número de departamento|
|NUMCE| |NUMBER(4)|Número de centro|
|DIREC| |NUMBER(3)|Director|
|TIDIR| |CHAR(1)|Tipo de director (en Propiedad, en Funciones)|
|PRESU| |NUMBER(3,1)|Presupuesto en miles de €|
|DEPDE| |NUMBER(3)|Departamento del que depende|
|NOMDE| |VARCHAR2(20)|Nombre de departamento|



|EMPLEADOS||||
| :- | :- | :- | :- |
|**Campo**|**Nulo**|**Tipo de datos**|**Observaciones**|
|NUMEM|NOT NULL|NUMBER(3)|Número de empleado|
|EXTEL| |NUMBER(3)|Extensión telefónica|
|FECNA| |DATE|Fecha de nacimiento|
|FECIN| |DATE|Fecha de incorporación|
|SALAR| |NUMBER(5)|Salario|
|COMIS| |NUMBER(3)|Comisión|
|NUMHI| |NUMBER(1)|Número de hijos|
|NOMEM| |VARCHAR2(10)|Nombre de empleado|
|NUMDE| |NUMBER(3)|Número de departamento|



1. Inserta los siguientes datos en la tabla DEPARTAMENTOS.

|EMPLEADOS|||||||
| :- | :- | :- | :- | :- | :- | :- |
|**NUMDE**|**NUMCE**|**DIREC**|**TIDIR**|**PRESU**|**DEPDE**|**NOMDE**|
|100|10|260|P|72|NULL|DIRECCIÓN GENERAL|
|110|20|180|P|90|100|DIRECC.COMERCIAL|
|111|20|180|F|66|110|SECTOR INDUSTRIAL|
|112|20|270|P|54|110|SECTOR SERVICIOS|
|120|10|150|F|18|100|ORGANIZACIÓN|
|121|10|150|P|12|120|PERSONAL|
|122|10|350|P|36|120|PROCESO DE DATOS|
|130|10|310|P|12|100|FINANZAS|





1. ¿Qué ocurre al insertar el primer registro? ¿Por qué? Plantea la solución.





1. Inserta los siguientes datos en la tabla CENTROS

|EMPLEADOS|||
| :- | :- | :- |
|**NUMCE**|**NOMCE**|**DIRCE**|
|10|SEDE CENTRAL|C/ ATOCHA, 820, MADRID|
|20|RELACIÓN CON CLIENTES|C/ ATOCHA, 405, MADRID|



1. Inserta los siguientes datos en la tabla EMPLEADOS con un bulk insert:

|EMPLEADOS|||||||||
| :- | :- | :- | :- | :- | :- | :- | :- | :- |
|**NUMEM**|**EXTEL**|**FECNA**|**FECIN**|**SALAR**|**COMIS**|**NUMHI**|**NOMEM**|**NUMDE**|
|110|350|10/11/1970|15/02/1985|1800|NULL|3|CESAR|121|
|120|840|09/06/1968|01/10/1988|1900|110|1|MARIO|112|
|130|810|09/09/1965|01/02/1981|1500|110|2|LUCIANO|112|
|150|340|10/08/1972|15/01/1997|2600|NULL|0|JULIO|121|
|160|740|09/07/1980|11/11/2005|1800|110|2|AUREO|111|
|180|508|18/10/1974|18/03/1996|2800|50|2|MARCOS|110|
|190|350|12/05/1972|11/02/1992|1750|NULL|4|JULIANA|121|
|210|200|28/09/1970|22/01/1999|1910|NULL|2|PILAR|100|
|240|760|26/02/1967|24/02/1989|1700|100|3|LAVINIA|111|
|250|250|27/10/1976|01/03/1997|2700|NULL|0|ADRIANA|100|
|260|220|03/12/1973|12/07/2001|720|NULL|6|ANTONIO|100|
|270|800|21/05/1975|10/09/2003|1910|80|3|OCTAVIO|112|
|280|410|10/01/1978|08/10/2010|1500|NULL|5|DOROTEA|130|
|285|620|25/10/1979|15/02/2011|1910|NULL|0|OTILIA|122|
|290|910|30/11/1967|14/02/1988|1790|NULL|3|GLORIA|120|
|310|480|21/11/1976|15/01/2001|1950|NULL|0|AUGUSTO|130|
|320|620|25/12/1977|05/02/2003|2400|NULL|2|CORNELIO|122|
|330|850|19/08/1958|01/03/1980|1700|90|0|AMELIA|112|
|350|610|13/04/1979|10/09/1999|2700|NULL|1|AURELIO|122|
|360|750|29/10/1978|10/10/1998|1800|100|2|DORINDA|111|
|370|360|22/06/1977|20/01/2000|1860|NULL|1|FABIOLA|121|
|380|880|30/03/1978|01/01/1999|1100|NULL|0|MICAELA|112|
|390|500|19/02/1976|08/10/2010|1290|NULL|1|CARMEN|110|
|400|780|18/08/1979|01/11/2011|1150|NULL|0|LUCRECIA|111|
|410|660|14/07/1968|13/10/1989|1010|NULL|0|AZUCENA|122|
|420|450|22/10/1966|19/11/1988|2400|NULL|0|CLAUDIA|130|
|430|650|26/10/1967|19/11/1988|1260|NULL|1|VALERIANA|122|
|440|760|26/09/1966|28/02/1986|1260|100|0|LIVIA|111|
|450|880|21/10/1966|28/02/1986|1260|100|0|SABINA|112|
|480|760|04/04/1965|28/02/1986|1260|100|1|DIANA|111|
|490|880|06/06/1964|01/01/1988|1090|100|0|HORACIO|112|
|500|750|08/10/1965|01/01/1987|1200|100|0|HONORIA|111|
|510|550|04/05/1966|01/11/1986|1200|NULL|1|ROMULO|110|
|550|780|10/01/1970|21/01/1998|600|120|0|SANCHO|111|



1. Para cada departamento con presupuesto inferior a 35.000 €, hallar le nombre del Centro donde está ubicado y el máximo salario de sus empleados (si dicho máximo excede de 1.500 €). Clasificar alfabéticamente por nombre de departamento.
1. Hallar por orden alfabético los nombres de los departamentos que dependen de los que tienen un presupuesto inferior a 30.000 €. También queremos conocer el nombre del departamento del que dependen y su presupuesto.
1. Obtener los nombres y los salarios medios de los departamentos cuyo salario medio supera al salario medio de la empresa.
1. Para los departamentos cuyo director lo sea en funciones, hallar el número de empleados y la suma de sus salarios, comisiones y número de hijos.
1. Para los departamentos cuyo presupuesto anual supera los 35.000 €, hallar cuantos empleados hay por cada extensión telefónica.
1. Hallar por orden alfabético los nombres de los empleados y su número de hijos para aquellos que son directores en funciones.
1. Hallar si hay algún departamento (suponemos que sería de reciente creación) que aún no tenga empleados asignados ni director en propiedad.
1. Añadir un nuevo departamento de nombre NUEVO y con director en funciones.
1. Añadir un nuevo empleado de nombre NORBERTO y sin departamento asignado. Inventar el resto de datos.
1. Muestra los departamentos que no tienen empleados.
1. Muestra los nombres de departamentos que no tienen empleados haciendo uso la combinación externa LEFT JOIN. Muestra una segunda columna con los nombres de empleados para asegurarnos que realmente está a NULL.
1. Muestra los nombres de departamentos que no tienen empleados haciendo uso la combinación externa RIGH JOIN. Muestra una segunda columna con los nombres de empleados para asegurarnos que realmente está a NULL.
1. Muestra los nombres de empleados que no tienen departamento haciendo uso la combinación externa LEFT JOIN. Muestra una segunda columna con los nombres de departamentos para asegurarnos que realmente esta a NULL.
1. Muestra los nombres de empleados que no tienen departamento haciendo uso la combinación externa RIGHT JOIN. Muestra una segunda columna con los nombres de empleados para asegurarnos que realmente esta a NULL.
1. Muestra los departamentos que no tienen empleados y los empleados que no tiene departamento haciendo uso la combinación externa FULL JOIN.
1. Muestra los empleados y sus respectivos departamentos haciendo uso de la combinación interna INNER JOIN. ¿Aparecen el departamento NUEVO y el empleado NORBERTO?¿Por qué?
1. Realiza la misma consulta anterior donde se cumpla la condición que NUMDE está a NULL. ¿Aparece algún resultado?¿Por qué?
1. Muestra los empleados y sus respectivos departamentos haciendo uso de la combinación interna NATURAL JOIN.
1. Muestra la combinación de las 3 tablas CENTROS, DEPARTAMENTOS y EMPLEADOS haciendo uso de NATURAL JOIN.
1. Borra los registros dados de alta para el departamento NUEVO y el empleado introducido en el apartado anterior.



Actividad 6

**Enunciado**

Dado el siguiente modelo relacional se pide:

![](img/Aspose.Words.7a5cc022-e94d-45f4-a424-535f9f7e099b.002.png)

- Realiza el diseño físico para el siguiente modelo relacional. rea las tablas sin restricciones y añádelas después con el comando ALTER TABLE. Se valorará que para cada tabla se elijan los datos más apropiados y que nada más crear la tabla, inmediatamente después de su creación se ejecuten los alter tables correspondientes al modelo que se implementa definiendo las claves primarias y ajenas a las que referencian.
- Crear una vista que saque los DNI y la fecha, de las personas que han realizado una excursión a pie y ejecútala.
- Al final también se pide poblar de datos el entorno y entregar en los grupos de trabajo generados el fichero .sql 
- Se valorará que el entorno final esté poblado de datos conforme a las definiciones dadas y que además todas las relaciones estén perfectamente creadas y el código de cada sentencia comentado.



