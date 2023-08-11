-- Creamos en MySQL la base de datos sin contenido y la ponemos en memoria, a partir de aquí crearemos la base de datos con código.

CREATE DATABASE IF NOT EXISTS EMPRESA;
USE EMPRESA;

/* Primero vamos a crear las tablas definiendo los dominios y tipo de dato sin restricciones para evitar problemas, 
 las restricciones las intriduciremos después a través de la cláusula ALTER.
*/

-- Creamos la tabla DEPARTAMENTOS.

CREATE TABLE `departamentos` (
`NUMDE` int(3) NOT NULL,
`NUMCE` int(4),
`DIREC` int(3) ,
`TIDIR` char(1) ,
`PRESU` decimal (3,1) ,
`DEPDE` int (3) ,
`NOMBRE` varchar(20) 
);

-- Creamos la tabla Centros.

CREATE TABLE `centros`(
`NUMCE` int(4) NOT NULL, 
`NOMCE` varchar(25) ,
`DIRCE` varchar(25) 
);

-- Creamos la tabla Empleados.

CREATE TABLE `empleados`(
`NUMEM` int(3) NOT NULL,
`EXTEL` int (3) ,
`FECNA` date ,
`FECIN` date,
`SALAR` int(5) ,
`COMIS` int(3) ,
`NUMHI` int(1) ,
`NOMEM` varchar (10) ,
`NUMDE` int(3) 
);

-- 1. Insertamos la primera fila en la tabla DEPARTAMENTOS

INSERT INTO `departamentos` (`NUMDE`, `NUMCE`, `DIREC`, `TIDIR`, `PRESU`, `DEPDE`, `NOMBRE`) VALUES
('100', '10' , '260', 'P','72', NULL ,'DIRECCIÓN GENERAL');

-- Insertamos el resto de datos en la tabla con un  BULK INSERT.

INSERT INTO `departamentos` (`NUMDE`, `NUMCE`, `DIREC`, `TIDIR`, `PRESU`, `DEPDE`, `NOMBRE`) VALUES
('110', '20', '180', 'P','90','100','DIRECC.COMERCIAL'),
('111', '20', '180', 'F', '66', '110', 'SECTOR INDUSTRIAL'),
('112', '20', '270', 'P', '54', '110', 'SECTOR SERVICIOS'),
('120', '10', '150', 'F', '18', '100', 'ORGANIZACIÓN'),
('121', '10', '150', 'P', '12', '120', 'PERSONAL'),
('122', '10','350', 'P', '36', '120', 'PROCESO DE DATOS'),
('130', '10', '310', 'P', '12', '100', 'FINANZAS');

-- 1. Insertamaos los datos de la entidad Centros, al introducir únicamente 2 filas de datos hacemos un insert por cada fila.

INSERT INTO `centros`(`NUMCE`, `NOMCE`, `DIRCE`) VALUES 
( '10' , 'SEDE CENTRAL', 'CALLE ATOCHA, 820, MADRID');
INSERT INTO `centros`(`NUMCE`, `NOMCE`, `DIRCE`) VALUES 
( '20' , 'RELACION CON CLIENTES', 'CALLE ATOCHA, 405, MADRID');

-- 1. Insertamos los datos de la tabla Empleados, en este caso al haber mayor volumen de datos a introducir lo haremos de una sola vez con un BULK INSERT

