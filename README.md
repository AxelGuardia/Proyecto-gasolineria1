# PROYECTO SQL: CREACIÓN DE UNA BASE DE DATOS EN DONDE PODAMOS TENER ACCESO AL REGISTRO DE LOS SURTIDORES DE TODO EL PAÍS, CON SU RESPECTIVA EMPRESA BANDERA. #

<p style="font-family: Arial;">Este proyecto tiene como objetivo desarrollar una base de datos que pueda almacenar de manera integral la información referente a las estaciones de servicio, ya sean nuevas o existentes, en todo el territorio argentino.</p>


## OBJETIVOS:

- Llevar registros al día de las estaciones de servicios existentes.
- Proporcionar información estandarizada para todas las áreas de cada estación de servicio.
- Capacidad para realizar métricas que identifiquen qué empresas banderas suministran sus productos a las estaciones de servicio en el territorio argentino.
- Asegurar la persistencia de los datos en una base de datos SQL para su almacenamiento principal, considerando el uso de Excel como una herramienta complementaria.

## SITUACION PROBLEMÁTICA:
<p style="font-family: Arial;">En la cadena de estaciones de servicio se enfrentan a una problemática donde la gestión de inventario y suministro de productos se realiza de manera descentralizada. Cada estación tiene autonomía para gestionar su propio inventario y realizar pedidos de productos, lo que ha llevado a discrepancias en los niveles de stock y a la falta de uniformidad en la variedad de productos ofrecidos.</p>

- Descentralización en la Gestión de Inventario:
Actualmente, cada estación de servicio tiene la autonomía para gestionar su propio inventario de productos, lo que ha generado desafíos en la sincronización y coordinación entre las estaciones.
La falta de un sistema centralizado dificulta la optimización de pedidos, provocando situaciones donde algunas estaciones pueden experimentar escasez de productos mientras otras tienen excedentes.
-	Información Fragmentada sobre Ventas y Preferencias del Cliente:
La empresa carece de un sistema integrado que permita recopilar y analizar datos sobre las preferencias de los clientes y las tendencias de ventas en tiempo real.
La falta de información centralizada dificulta la toma de decisiones estratégicas, como la introducción de nuevos productos o la adaptación a las demandas cambiantes del mercado.
-	Problemas en la Coordinación de Horarios y Servicios:
La coordinación de horarios de atención y servicios adicionales se gestiona de forma independiente en cada estación.
Esto puede llevar a situaciones donde algunas estaciones estén cerradas durante horas pico o donde la oferta de servicios no esté alineada con la demanda de los clientes en ciertos momentos del día.

## MODELO DE NEGOCIO
<p style="font-family: Arial;"> Las estaciones de servicio propuestas en este proyecto desempeñan un papel crucial al suministrar combustible a todos los vehículos en la provincia o región correspondiente. Las empresas banderas, a su vez, asumen la responsabilidad de proveer combustible a cada una de estas estaciones en diversos puntos del país. En vista del constante aumento en el consumo de combustible, impulsado por el crecimiento vehicular sostenido, surge la imperante necesidad de implementar nuevas tecnologías para optimizar el control y la gestión eficiente de estas estaciones de servicio.</p>

## DIAGRAMA DE ENTIDAD RELACION:

