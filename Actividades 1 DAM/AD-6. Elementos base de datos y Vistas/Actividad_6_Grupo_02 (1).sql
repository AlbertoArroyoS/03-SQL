-- Esta base de datos está hecha en MySQL

-- Creamos la base de datos sin contenido y la ponemos en memoria.

CREATE DATABASE IF NOT EXISTS TURISMO;
USE TURISMO;

-- El primer paso será crear todas las tablas (CREATE TABLE), definiendo el nombre de  las columnas y el tipo de dato o dominio que hemos considerado mas adecuado.

-- 1. Creamos la tabla VISITANTE.

CREATE TABLE `VISITANTE` 
(
  `DNI`       varchar(9), 
  `NOMBRE`    varchar(20),
  `DOMICILIO` varchar(100),
  `PROFESION` varchar(40)
);


-- 2. Creamos la tabla COMUNIDADAUTONOMA

CREATE TABLE `COMUNIDADAUTONOMA`
(
  `CODCA`          int(4),
  `NOMBRE`         varchar(40),
  `ORGRESPONSABLE`  varchar(200)
);


-- 3. Creamos la tabla CA-PN

CREATE TABLE `CA-PN`
(
  `CODCA` 			int(4),
  `CODPN` 			int(4),
  `SUPERFICIE`		varchar(40)
);


-- 4. Creamos la tabla ESPECIE. 

CREATE TABLE `ESPECIE`
(
  `CODESPECIE`        int(4),
  `NOMBRECIENTIFICO`  varchar(100),
  `NOMBREVULGAR`      varchar(100)
);


-- 5. Creamos la tabla ANIMAL

CREATE TABLE `ANIMAL`
(
  `CODESPECIE`     int(4),
  `ALIMENTACION`   varchar(100),
  `PERIODOCELO`    varchar(200)
);


-- 6. Creamos la tabla VEGETAL

CREATE TABLE `VEGETAL`
(
  `CODESPECIE`       int(4),
  `FLORACION`        varchar(20),
  `PERIODOFLORACION` varchar(20)
);


-- 7. Creamos la tabla MINERAL

CREATE TABLE `MINERAL`
(
  `CODESPECIE`  int(4),
  `TIPO`        varchar(100)
);


-- 8. Creamos la tabla E-V

CREATE TABLE `E-V`
(
  `CODEXCURSION` int(4),
  `DNI`          varchar(9)
);


-- 9. Creamos la tabla A-V

CREATE TABLE `A-V`
(
  `CODALOJAMIENTO` int(2),
  `DNI`            varchar(9),
  `FECHAINICIO`    date,
  `FECHAFIN`       date
);


-- 10. Creamos la tabla PARQUENATURAL. 

CREATE TABLE `PARQUENATURAL` (
  `CODPN` int(3),
  `NOMBRE` varchar(70),
  `FECHADECLARACION`  date
);


-- 11. Creamos la tabla E-A

CREATE TABLE `E-A` 
(
  `CODESPECIE`     int(4),
  `CODAREA`     varchar(20),
  `CANTINDIVIDUOS` int(6)
);


-- 12. Creamos la tabla AREA

CREATE TABLE `AREA`
(
  `NOMBREA` varchar(20),
  `EXTENSION`  int(4),
  `CODPN`      int(4)
);


-- 13. Creamos la tabla VEHICULO
CREATE TABLE `VEHICULO`
(
  `MATRICULA`   varchar(7),
  `TIPO`		varchar(20),
  `DNI`         varchar(9)
);


-- 14. Creamos la tabla I-P

CREATE TABLE `I-P`
(
  `CODPROYECTO`  int(4),
  `DNI`          varchar(9)
);


-- 15. Creamos la tabla PROYECTO

CREATE TABLE `PROYECTO`
(
  `CODPROY`  int(4),
  `PRESUPUESTO`  int,
  `FECHAINICIO`  date,
  `FECHAFIN`     date,
  `CODESPECIE`   int(4)
);


-- 16. Creamos la tabla EXCURSION. Tratamos las columnas fecha y hora como  tipo datetime.

CREATE TABLE `EXCURSION` 
(
  `CODEXCURSION`   int(4), 
  `FECHA_HORA`     datetime,
  `APIE`           varchar(2),
  `CODALOJAMIENTO` int(2)
);


-- 17. Creamos la tabla ALOJAMIENTO

CREATE TABLE `ALOJAMIENTO` 
(
  `CODALOJAMIENTO`  int(2),   
  `CATEGORIA`       varchar(20),
  `CAPACIDAD`       int(3),
  `CODPN`           int(4)
);


-- 18. Creamos la tabla ENTRADA
CREATE TABLE `ENTRADA` 
(
  `CODENTRADA`  int(2),   
  `CODPN`       int(4)
);


