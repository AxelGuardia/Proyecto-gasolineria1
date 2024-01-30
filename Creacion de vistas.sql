use gasolineria;
select * from empresa_bandera;
select * from fecha;
select * from gasolinerias;
select * from horarios;
select * from productos;
select * from provincia;
CREATE VIEW InformacionEstaciones AS
SELECT
    Gasolinerias.ID_Gasolineria,
    Gasolinerias.Nombre_gasolineria AS Nombre_Gasolineria,
    Gasolinerias.Domicilio,
    Provincia.ID_Provincia,
    Productos.ID_Producto,
    Empresa_Bandera.Nombre_empresa AS Nombre_Empresa,
    Fecha.ID_Fecha_Hora,
    Fecha.Año,
    Fecha.Mes,
    Fecha.Dia
FROM Gasolinerias
JOIN Provincia ON Gasolinerias.ID_Provincia = Provincia.ID_Provincia
JOIN Productos ON Gasolinerias.ID_Productos = Productos.ID_Producto
JOIN Empresa_Bandera ON Gasolinerias.ID_Empresa = Empresa_Bandera.ID_Empresa
JOIN Fecha ON Gasolinerias.ID_Fecha_Hora = Fecha.ID_Fecha_Hora;

select * from InformacionEstaciones;

CREATE VIEW VistaEmpresasAbastecedoras AS
SELECT
    Empresa_Bandera.ID_Empresa,
    Empresa_Bandera.Nombre_empresa AS NombreEmpresa,
    Gasolinerias.ID_Gasolineria,
    Gasolinerias.nombre_gasolineria AS NombreGasolineria
FROM Empresa_Bandera
JOIN Gasolinerias ON Empresa_Bandera.ID_Empresa = Gasolinerias.ID_Empresa;

select * from VistaEmpresasAbastecedoras;

CREATE VIEW VistaHorarios AS
SELECT
    Gasolinerias.ID_Gasolineria,
    Gasolinerias.Nombre_gasolineria AS NombreGasolineria,
    Horarios.Tipo_Horario
FROM Gasolinerias
JOIN Horarios ON Gasolinerias.ID_Horario = Horarios.ID_Horario;

select * from VistaHorarios;

CREATE VIEW VistaVentasDiarias AS
SELECT
    Gasolinerias.ID_Gasolineria,
    Gasolinerias.Nombre_gasolineria AS NombreGasolineria,
    Fecha.Año,
    Fecha.Mes,
    Fecha.Dia
FROM Gasolinerias
JOIN Fecha ON Gasolinerias.ID_Fecha_Hora = Fecha.ID_Fecha_Hora;

select * from VistaVentasDiarias;

CREATE VIEW VistaProvinciasEstaciones AS
SELECT
    Provincia.nombre_provincia,
    Gasolinerias.ID_Gasolineria,
    Gasolinerias.Nombre_gasolineria AS NombreGasolineria,
    Gasolinerias.Domicilio
FROM Provincia
JOIN Gasolinerias ON Provincia.ID_Provincia = Gasolinerias.ID_Provincia;

select * from VistaProvinciasEstaciones;