[![image.png](https://i.postimg.cc/4NbyxSg0/image.png)](https://postimg.cc/QHCh6SVg)

## TABLAS

[![image.png](https://i.postimg.cc/g2vrXvJt/image.png)](https://postimg.cc/ZW5JXv66)

[![Tabla-Empresa-Bandera.png](https://i.postimg.cc/qBxmDgFy/Tabla-Empresa-Bandera.png)](https://postimg.cc/Wtt6hpT1)

[![Tabla-Productos.png](https://i.postimg.cc/HnYt14N5/Tabla-Productos.png)](https://postimg.cc/hzYm9xcP)

[![Tabla-Provincia.png](https://i.postimg.cc/VkrWwNK7/Tabla-Provincia.png)](https://postimg.cc/QFDTkjG5)

[![Tabla-horarios.png](https://i.postimg.cc/HLmcNWR8/Tabla-horarios.png)](https://postimg.cc/5XP2YJxf)

[![image.png](https://i.postimg.cc/qgH4458J/image.png)](https://postimg.cc/2LGPxTcM)

## SCRIPTS SQL
#### Creacion tablas

https://github.com/AxelGuardia/Proyecto-gasolineria1/blob/406fff8d667692c16837683a0b222296c84480a4/Creacion%20tablas.sql

#### Script insert SQL

https://github.com/AxelGuardia/Proyecto-gasolineria1/blob/9c3a64565da0093490cc6deb5e09829b172e1922/Insertar%20datos_13.sql

#### Create View SQL

- Vista de Información General de Estaciones:
Muestra información general de cada estación de servicio, incluyendo nombre de la gasolinera, dirección, provincia, productos ofrecidos, horarios, empresa abastecedora y fecha

- Vista de Empresas Abastecedoras:
Proporciona información sobre las empresas abastecedoras y las estaciones asociadas. Por otro lado, muestra el nombre de la empresa abastecedora y las estaciones de servicio asociadas.

- Vista de Ventas Diarias por Estación:
Muestra información sobre las ventas diarias de cada estación. De otro modo, puede incluir datos de la tabla Ventas si tienes una.

- Vista de Horarios:
Proporciona información sobre los horarios de atención de cada estación.

- Vista de Provincias y Estaciones:
Muestra información sobre las estaciones de servicio y su ubicación por provincia.

https://github.com/AxelGuardia/Proyecto-gasolineria1/blob/9c3a64565da0093490cc6deb5e09829b172e1922/Creacion%20de%20vistas.sql

## Funciones
<p> Creacion de funciones.</p>

- obtener_nombre_gasolineria
- obtener_cantidad_productos

https://github.com/AxelGuardia/Proyecto-gasolineria1/blob/c6a2fb1bfd7cdb96add228a43e68fa79b36687d3/Funciones.sql

## Stored Procedures

- Obtener_nombre_gasolineria_por_id
- Obtener cantidad de productos por gasolineria

https://github.com/AxelGuardia/Proyecto-gasolineria1/blob/3d37ea98cc2c2cdd644efe7996f2f02fd979393d/Stored%20procedure.sql

## Triggers

- Registrar nueva Gasolineria
<p>se encarga de registrar un historial de eventos cada vez que se inserta una nueva fila en la tabla gasolineria</p>

- Auditar cambios de producto
<p>Se activa cuando hay una actualizacion de producto</p>

https://github.com/AxelGuardia/Proyecto-gasolineria1/blob/23d6eb4053c536ff5d77fdbad1db82a6df605280/Creacion%20de%20triggers.sql

## Creacion de Usuarios

https://github.com/AxelGuardia/Proyecto-gasolineria1/blob/269c03eef328e9b84470022c4405b47cec185819/Creacion%20usuarios.sql

## Informes generados en bases de datos

<p>Creacion de vistas para tener los reportes necesarios en SQL</p>

- Vista de Información General de Estaciones:
El objetivo de este reporte es la recibir una información general de cada estación de servicio, incluyendo nombre de la gasolinera, dirección, provincia, productos ofrecidos, horarios, empresa abastecedora y fecha

- Vista de Empresas Abastecedoras:
En base a la informacion que nos proporciona esta view sobre las empresas abastecedoras y las estaciones asociadas vamos a poder tener ciertas metricas a lo largo de todo el territorio argentino. Por otro lado, muestra el nombre de la empresa abastecedora y las estaciones de servicio asociadas.

- Vista de Ventas Diarias por Estación:
Muestra información sobre las ventas diarias de cada estación en la cual nos permite hacer una comparativa de cual es la estacion de servicio con mayor rendimientos. De otro modo, puede incluir datos de la tabla Ventas si tienes una.

- Vista de Horarios:
Proporciona información sobre los horarios de atención de cada estación sirviendo para tomar metricas de cuales son los turnos mas requeridos.

- Vista de Provincias y Estaciones:
Muestra información sobre las estaciones de servicio y su ubicación por provincia.

https://github.com/AxelGuardia/Proyecto-gasolineria1/blob/9c3a64565da0093490cc6deb5e09829b172e1922/Creacion%20de%20vistas.sql

## Herramientas y Tecnologias

- Excel
- ERDPLUS
- MySQL
- WorkBench
- Git y Github
- Postimage
- Word

## Backup y restauracion

<p>Realizamos el backup de 3 tablas que presentamos a continuacion</p>

https://github.com/AxelGuardia/Proyecto-gasolineria1/blob/58ffaeb6c79187c6ded644ba3df1465230745649/gasolineria_empresa_bandera.sql

https://github.com/AxelGuardia/Proyecto-gasolineria1/blob/58ffaeb6c79187c6ded644ba3df1465230745649/gasolineria_gasolinerias.sql

https://github.com/AxelGuardia/Proyecto-gasolineria1/blob/58ffaeb6c79187c6ded644ba3df1465230745649/gasolineria_provincia.sql

## Futuras Lineas

- Creacion de tablas en la cual podamos comparar los precios de cada estacion de servicio
- Creacion de tablas que nos permitan llevar estadisticas de donde es el mayor consumor de combustible

                                                                    