-- 19. Creamos la tabla PERSONAL. Definimos la columna `NSS` como NOT NULL.
CREATE TABLE `PERSONAL`
(
  `DNI`        varchar(9),
  `NSS`        char(12) NOT NULL,
  `NOMBRE`     varchar(40),
  `DIRECCION`  varchar(100),
  `TFNODOMICILIO`   varchar(9),
  `TFNOMOVIL`  varchar(9),
  `SUELDO`     decimal(6,2), -- presupuesto en decimal o no y cuanto
  `CODPN`      int(4)
);


-- 20. Creamos la tabla CONSERVADOR

CREATE TABLE `CONSERVADOR`
(
  `DNI`        varchar(9),
  `TAREA`      varchar(40),
  `NOMBREA` varchar(40)
);


-- 21. Creamos la tabla VIGILANTE

CREATE TABLE `VIGILANTE`
(
  `DNI`        varchar(9),
  `NOMBREA` varchar(20)
);


-- 22. Creamos la tabla INVESTIGADOR
CREATE TABLE `INVESTIGADOR`
(
  `DNI`        varchar(9),
  `TITULACION` varchar(100)
);


-- 23. Creamos la tabla GESTOR
CREATE TABLE `GESTOR`
(
  `DNI`        varchar(9),
  `CODENTRADA` int(2)
);


-- ----------------------------------------------------------------
-- ------------------- INSERCIÓN DE DATOS -------------------------
-- ----------------------------------------------------------------

--  

-- 1.1 Introducimos con BULK INSERT los datos de la tabla VISITANTE

INSERT INTO `VISITANTE` (`DNI`, `NOMBRE`, `DOMICILIO`, `PROFESION`) 
VALUES 
('23456789A', 'Luis García', 'Calle de la Luna, 23, Barcelona', 'Arquitecto'),
('87654321B', 'Carlos Martínez', 'Avenida del Sol, 45, Madrid', 'Chef'),
('45678901C', 'Eduardo Hernández', 'Plaza del Árbol, 12, Valencia', 'Investigador científico'),
('89012345D', 'Alejandro López', 'Calle de la Brisa, 7, Málaga', 'Abogado'),
('32109876E', 'Antonio Pérez', 'Avenida de las Flores, 19, Sevilla', 'Enfermero'),
('65432109F', 'Ana Rodríguez', 'Plaza del Paseo, 31, Bilbao', 'Mecánica'),
('78901234G', 'Sofía Gómez', 'Calle de la Montaña, 88, Santiago de Compostela', 'Diseñadora gráfica'),
('54321098H', 'Andrea Sánchez', 'Avenida del Mar, 56, Alicante', 'Psicóloga'),
('67890123I', 'Claudia Flores', 'Plaza de la Esperanza, 3, Zaragoza', 'Agricultora'),
('21098765J', 'María Torres', 'Calle de la Playa, 2, Palma de Mallorca', 'Veterinaria');


-- 2.1 Introducimos con BULK INSERT los datos de la tabla COMUNIDADAUTONOMA

INSERT INTO `COMUNIDADAUTONOMA` (`CODCA`, `NOMBRE`, `ORGRESPONSABLE`)
VALUES
(1010, 'Andalucía', 'Consorcio de Gestión de Parques Naturales de Andalucía'),
(1020, 'Aragón', 'Instituto para la Conservación de la Naturaleza de Aragón'),
(1030, 'Asturias', 'Agencia para la Gestión de Parques Naturales de Asturias'),
(1040, 'Baleares', 'Consorcio de Espacios Naturales de las Islas Baleares'),
(1050, 'Canarias', 'Fundación para la Gestión de Parques Naturales de Canarias'),
(1060, 'Cantabria', 'Patronato de la Red de Parques Naturales de Cantabria'),
(1070, 'Castilla y León', 'Entidad de Conservación de Espacios Naturales de Castilla y León'),
(1080, 'Castilla-La Mancha', 'Organismo Autónomo de Parques Naturales de Castilla-La Mancha'),
(1090, 'Cataluña', 'Instituto para la Conservación de la Naturaleza de Cataluña'),
(1011, 'Comunidad de Madrid', 'Agencia para la Gestión de la Biodiversidad y Paisaje de la Comunidad Valenciana'),
(1012, 'Comunidad Valenciana', 'Consejo de Gestión de los Espacios Naturales Protegidos de Extremadura'),
(1013, 'Extremadura', 'Instituto para la Sostenibilidad de los Recursos Naturales de Galicia'),
(1014, 'Galicia', 'Consejo de Administración de los Espacios Naturales Protegidos de La Rioja'),
(1015, 'La Rioja', 'Consejo Asesor de los Parques Naturales de la Comunidad de Madrid'),
(1016, 'Navarra', 'Entidad de Conservación de los Espacios Naturales de Murcia'),
(1017, 'País Vasco', 'Consorcio para la Gestión de los Parques Naturales de Navarra'),
(1018, 'Región de Murcia', 'Organismo Autónomo de Parques Nacionales del País Vasco');


-- 3.1 Introducimos con BULK INSERT los datos de la tabla CA-PN