INSERT INTO `empleados`(`NUMEM`,`EXTEL`,`FECNA`,`FECIN`,`SALAR`,`COMIS`,`NUMHI`,`NOMEM`,`NUMDE`) VALUES
('110','350','1970/11/10','1985/02/15','1800',NULL,'3','CESAR','121'),
('120','840','1968/06/09','1988/10/01','1900','110','1','MARIO','112'),
('130','810','1965/09/09','1981/02/01','1500','110','2','LUCIANO','112'),
('150','340','1972/08/10','1997/01/15','2600',NULL,'0','JULIO','121'),
('160','740','1980/07/09','2005/11/11','1800','110','2','AUREO','111'),
('180','508','1974/10/18','1996/03/18','2800','50','2','MARCOS','110'),
('190','350','1972/05/12','1992/02/11','1750',NULL,'4','JULIANA','121'),
('210','200','1970/09/28','1999/01/22','1910',NULL,'2','PILAR','100'),
('240','760','1967/02/26','1989/02/24','1700','100','3','LAVINIA','111'),
('250','250','1976/10/27','1997/03/01','2700',NULL,'0','ADRIANA','100'),
('260','220','1973/12/03','2001/07/12','720',NULL,'6','ANTONIO','100'),
('270','800','1975/05/21','2003/09/10','1910','80','3','OCTAVIO','112'),
('280','410','1978/01/10','2010/10/08','1500',NULL,'5','DOROTEA','130'),
('285','620','1979/10/25','2011/02/15','1910',NULL,'0','OTILIA','122'),
('290','910','1967/11/30','1988/02/14','1790',NULL,'3','GLORIA','120'),
('310','480','1976/11/21','2001/01/15','1950',NULL,'0','AUGUSTO','130'),
('320','620','1977/12/25','2003/02/05','2400',NULL,'2','CORNELIO','122'),
('330','850','1958/08/19','1980/03/01','1700','90','0','AMELIA','112'),
('350','610','1979/04/13','1999/09/10','2700',NULL,'1','AURELIO','122'),
('360','750','1978/10/29','1998/10/10','1800','100','2','DORINDA','111'),
('370','360','1977/06/22','2000/01/20','1860',NULL,'1','FABIOLA','121'),
('380','880','1978/03/30','1999/01/01','1100',NULL,'0','MICAELA','112'),
('390','500','1976/02/19','2010/10/08','1290',NULL,'1','CARMEN','110'),
('400','780','1979/08/18','2011/11/01','1150',NULL,'0','LUCRECIA','111'),
('410','660','1968/07/14','1989/10/13','1010',NULL,'0','AZUCENA','122'),
('420','450','1966/10/22','1988/11/19','2400',NULL,'0','CLAUDIA','130'),
('430','650','1967/10/26','1988/11/19','1260',NULL,'1','VALERIANA','122'),
('440','760','1966/09/26','1986/02/28','1260','100','0','LIVIA','111'),
('450','880','1966/10/21','1986/02/28','1260','100','0','SABINA','112'),
('480','760','1965/04/04','1986/02/28','1260','100','1','DIANA','111'),
('490','880','1964/06/06','1988/01/01','1090','100','0','HORACIO','112'),
('500','750','1965/10/08','1987/01/01','1200','100','0','HONORIA','111'),
('510','550','1966/05/04','1986/11/01','1200',NULL,'1','ROMULO','110'),
('550','780','1970/01/10','1998/01/21','600','120','0','SANCHO','111');

 -- 1.1 Introduciomos los índices 
 
 -- ÍNDICE TABLA CENTROS
 ALTER TABLE `centros`
  ADD PRIMARY KEY (`NUMCE`),
  ADD KEY `NUMCE` (`NUMCE`);

-- ÍNDICE TABLA DEPARTAMENTOS
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`NUMDE`),
  ADD KEY `NUMDE`(`NUMDE`);

-- ÍNDICE TABLA EMPLEADOS
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`NUMEM`),
  ADD KEY `NUMEM` (`NUMEM`);

/* 1.2 Introducimos las restricciones en las tablas según corresponda, en este caso en la tabla departamentos y empleados.
Añadimos las restricciones de la tabla departamentos y tabla empleados. La tabla centros no tiene más restricciones que la declarada anteriormente en la PK  (numce)
como NO NULO. En el caso de las entidades Empleados y Departamentos  , tenemos que incluir como restricción  las FK`s , y que se guardarán en el diccionario de datos 
como `DEPARTAMENTOS_fk1` y `EMPLEADOS_fk1`.
Además con la cláusula "ON DELETE NO ACTION ON UPDATE NO ACTION" le estamos indicando una acción referencial
que no elimine o actualice ningún registro de referencia entre la tabla principal y la secundaria (CASCADE) y que no elimine ni actualice un registro de la clave 
de referencia y genere una nueva columna de la tabla secundaria(SET NULL).
*/

