-- eliminacion de registros--

use gasolineria;
select * from empresa_bandera;
start transaction;
DELETE FROM empresa_bandera WHERE id = 3;
DELETE FROM empresa_bandera WHERE id = 2;
DELETE FROM empresa_bandera WHERE id = 1;

-- ROLLBACK;
-- COMMIT;
select * from provincia;

insert provincia values (107, 'entre rios');
insert provincia values (110, 'san juan');
insert provincia values (124, 'cordoba');
insert provincia values (130, 'jujuy');
-- ROLLBACK;
-- COMMIT;
savepoint insercion_registrosA;
insert provincia values (126, 'salta');
insert provincia values (118, 'formosa');
insert provincia values (115, 'chaco');
insert provincia values (104, 'tierra del fuego');
-- ROLLBACK;
-- COMMIT;
savepoint insercion_registrosB;