INSERT INTO `CA-PN` (`CODCA`, `CODPN`, `SUPERFICIE`)
VALUES
(1030, 001, '3827ha'),
(1014, 002, '2103ha'),
(1014, 003, '7386ha'),
(1014, 004, '6622ha'),
(1014, 005, '1411ha'),
(1060, 006, '8313ha'),
(1030, 007, '2683ha'),
(1080, 008, '4705ha'),
(1010, 009, '6016ha'),
(1010, 010, '4224ha'),
(1010, 011, '5034ha'),
(1010, 012, '7124ha'),
(1070, 013, '8727ha'),
(1070, 014, '6239ha'),
(1070, 015, '2029ha'),
(1070, 016, '3674ha'),
(1020, 017, '8038ha'),
(1020, 018, '1257ha'),
(1020, 019, '7896ha'),
(1010, 020, '3142ha'),
(1010, 021, '4851ha'),
(1010, 022, '5243ha'),
(1010, 023, '9943ha'),
(1010, 024, '8763ha'),
(1050, 025, '1519ha'),
(1010, 026, '4472ha'),
(1010, 027, '2816ha'),
(1070, 028, '4092ha'),
(1010, 029, '9397ha'),
(1010, 030, '1468ha');


-- 4.1 Introducimos con BULK INSERT los datos de la tabla ESPECIE

INSERT INTO `ESPECIE` (`CODESPECIE`, `NOMBRECIENTIFICO`,`NOMBREVULGAR`)
VALUES 
(101, 'Struthio Canelus', 'Avestruz'),
(102, 'Equus Burachelli', 'Cebra Comun'),
(103, 'Cervus Elaphus', ' Ciervo Comun'),
(104, ' Loxodonta Africana', 'Elefante'),
(105, 'Panthera Leo', 'Leon'),
(106, 'Ursus Arctos', 'Oso Pardo'),
(201, 'Cordia Alliodore' , 'Laurel'),
(202, 'Cupressus', 'Cipres'),
(203, 'Dianthus Caryophyllus', 'Clavel'),
(204, 'Geranium sp', 'Geranio'),
(205, 'Helianthus Annus', 'Girasol'),
(206, 'Hibiscus sp' , 'Amapola'),
(301, ' Fe3O4' , 'Magnetita'),
(302, 'CaCO3', 'Calcita'),
(303, 'Cu', 'Cobre'),
(304, 'Au','Oro'),
(305, 'S', 'Azufre'),
(306, 'FeS2', 'Pirita');


-- 5.1 Introducimos con BULK INSERT los datos de la tabla ANIMAL

INSERT INTO `ANIMAL`(`CODESPECIE`, `ALIMENTACION`, `PERIODOCELO`)
VALUES
('101', 'Plantas, frutos, flores ,forraje ganadero , leguminosas', 'Primavera-Verano'),
('102', 'Herbívoros, pasto fibroso, hojas, tallos, brotes', 'En temporada de lluvias donde abundan las fuentes de alimentos'),
('103', 'Hierbas y plantas', 'Septiembre-Octubre'),
('104',  'Raíces, hierba, fruta y corteza', 'Cada 3-4 meses'),
('105', 'Carnivora fundamentalmente cebras, gacelas y  bufalos', 'Algunos días varias veces al año'),
('106', 'Raíces, brotes, miel, fruta, bayas, peces, insectos', 'Primavera');


-- 6.1 Introducimos con BULK INSERT los datos de la tabla VEGETAL

INSERT INTO `VEGETAL`(`CODESPECIE`, `FLORACION`,  `PERIODOFLORACION`)
VALUES
(201, 'Adelfa','Primavera-Otoño'),
(202, 'Nuez de cipres', 'Enero y Abril'),
(203, 'Clavel', 'Primavera-Verano'),
(204 , 'Geranio', 'Mayo-Septiembre'),
(205, 'Girasol','Verano-Otoño'),
(206, 'Ampola', 'Primavera-Verano');


-- 7.1 Introducimos con BULK INSERT los datos de la tabla MINERAL

INSERT INTO `MINERAL`(`CODESPECIE`,  `TIPO`)
VALUES
(301, 'Oxido, Hidroxido'),
(302, 'Nitrato, Carbonato, Borato'),
(303, 'Elementos Nativos'),
(304, 'Elementos Nativos'),
(305, 'Elementos Nativos'),
(306, 'Sulfuros, sulfosales');


-- 8.1 Introducimos con BULK INSERT los datos de la tabla E-V

INSERT INTO `E-V` (`CODEXCURSION`, `DNI`) 
VALUES
(1, '23456789A'),
(1, '87654321B'),
(1, '45678901C'),
(2, '89012345D'),
(2, '32109876E'),
(2, '65432109F'),
(3, '78901234G'),
(3, '54321098H'),
(3, '67890123I'),
(3, '21098765J');


-- 9.1 Introducimos con BULK INSERT los datos de la tabla A-V

