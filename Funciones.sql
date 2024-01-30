use gasolineria;
select * from empresa_bandera;
select * from fecha;
select * from gasolinerias;
select * from horarios;
select * from productos;
select * from provincia;

DELIMITER %
CREATE FUNCTION ObtenerEstacionesServicio()
RETURNS varchar(50)
READS SQL DATA
BEGIN
    RETURN (
        SELECT 
            Gasolinerias.Nombre_Gasolineria,
            Gasolinerias.Domicilio,
            Provincia.nombre_provincia,
            productos.nombre_producto,
            Horarios.Tipo_Horario
        FROM 
            Gasolinerias 
            JOIN Provincia ON Gasolinerias.Id_Provincia = provincia.Id_Provincia
            JOIN Productos ON Gasolinerias.Id_Productos = productos.Id_Producto
            JOIN Horarios ON Gasolinerias.Id_Horario = Horarios.Id_Horario
        LIMIT 1 
    );
END%


DELIMITER %
CREATE FUNCTION CalcularVentasEstacionServicio()
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE totalVentas DECIMAL(10, 2);

    SELECT SUM(gasolinerias.monto_venta) INTO totalVentas
    FROM gasolinerias
    JOIN empresa_bandera ON gasolinerias.id_empresabandera = empresa_bandera.id_empresa;

    RETURN totalVentas;
END %







