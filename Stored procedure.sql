use gasolineria;
select *
from gasolinerias;
select *
from productos;

DELIMITER //
CREATE PROCEDURE registrar_venta(
    IN p_id_gasolineria INT,
    IN p_id_producto INT,
    IN p_id_fecha_hora INT,
    IN p_monto FLOAT
)
BEGIN
    INSERT INTO venta (id_gasolineria, id_producto, id_fecha_hora, monto)
    VALUES (p_id_gasolineria, p_id_producto, p_id_fecha_hora, p_monto);
END //
DELIMITER ;

DELIMITER //

CREATE PROCEDURE obtener_promedio_ventas_mensuales()
BEGIN
    SELECT g.id_gasolineria, EXTRACT(MONTH FROM f.fecha) AS mes, AVG(v.monto) AS promedio_ventas
    FROM venta v
    JOIN gasolineria g ON v.id_gasolineria = g.id_gasolineria
    JOIN fecha f ON v.id_fecha = f.id_fecha
    GROUP BY g.id_gasolineria, mes;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE obtener_promedio_ventas_mensuales()
BEGIN
    SELECT
        g.id_gasolineria,
        EXTRACT(MONTH FROM f.fecha) AS mes,
        AVG(v.monto) AS promedio_ventas
    FROM
        venta v
    JOIN
        gasolineria g ON v.id_gasolineria = g.id_gasolineria
    JOIN
        fecha f ON v.id_fecha = f.id_fecha
    GROUP BY
        g.id_gasolineria, mes;
END //

DELIMITER ;