INSERT INTO `A-V` (`CODALOJAMIENTO`, `DNI`, `FECHAINICIO`, `FECHAFIN`) 
VALUES
(10, '23456789A', '2023-01-01', '2023-01-05'),
(10, '87654321B', '2023-01-01', '2023-01-05'),
(10, '45678901C', '2023-01-01', '2023-01-05'),
(12, '89012345D', '2023-01-17', '2023-01-24'),
(12, '32109876E', '2023-01-17', '2023-01-24'),
(12, '65432109F', '2023-01-17', '2023-01-24'),
(13, '78901234G', '2023-01-18', '2023-01-26'),
(13, '54321098H', '2023-01-18', '2023-01-26'),
(13, '67890123I', '2023-01-18', '2023-01-26'),
(13, '21098765J', '2023-01-18', '2023-01-26');


-- 10.1 Introducimos con BULK INSERT los datos de la tabla PARQUENATURAL

INSERT INTO `PARQUENATURAL` (`CODPN`, `NOMBRE`, `FECHADECLARACION`)
VALUES
(001, 'Parque Nacional de los Picos de Europa', '1981-03-10'),
(002, 'Parque Natural de las Dunas de Corrubedo', '1982-12-08'),
(003, 'Parque Natural de las Fragas do Eume', '1991-10-28'),
(004, 'Parque Natural de O Invernadeiro', '1994-04-16'),
(005, 'Parque Nacional de las Islas Atlánticas de Galicia', '1937-05-07'),
(006, 'Parque Natural de las Marismas de Santoña', '1966-05-02'),
(007, 'Parque Natural de Somiedo', '1971-04-26'),
(008, 'Parque Natural del Alto Tajo', '1980-04-22'),
(009, 'Parque Natural de las Sierras de Cazorla', '1981-05-21'),
(010, 'Parque Natural de la Sierra de Andújar', '1954-04-12'),
(011, 'Parque Natural de la Sierra de Aracena', '1934-08-10'),
(012, 'Parque Natural del Estrecho', '1983-09-15'),
(013, 'Parque Nacional de la Sierra de Guadarrama', '1935-01-04'),
(014, 'Parque Natural de Fuentes Carrionas', '1965-04-16'),
(015, 'Parque Natural del Lago de Sanabria y Alrededores', '1946-06-14'),
(016, 'Parque Natural de las Hoces del Río Duratón', '1982-11-05'),
(017, 'Parque Natural del Moncayo', '1967-05-13'),
(018, 'Parque Natural de los Pirineos', '1964-09-12'),
(019, 'Parque Natural de los Valles Occidentales', '1938-01-21'),
(020, 'Parque Natural de Sierra Mágina', '1954-04-21'),
(021, 'Parque Natural de la Sierra de Baza', '1980-09-10'),
(022, 'Parque Natural de la Sierra de Huétor', '1976-12-04'),
(023, 'Parque Natural de la Sierra de las Nieves', '1952-10-18'),
(024, 'Parque Natural del Cabo de Gata-Níjar', '1932-09-26'),
(025, 'Parque Nacional de Garajonay', '1994-05-06'),
(026, 'Parque Natural de la Sierra de Grazalema', '1997-03-24'),
(027, 'Parque Natural de la Sierra de Hornachuelos', '1987-03-19'),
(028, 'Parque Natural de la Sierra de las Quilamas', '1987-11-01'),
(029, 'Parque Natural de la Sierra de Castril', '1945-07-16'),
(030, 'Parque Natural de los Alcornocales', '1957-07-20');


-- 11.1 Introducimos con BULK INSERT los datos de la tabla E-A

INSERT INTO `E-A` (`CODESPECIE`, `CODAREA`, `CANTINDIVIDUOS`) 
VALUES 
('101', 'AreaAves', '2'),
('102', 'AreaMamiferos', '4'),
('103', 'AreaMamiferos', '2'),
('104',  'AreaMamiferosII', '3'),
('105', 'AreaMamiferosII', '2'),
('106', 'AreaFelinos', '5');


-- 12.1 Introducimos con BULK INSERT los datos de la tabla AREA

INSERT INTO `AREA` (`NOMBREA`, `EXTENSION`, `CODPN`) 
VALUES 
('AreaAves', 1500, 005),
('AreaMamiferos', 1000, 010),
('AreaMamiferosII', 5000, 015),
('AreaFelinos', 3000, 020);


-- 13.1 Introducimos con BULK INSERT los datos de la tabla VEHICULO

INSERT INTO `VEHICULO` (`MATRICULA`, `TIPO`, `DNI`) 
VALUES 
('1234BCS', 'Land Rover', '22233456E'),
('6643JBD', 'Toyota', '12340000B');


-- 14.1 Introducimos con BULK INSERT los datos de la tabla I-P

INSERT INTO `I-P` (`CODPROYECTO`, `DNI`) 
VALUES 
('100', '02330333B'),
('200', '02440444B'),
('300', '02440444B');


-- 15.1 Introducimos con BULK INSERT los datos de la tabla PROYECTO