-- Restricciones tabla DEPARTAMENTOS

ALTER TABLE `departamentos`
  ADD CONSTRAINT `DEPARTAMENTOS_fk1` FOREIGN KEY (`NUMCE`) REFERENCES `centros` (`numce`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Restriccciones de la tabla EMPLEADOS

ALTER TABLE `empleados`
  ADD CONSTRAINT `EMPLEADOS_fk1` FOREIGN KEY (`NUMDE`) REFERENCES `departamentos` (`numde`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

select * from centros;
select* from departamentos;
select * from empleados;

---------------------------------------------------------------

-- SENTENCIAS SQL:

-- 1.Para cada departamento con presupuesto inferior a 35.000 €, hallar le nombre del Centro donde está ubicado y el máximo salario de sus empleados 
-- (si dicho máximo excede de 1.500 €).  Clasificar alfabéticamente por nombre de departamento.
/*
. Necesitamos el nombre, nomce y MAX(SAL) que corresponde a tres atributos de 3 tablas distintas (departamentos, centros y empleados)
. En la cláusula WHERE es donde relacionamos las tres tablas a través de sus claves y ponemos el filtro de presupuesto < 35.
. Agrupamos por nombre y filtramos por aquellos salarios máximos superiores a 1.500.
. Ordenamos por nombre alfabéticamente.
*/

SELECT nombre, nomce, MAX(salar)
from departamentos, centros, empleados
where (departamentos.numce= centros.numce) AND ( departamentos.numde= empleados.numde) and (presu < 35)
group by nombre
having (MAX(salar) > 1500) 
order by 1;


-- 2. Hallar por orden alfabético los nombres de los departamentos que dependen de los que tienen un presupuesto inferior a 30.000 €. 
-- También queremos conocer el nombre del departamento del que dependen y su presupuesto.

/* Entendemos que se trata de dos queries diferentes , así pues en la primera:

	 -- En el SELECT interno estamos mostrando el número de departamento (numde) cuyo presupuesto supera los 30.000 euros,el resultado lo "añadimos" 
       al primer SELECT. 
       Al hablar la sentencia de dependencia realizamos en la cláusula WHERE un test de pertenencia con IN.
       El resultado es el nombre , presupuesto y numero de departamento del que dependen los departamentos con presupuesto mayor a 35.000 euros.
       
	 -- En la segunda sentencia mostramos cúal es el nombre del departamento del que dependen.
*/     

 SELECT nombre, depde, presu
 FROM DEPARTAMENTOS
 WHERE  depde IN (SELECT NUMDE
				  from departamentos 
                  where (presu < '30'))
ORDER BY 1;

SELECT nombre, presu
FROM DEPARTAMENTOS
WHERE numde like '120';

 -- 3. Obtener los nombres y los salarios medios de los departamentos cuyo salario medio supera al salario medio de la empresa.
 
 /* Funciones de agrupación, SUM y AVG. 
 Estamos obteniendo el nombre, salario medio como salar_media_dpto, de las tablas departamentos y empleados, en el WHERE relacionamos las tablas
 Con esta cláusula,  having AVG(salar) > (select AVG(salar) from empleados) estamos sacando el salario medio de la tabla empleados y selecionando 
 aquellos salarios medios que sean superiores al saleario media de la empresa.El resultado sale agrupado por nombre.
 */             
  
SELECT  nombre, AVG(salar) as salar_media_dpto
from departamentos , empleados
where departamentos.numde= empleados.numde 
group by nombre
having AVG(salar) > (select AVG(salar)
				     from empleados);
              
                
-- 4. Para los departamentos cuyo director lo sea en funciones, hallar el número de empleados y la suma de sus salarios, comisiones y número de hijos.

/*Funciones de agrupación, SUM, AVG, COUNT.
*/

SELECT nombre, tidir, COUNT(numem), SUM(salar), SUM(comis), SUM(numhi)
from empleados, departamentos
where departamentos.numde = empleados.numde
group by nombre
HAVING  (tidir = 'F');

-- 5. Para los departamentos cuyo presupuesto anual supera los 35.000 €, hallar cuantos empleados hay por cada extensión telefónica.

/*Aplicamos restricciones en el WHERE relacionando las dos tablas y seleccionando aquellos presupuestos superiores a 35.000 euros.
Sacamos el nombre del departametno, la extension de teléfono y el numero de empleados  que cumplen los filtros introducidos y 
lo agrupamos por extensión de tlf.
*/

SELECT nombre, COUNT(numem), extel
from empleados, departamentos
where (empleados.numde=departamentos.numde) AND (presu > 35)
group by extel;               

-- 6. Hallar por orden alfabético los nombres de los empleados y su número de hijos para aquellos que son directores en funciones.

/* De nuevo aplicamos filtros en la cláusula WHERE , relaciones entre tablas y directores en funciones, ordenamos los resultados por nombre de empleado.
*/

SELECT nomem, numhi, numem
from empleados
where numem IN (SELECT  direc
				from departamentos
				where (tidir = 'F'))
order by 1;			

-- 7. Hallar si hay algún departamento (suponemos que sería de reciente creación) que aún no tenga empleados asignados ni director en propiedad.
/*Introducimos el PRIMER filtro en la cláusula WHERE, empleados que no sean director en propiedad.
  En el filtro HAVING , numem = 0, es decir, que no tenga empleados asiganados. Agrupamos el resultado por 'numde' y lo ordenamos.
*/

SELECT departamentos.numde, nombre
from departamentos, empleados
where departamentos.numde = empleados.numde and tidir not like 'P'
group by numde
having count(numem) = 0
order by 1;
				 
-- 8. Añadir un nuevo departamento de nombre NUEVO y con director en funciones.

INSERT INTO `departamentos` (`NUMDE`, `NUMCE`, `DIREC`, `TIDIR`, `PRESU`, `DEPDE`, `NOMBRE`) VALUES
('140', '10' ,  '150', 'F','15', NULL ,'NUEVO');                 

SELECT * FROM DEPARTAMENTOS;

-- 9. Añadir un nuevo empleado de nombre NORBERTO y sin departamento asignado. Inventar el resto de datos.

INSERT INTO `empleados`(`NUMEM`,`EXTEL`,`FECNA`,`FECIN`,`SALAR`,`COMIS`,`NUMHI`,`NOMEM`,`NUMDE`) VALUES
('600','900','1970/11/19','1985/04/15','1800',NULL,'1','NORBERTO',NULL);

SELECT * FROM EMPLEADOS;

-- 10. Muestra los departamentos que no tienen empleados.

/*Test de existencia , cláusula NOT EXISTS.
*/

SELECT departamentos.nombre, departamentos.numde, empleados.numem
from departamentos, empleados
where NOT EXISTS (SELECT numde, numem
				  from empleados);
                 
-- 11. Muestra los nombres de departamentos que no tienen empleados haciendo uso la combinación externa LEFT JOIN. 
                
/* Simulamos (departamentos- empleados) un MINUS, ya que en SQL no se puede hacer (T1 - T2) no lo implementa.
*/ 

SELECT DISTINCT departamentos.nombre, empleados.nomem
from departamentos LEFT JOIN empleados
ON departamentos.numde= empleados.numde
where empleados.numde IS NULL;

-- 12. Muestra los nombres de departamentos que no tienen empleados haciendo uso la combinación externa RIGH JOIN. 
-- Muestra una segunda columna con los nombres de empleados para asegurarnos que realmente está a NULL. 

SELECT DISTINCT departamentos.nombre, empleados.nomem
from empleados RIGHT JOIN departamentos
ON departamentos.numde= empleados.numde
where empleados.numde IS NULL;                 

-- 13. Muestra los nombres de empleados que no tienen departamento haciendo uso la combinación externa LEFT JOIN. 
-- Muestra una segunda columna con los nombres de departamentos para asegurarnos que realmente esta a NULL.

SELECT DISTINCT  empleados.nomem, departamentos.nombre
from empleados LEFT JOIN departamentos
ON empleados.numde=departamentos.numde
where departamentos.numde IS NULL;

-- 14. Muestra los nombres de empleados que no tienen departamento haciendo uso la combinación externa RIGHT JOIN. 
-- Muestra una segunda columna con los nombres de empleados para asegurarnos que realmente esta a NULL.

SELECT DISTINCT  empleados.nomem, departamentos.nombre
from departamentos RIGHT JOIN empleados
ON empleados.numde=departamentos.numde
where departamentos.numde IS NULL;

-- 15. Muestra los departamentos que no tienen empleados y los empleados que no tiene departamento haciendo uso la combinación externa FULL JOIN.

/* MySQL tampoco implementa FULL JOIN , por tanto tenemos que simularlo.Para ello hacemos la UNION de un LEFT JOIN y un RIGHT JOIN
*/
SELECT DISTINCT departamentos.nombre, empleados.nomem
from empleados RIGHT JOIN departamentos
ON departamentos.numde= empleados.numde
where empleados.numde IS NULL
UNION
SELECT DISTINCT  empleados.nomem, departamentos.nombre
from empleados LEFT JOIN departamentos
ON empleados.numde=departamentos.numde
where departamentos.numde IS NULL;

-- 16. Muestra los empleados y sus respectivos departamentos haciendo uso de la combinación interna INNER JOIN. 
-- ¿Aparecen el departamento NUEVO y el empleado NORBERTO?¿Por qué?

/* No , porque en la cláusula WHERE estamos seleccionando las filas que cumplan la condicion " empleados.numde=departamentos.numde "
ambas son claves primarias y tienen como restricción definida anteriormente NOT NULL, por tanto descarta los NULOS.
*/

SELECT nomem, numem, nombre
from empleados, departamentos
where empleados.numde=departamentos.numde;

-- 17. Realiza la misma consulta anterior donde se cumpla la condición que NUMDE está a NULL. ¿Aparece algún resultado?¿Por qué?
/* No, la PK tiene como restricción NOT NULL.Solo en el caso de que  desactivemos las restricciones podría aceptar nulos.
*/

SELECT nomem, numem, nombre, empleados.numde
from empleados, departamentos
where (empleados.numde=departamentos.numde) AND (empleados.numde IS NULL);

-- 18. Muestra los empleados y sus respectivos departamentos haciendo uso de la combinación interna NATURAL JOIN.

/*NATURAL JOIN es un INNER JOIN , establecen una relación de igualdad entre campos que se llaman igual, por tanto el resultado de hacerlo de 
una manera u otra es el mismo.
*/

-- NATURAL JOIN
SELECT nomem,numde
FROM departamentos NATURAL JOIN empleados;

-- INNER JOIN
SELECT empleados.nomem, departamentos.numde
from departamentos, empleados
where departamentos.numde=empleados.numde;

-- 19. Muestra la combinación de las 3 tablas CENTROS, DEPARTAMENTOS y EMPLEADOS haciendo uso de NATURAL JOIN.

-- NATURAL JOIN
SELECT nomem,numde,numce
FROM empleados NATURAL JOIN departamentos NATURAL JOIN centros;

-- INNER JOIN
SELECT empleados.nomem, departamentos.numde, centros.numce
from departamentos, empleados,centros
where (departamentos.numde=empleados.numde) AND (departamentos.numce=centros.numce);

-- 20. Borra los registros dados de alta para el departamento NUEVO y el empleado introducido en el apartado anterior.

DELETE
from departamentos 
where nombre like 'nuevo';

select *from departamentos;

DELETE
from empleados 
where nomem like 'Norberto';

select* from empleados;