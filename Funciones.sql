use gasolineria;
select * from empresa_bandera;
select * from fecha;
select * from gasolinerias;
select * from horarios;
select * from productos;
select * from provincia;
drop function obtener_cantidad_productos;

/* Funciones corregidas */
DELIMITER //

CREATE FUNCTION obtener_nombre_gasolineria(p_id_gasolineria INT) RETURNS VARCHAR(255)
deterministic
BEGIN
 
    DECLARE nombre_gasolineria VARCHAR(255);
    
    SELECT nombre_gasolineria INTO nombre_gasolineria
    FROM gasolinerias
    WHERE ID_gasolineria = p_id_gasolineria;
    
    RETURN nombre_gasolineria;
END //

DELIMITER ;

select obtener_nombre_gasolineria(1300);

DELIMITER //

CREATE FUNCTION obtener_cantidad_productos(p_id_productos INT) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE cantidad_productos INT;

    SELECT COUNT(*) INTO cantidad_productos
    FROM productos
    WHERE id_productos = p_id_productos;

    RETURN cantidad_productos;
END //

DELIMITER ;

select obtener_cantidad_productos(19);