INSERT INTO `PROYECTO` (`CODPROY`, `PRESUPUESTO`, `FECHAINICIO`, `FECHAFIN`, `CODESPECIE`) 
VALUES 
(100, 150000, '2020-12-01', '2021-05-01', 101),
(200, 500000, '2019-01-01', '2023-02-20', 204),
(300, 200000, '2020-07-18', '2022-10-04', 304);


-- 16.1 Introducimos con BULK INSERT los datos de la tabla EXCURSION

INSERT INTO `EXCURSION` (`CODEXCURSION`, `FECHA_HORA`, `APIE`, `CODALOJAMIENTO`) 
VALUES 
(1, '2023-01-01 10:00:00', 'si', 10),
(2, '2023-01-17 10:00:00', 'si', 12),
(3, '2023-01-18 12:00:00', 'no', 13),
(4, '2023-03-19 12:00:00', 'no', 14),
(5, '2023-04-01 12:00:00', 'si', 15),
(6, '2023-05-17 10:00:00', 'no', 16),
(7, '2023-05-18 10:00:00', 'si', 6),
(8, '2023-05-19 12:00:00', 'no', 30),
(9, '2023-06-01 12:00:00', 'no', 21),
(10, '2023-06-17 12:00:00', 'si', 22);


-- 17.1 Introducimos con BULK INSERT los datos de la tabla ALOJAMIENTO

INSERT INTO `ALOJAMIENTO` (`CODALOJAMIENTO`, `CATEGORIA`, `CAPACIDAD`, `CODPN`)
VALUES 
(30, 'casa', 4, 001),
(29, 'casa', 4, 002),
(28, 'casa', 4, 003),
(27, 'apartamento', 4, 004),
(26, 'casa', 4, 005),
(25, 'apartamento', 4, 006),
(24, 'casa', 5, 007),
(23, 'apartamento', 5, 008),
(22, 'casa', 5, 009),
(21, 'apartamento', 5, 010),
(20, 'casa', 5, 011),
(19, 'apartamento', 5, 012),
(18, 'casa', 7, 013),
(17, 'apartamento', 7, 014),
(16, 'casa', 8, 015),
(15, 'apartamento', 2, 016),
(14, 'apartamento', 4, 017),
(13, 'casa', 3, 018),
(12, 'casa', 2, 019),
(11, 'casa', 3, 020),
(10, 'apartamento', 3, 021),
(9, 'casa', 5, 022),
(8, 'apartamento', 6, 023),
(7, 'apartamento', 6, 024),
(6, 'apartamento', 6, 025),
(5, 'casa', 8, 026),
(4, 'casa', 2, 027),
(3, 'apartamento', 2, 028),
(2, 'apartamento', 3, 029),
(1, 'casa', 5, 030);

-- 18.1 Introducimos con BULK INSERT los datos de la tabla ENTRADA

INSERT INTO `ENTRADA` (`CODENTRADA`, `CODPN`)
VALUES 
(20, 001),
(21, 002),
(22, 003),
(23, 004),
(24, 005),
(25, 006),
(26, 007),
(27, 008),
(28, 009),
(29, 010),
(30, 011),
(31, 012),
(32, 013),
(33, 014),
(34, 015),
(35, 016),
(36, 017),
(37, 018),
(38, 019),
(39, 020),
(40, 021),
(41, 022),
(42, 023),
(43, 024),
(44, 025),
(45, 026),
(46, 027),
(47, 028),
(48, 029),
(49, 030);

-- 19.1 Introducimos con BULK INSERT los datos de la tabla PERSONAL

INSERT INTO `PERSONAL` (`DNI`, `NSS`, `NOMBRE`, `DIRECCION`, `TFNODOMICILIO`, `TFNOMOVIL`, `SUELDO`, `CODPN`)
VALUES 
('12345678A', '985106903214', 'Juan Gómez', 'Calle Álcala', '987654321', '612300999', 2000.00, 001),
('42412013X', '617946964296', 'Pedro Morales', 'Calle Serrano', '901234567', '678456654', 1500.00, 002),
('22233456E', '474864741772', 'Santiago Álvarez', 'Calle del Prado', '923456789', '600987444', 1500.00, 003),
('12340000B', '953998257762', 'María Rodríguez', 'Avenida Real', '936925814', '611222333', 1750.00, 004),
('24564556D', '787128690369', 'Lucía Pérez', 'Avenida de la Victora', '975311224', '644321123', 2000.00, 004),
('44444444Z', '059096478622', 'Isabel Sánchez', 'Calle de Gran Vía', '983012546', '699000999', 2400.00, 005),
('01111011A', '202670218743', 'Miguel Gomez', 'Calle Pintor', '92633545', '609876543', 1500.00, 006),
('01440444A', '247755672445', 'Enrique Fernandez', 'Calle Carlos Eraña', '926116981', '611222000', 3000.00, 007),
('02330333B', '329545933852', 'Elsa Ruiz', 'Calle Mata', '926299223', '654609812', 1250.00, 008),
('02440444B', '072848356795', 'Erika Arroyo', 'Calle Bachiller', '926227482', '699333000', 1750.00, 009),
('03330333C', '310338223745', 'Maria Perez', 'Calle Paloma', '926333333', '678456000', 2050.00, 010),
('03440444C', '537085260998', 'Inmaculada Aguado', 'Calle Tercia', '92636513', '600000001', 3500.00, 011);

