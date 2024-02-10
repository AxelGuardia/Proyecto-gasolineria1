use gasolineria;
select *
from gasolinerias;
select *
from productos;

/*Elimine funciones anteriores*/
drop PROCEDURE registrar_venta;
drop PROCEDURE obtener_promedio_ventas_mensuales;
drop PROCEDURE obtener_cantidad_productos_por_gasolinera;

/* Pbtener el NOMBRE DE UNA GASOLINERIA POR SU ID*/
DELIMITER //

CREATE PROCEDURE obtener_nombre_gasolineria_por_id(
    IN p_id_gasolineria INT
)
BEGIN
    SELECT nombre_gasolineria
    FROM gasolinerias
    WHERE id_gasolineria = p_id_gasolineria;
END //

DELIMITER ;

CALL obtener_nombre_gasolineria_por_id(1284);

/*Obtener la cantidad de productos una Gasolineria*/

DELIMITER //

CREATE PROCEDURE obtener_cantidad_productos_por_gasolinera(
    IN p_id_productos INT
)
BEGIN
    SELECT COUNT(*)
    FROM productos
    WHERE id_productos = p_id_productos;
END //

DELIMITER ;
CALL obtener_cantidad_productos_por_gasolinera (19);





