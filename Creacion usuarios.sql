/* 1 er usuario creado y sus permisos*/
CREATE USER 'axel@pruebasql' IDENTIFIED BY '1234567';
GRANT SELECT, INSERT, UPDATE ON *.* TO 'axel@pruebasql';
grant all on empresa_bandera to  'axel@pruebasql';
grant all on gasolinerias to  'axel@pruebasql';
grant select, update on gasolinerias to 'axel@pruebasql';

/*2do usuario creado y su permiso de solo lectura sobre las tablas*/

create user 'codertutor@prueba' identified by '7654321';
GRANT SELECT ON *.* TO 'codertutor@prueba' ;
grant update, select (nombre_gasolineria) on gasolinerias to 'codertutor@prueba';