-- 20.1 Introducimos con BULK INSERT los datos de la tabla CONSERVADOR

INSERT INTO `CONSERVADOR` (`DNI`, `TAREA`, `NOMBREA`)
VALUES
('24564556D', 'Preparacion de alimentos', 'AreaFelinos'),
('44444444Z', 'Toma de muestras', 'AreaMamiferosII'),
('01111011A', 'Mantenimiento y limpieza', 'AreaAves');

-- 21.1 Introducimos con BULK INSERT los datos de la tabla VIGILANTE

INSERT INTO `VIGILANTE` (`DNI`, `NOMBREA`)
VALUES 
('22233456E', 'AreaMamiferos'),
('12340000B', 'AreaFelinos');

-- 22.1 Introducimos con BULK INSERT los datos de la tabla INVESTIGADOR

INSERT INTO `INVESTIGADOR` (`DNI`, `TITULACION`)
VALUES 
('02330333B', 'Veterinario'),
('02440444B', 'Biologo');

-- 23.1 Introducimos con BULK INSERT los datos de la tabla GESTOR

INSERT INTO `GESTOR` (`DNI`, `CODENTRADA`)
VALUES 
('12345678A', '20'),
('42412013X', '30');


-- ----------------------------------------------------------------
-- ------------ CREACIÓN DE CLAVES Y RESTRICCIONES ----------------
-- ----------------------------------------------------------------

-- Lo hacemos en un ORDEN específico que sigue la LÓGICA DEL MODELO RELACIONAL --

/* Al añadir las claves primarias en las tablas el sistema añade automáticamente la restricción NOT NULL. Del mismo modo,
el SGBD establece la restricción NULL para el resto de columnas ,salvo que explicitamente indiquemos lo contrario.
Para nuestra base de datos hemos declarado la columna `NSS`de la tabla PERSONAL como UNIQUE y NOT NULL.

El orden correcto será:
	1º Asignar primero las PK´s  a las tablas. Todas tendrán por defecto la restricción NOT NULL.
    2º Una vez declaradas las claves primarias podemos introducir como restricción las FK´s que las relacionan.
    3º A partir de este punto podemos introducir todas las restricciones que consideremos oportunas para asegurar la integridad referencial,
    en la cláusula REFERENCES. ON DELETE NO ACTION (El servidor MySQL rechaza la operación de eliminación o actualización de la tabla principal 
    si hay un valor de clave externa relacionado en la tabla a la que se hace referencia).
*/

-- 1.2 Asignamos la clave y la restricción a la tabla VISITANTE

ALTER TABLE `VISITANTE` ADD CONSTRAINT PRIMARY KEY (`DNI`) ; 

-- 2.2 Asignamos la clave y la restricción a la tabla COMUNIDADAUTONOMA

ALTER TABLE `COMUNIDADAUTONOMA` ADD CONSTRAINT PRIMARY KEY (`CODCA`); 

-- 10.2 Asignamos la clave y la restricción a la tabla PARQUENATURAL

ALTER TABLE `PARQUENATURAL` ADD CONSTRAINT PRIMARY KEY (`CODPN`);

-- 4.2 Asignamos la clave y la restricción a la tabla ESPECIE

ALTER TABLE `ESPECIE` ADD CONSTRAINT PRIMARY KEY (`CODESPECIE`);

-- 5.2 Asignamos las claves y las restricciones a la tabla ANIMAL. Restricciones de FK 

ALTER TABLE `ANIMAL` ADD CONSTRAINT PRIMARY KEY (`CODESPECIE`);
ALTER TABLE `ANIMAL` ADD CONSTRAINT FK1_ANIMAL FOREIGN KEY (`CODESPECIE`) 
REFERENCES `ESPECIE` (`CODESPECIE`) ON DELETE NO ACTION;

-- 6.2 Asignamos las claves y las restricciones a la tabla VEGETAL

ALTER TABLE `VEGETAL` ADD CONSTRAINT PRIMARY KEY (`CODESPECIE`);
ALTER TABLE `VEGETAL` ADD CONSTRAINT FK1_VEGETAL FOREIGN KEY (`CODESPECIE`) 
REFERENCES `ESPECIE` (`CODESPECIE`) ON DELETE NO ACTION;

-- 7.2 Asignamos las claves y las restricciones a la tabla MINERAL

ALTER TABLE `MINERAL` ADD CONSTRAINT PRIMARY KEY (`CODESPECIE`);
ALTER TABLE `MINERAL` ADD CONSTRAINT FK1_MINERAL FOREIGN KEY (`CODESPECIE`) 
REFERENCES `ESPECIE` (`CODESPECIE`) ON DELETE NO ACTION;

