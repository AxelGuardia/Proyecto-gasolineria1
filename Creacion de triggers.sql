/* Creacion de Triggers*/
use gasolineria
/*Registrar una nueva estacion de servicio*/
DELIMITER //

CREATE TRIGGER registrar_nueva_gasolinerias
AFTER INSERT ON gasolinerias
FOR EACH ROW
BEGIN
    INSERT INTO historial_gasolinerias (id_gasolineria, accion, fecha_cambio)
    VALUES (NEW.id_gasolineria, 'Registro', NOW());
END //

DELIMITER ;

/*Registrar un cambio de producto en estacion de servicio*/
DELIMITER //

CREATE TRIGGER auditar_cambios_productos
AFTER UPDATE ON gasolinerias
FOR EACH ROW
BEGIN
    IF OLD.id_productos != NEW.id_productos THEN
        INSERT INTO historial_cambios_productos (id_gasolineria, productos_anteriores, productos_nuevos, fecha_cambio)
        VALUES (NEW.id_gasolineria, OLD.id_productos, NEW.id_productos, NOW());
    END IF;
END //

DELIMITER ;


