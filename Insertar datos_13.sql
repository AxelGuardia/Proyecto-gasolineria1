use gasolineria;
select * from gasolinerias;
select * from fecha;
select * from productos;
select * from provincia;
select* from horarios;
select * from empresa_bandera;
ALTER TABLE `gasolineria`.`gasolinerias` 
CHANGE COLUMN `id_fecha_hora` `id_fecha_hora` DATETIME NOT NULL ;
ALTER TABLE `gasolineria`.`gasolinerias` 
CHANGE COLUMN `domicilio` `domicilio` varchar(80);
INSERT INTO gasolinerias (id_gasolineria, nombre_gasolineria, domicilio, id_provincia, id_productos, id_empresa, id_horario, id_fecha_hora)
VALUES (1376, '10 de septiembre S.A', 'Av Mosconi 299', 100, 19, 28, 2, '2022-10-01 10:23'),
       (10677, '1263 S.R.L', 'uta nac. 3 km. 1258 (colectora calle 102 nº 321) 321', 114, 19, 28, 2, '2022-10-01 10:23'),
       (8943, '1923 S.R.L', 'Julio A Roca 715', 103, 19, 28, 2, '2023-08-01 14:00'),
       (9764, '25 ALVEAR S.R.L', 'Calle 9 y Avenida 36 790', 100, 19, 4, 2, '2022-10-03 22:29'),
       (1284, '25 DE MAYO S.R.L', '25 de mayo 675', 117, 19, 2, 3, '2021-02-01 00:00');


INSERT INTO provincia (id_provincia, nombre_provincia)
VALUES (114, 'rio negro'),
       (103, 'chubut'),
       (123, 'capital federal'),
       (117, 'san luis');
INSERT INTO productos (id_producto, nombre_producto)
VALUES (19,'Gas Oil Grado 2'),
	   (6,'gnc'),
       (3,'nafta premium'),
       (2,'nafta super'),
       (21,'Gas Oil Grado 3');
INSERT INTO horarios (id_horario,tipo_horario)
VALUES (1,'mañana'),
	   (2,'tarde'),
       (3,'noche');
ALTER TABLE `gasolineria`.`fecha` 
CHANGE COLUMN `mes` `mes` varchar(20) ;

INSERT INTO fecha (id_fecha_hora, año, mes, dia)
VALUES ('2022-10-01 10:23:00', 2022, 'octubre', 1),
       ('2023-08-01 22:00:00', 2023, 'agosto', 1),
       ('2023-08-01 14:00:00', 2023, 'agosto', 1),
       ('2022-10-03 22:29:00', 2022, 'octubre', 3),
       ('2021-02-01 00:00:00', 2021, 'febrero', 1);
INSERT INTO empresa_bandera(id_empresa,nombre_empresa)
VALUES(28,'PUMA'),
      (4,'SHELL'),
      (2,'YPF'),
      (1,'BLANCA'),
      (26,'AXION');


