-- 3.2 Asignamos las claves y las restricciones a la tabla CA-PN

ALTER TABLE `CA-PN` ADD CONSTRAINT PRIMARY KEY (`CODCA`, `CODPN`);
ALTER TABLE `CA-PN` ADD CONSTRAINT FK1_CA_PN FOREIGN KEY (`CODCA`) 
REFERENCES `COMUNIDADAUTONOMA`(`CODCA`) ON DELETE NO ACTION;
ALTER TABLE `CA-PN` ADD CONSTRAINT FK2_CA_PN FOREIGN KEY (`CODPN`) 
REFERENCES `PARQUENATURAL`(`CODPN`)ON DELETE NO ACTION; 

-- 18.2 Asignamos las claves y las restricciones a la tabla ENTRADA

ALTER TABLE `ENTRADA` ADD CONSTRAINT PRIMARY KEY (`CODENTRADA`);
ALTER TABLE `ENTRADA` ADD CONSTRAINT FK1_ENTRADA FOREIGN KEY (`CODPN`)
REFERENCES `PARQUENATURAL` (`CODPN`) ON DELETE NO ACTION;

-- 17.2 Asignamos las claves y las restricciones a la tabla ALOJAMIENTO

ALTER TABLE `ALOJAMIENTO` ADD CONSTRAINT PRIMARY KEY (`CODALOJAMIENTO`);
ALTER TABLE `ALOJAMIENTO` ADD CONSTRAINT FK1_ALOJAMIENTO FOREIGN KEY (`CODPN`)
REFERENCES `PARQUENATURAL` (`CODPN`) ON DELETE NO ACTION;

-- 16.2 Asignamos las claves y las restricciones a la tabla EXCURSIÓN

ALTER TABLE `EXCURSION` ADD CONSTRAINT PRIMARY KEY (`CODEXCURSION`);
ALTER TABLE `EXCURSION` ADD CONSTRAINT FK1_EXCURSION FOREIGN KEY (`CODALOJAMIENTO`)
REFERENCES `ALOJAMIENTO` (`CODALOJAMIENTO`) ON DELETE NO ACTION;


-- 8.2 Asignamos las claves y las restricciones a la tabla E-V

ALTER TABLE `E-V` ADD CONSTRAINT PRIMARY KEY (`CODEXCURSION`, `DNI`);
ALTER TABLE `E-V` ADD CONSTRAINT FK1_E_V FOREIGN KEY (`CODEXCURSION`)
REFERENCES `EXCURSION` (`CODEXCURSION`) ON DELETE NO ACTION;
ALTER TABLE `E-V` ADD CONSTRAINT FK2_E_V FOREIGN KEY (`DNI`)
REFERENCES `VISITANTE` (`DNI`) ON DELETE NO ACTION;

-- 9.2 Asignamos las claves y las restricciones a la tabla A-V

ALTER TABLE `A-V` ADD CONSTRAINT PRIMARY KEY (`CODALOJAMIENTO`, `DNI`, `FECHAINICIO`);
ALTER TABLE `A-V` ADD CONSTRAINT FK1_A_V FOREIGN KEY (`CODALOJAMIENTO`)
REFERENCES `ALOJAMIENTO` (`CODALOJAMIENTO`) ON DELETE NO ACTION;
ALTER TABLE `A-V` ADD CONSTRAINT FK2_A_V FOREIGN KEY (`DNI`)
REFERENCES `VISITANTE` (`DNI`) ON DELETE NO ACTION;

-- 19.2 Asignamos las claves y las restricciones a la tabla PERSONAL. Atributo `NSS`restricción como UNIQUE.

ALTER TABLE `PERSONAL` ADD CONSTRAINT PRIMARY KEY (`DNI`);
ALTER TABLE `PERSONAL` ADD CONSTRAINT FK1_PERSONAL FOREIGN KEY (`CODPN`)
REFERENCES `PARQUENATURAL` (`CODPN`) ON DELETE NO ACTION;
ALTER TABLE `PERSONAL` ADD CONSTRAINT UNIQUE(`NSS`);

-- 12.2 Asignamos las claves y las restricciones a la tabla AREA

ALTER TABLE `AREA` ADD CONSTRAINT PRIMARY KEY (`NOMBREA`);
ALTER TABLE `AREA` ADD CONSTRAINT FK1_AREA FOREIGN KEY (`CODPN`)
REFERENCES `PARQUENATURAL` (`CODPN`) ON DELETE NO ACTION;

-- 20.2 Asignamos las claves y las restricciones a la tabla CONSERVADOR

ALTER TABLE `CONSERVADOR` ADD CONSTRAINT PRIMARY KEY (`DNI`);
ALTER TABLE `CONSERVADOR` ADD CONSTRAINT FK1_CONSERVADOR FOREIGN KEY (`DNI`)
REFERENCES `PERSONAL` (`DNI`) ON DELETE NO ACTION;
ALTER TABLE `CONSERVADOR` ADD CONSTRAINT FK2_CONSERVADOR FOREIGN KEY (`NOMBREA`)
REFERENCES `AREA` (`NOMBREA`) ON DELETE NO ACTION; 

-- 21.2 Asignamos las claves y las restricciones a la tabla VIGILANTE

ALTER TABLE `VIGILANTE` ADD CONSTRAINT PRIMARY KEY (`DNI`);
ALTER TABLE `VIGILANTE` ADD CONSTRAINT FK1_VIGILANTE FOREIGN KEY (`DNI`)
REFERENCES `PERSONAL` (`DNI`) ON DELETE NO ACTION;
ALTER TABLE `VIGILANTE` ADD CONSTRAINT FK2_VIGILANTE FOREIGN KEY (`NOMBREA`)
REFERENCES `AREA` (`NOMBREA`) ON DELETE NO ACTION; 

-- 22.2 Asignamos las claves y las restricciones a la tabla INVESTIGADOR

ALTER TABLE `INVESTIGADOR` ADD CONSTRAINT PRIMARY KEY (`DNI`);
ALTER TABLE `INVESTIGADOR` ADD CONSTRAINT FK1_INVESTIGADOR FOREIGN KEY (`DNI`)
REFERENCES `PERSONAL` (`DNI`) ON DELETE NO ACTION;

-- 23.2 Asignamos las claves y las restricciones a la tabla GESTOR

ALTER TABLE `GESTOR` ADD CONSTRAINT PRIMARY KEY (`DNI`);
ALTER TABLE `GESTOR` ADD CONSTRAINT FK1_GESTOR FOREIGN KEY (`DNI`)
REFERENCES `PERSONAL` (`DNI`) ON DELETE NO ACTION;
ALTER TABLE `GESTOR`ADD CONSTRAINT FK2_GESTOR FOREIGN KEY (`CODENTRADA`)
REFERENCES `ENTRADA`(`CODENTRADA`) ON DELETE NO ACTION;

-- 15.2 Asignamos las claves y las restricciones a la tabla PROYECTO

ALTER TABLE `PROYECTO` ADD CONSTRAINT PRIMARY KEY (`CODPROY`);
ALTER TABLE `PROYECTO` ADD CONSTRAINT FK1_PROYECTO FOREIGN KEY (`CODESPECIE`)
REFERENCES `ESPECIE` (`CODESPECIE`) ON DELETE NO ACTION;

-- 14.2 Asignamos las claves y las restricciones a la tabla I-P

ALTER TABLE `I-P` ADD CONSTRAINT PRIMARY KEY (`CODPROYECTO`, `DNI`);
ALTER TABLE `I-P` ADD CONSTRAINT FK1_I_P FOREIGN KEY (`CODPROYECTO`)
REFERENCES `PROYECTO` (`CODPROY`) ON DELETE NO ACTION; 
ALTER TABLE `I-P` ADD CONSTRAINT FK2_I_P FOREIGN KEY (`DNI`)
REFERENCES `INVESTIGADOR` (`DNI`) ON DELETE NO ACTION;

-- 13.2 Asignamos las claves y las restricciones a la tabla VEHÍCULO

ALTER TABLE `VEHICULO` ADD CONSTRAINT PRIMARY KEY (`MATRICULA`);
ALTER TABLE `VEHICULO` ADD CONSTRAINT UNIQUE(`DNI`);
ALTER TABLE `VEHICULO` ADD CONSTRAINT FK1_VEHICULO FOREIGN KEY (`DNI`)
REFERENCES `VIGILANTE` (`DNI`) ON DELETE NO ACTION;

-- 11.2 Asignamos las claves y las restricciones a la tabla E-A

ALTER TABLE `E-A` ADD CONSTRAINT PRIMARY KEY (`CODESPECIE`, `CODAREA`);
ALTER TABLE `E-A` ADD CONSTRAINT FK1_E_A FOREIGN KEY (`CODESPECIE`)
REFERENCES `ESPECIE` (`CODESPECIE`) ON DELETE NO ACTION;
ALTER TABLE `E-A` ADD CONSTRAINT FK2_E_A FOREIGN KEY (`CODAREA`)
REFERENCES `AREA` (`NOMBREA`) ON DELETE NO ACTION;


-- ----------------------------------------------------------------
-- ------------ CREACIÓN DE VIEW Y EJECUCIÓN ----------------
-- ----------------------------------------------------------------

-- Creamos una vista que saca los DNI y la fecha que han realizado una excursión a pie.

CREATE VIEW `EntradasAPie` AS
SELECT `DNI`, `FECHA_HORA`
FROM `E-V`, `EXCURSION`
WHERE `E-V`.codexcursion=`EXCURSION`.codexcursion AND `APIE` LIKE 'si';

-- La ejecutamos

SELECT * FROM `EntradasAPie`;