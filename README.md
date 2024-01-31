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

[![Diagrama-entidad-relacion-modificado.png](https://i.postimg.cc/vT6p9h09/Diagrama-entidad-relacion-modificado.png)](https://postimg.cc/RJ4sx75V)

## TABLAS

[![Tabla-gasolineria.png](https://i.postimg.cc/rFgPszCM/Tabla-gasolineria.png)](https://postimg.cc/vcgzSYNN)

[![Tabla-Empresa-Bandera.png](https://i.postimg.cc/qBxmDgFy/Tabla-Empresa-Bandera.png)](https://postimg.cc/Wtt6hpT1)

[![Tabla-Productos.png](https://i.postimg.cc/HnYt14N5/Tabla-Productos.png)](https://postimg.cc/hzYm9xcP)

[![Tabla-Provincia.png](https://i.postimg.cc/VkrWwNK7/Tabla-Provincia.png)](https://postimg.cc/QFDTkjG5)

[![Tabla-horarios.png](https://i.postimg.cc/HLmcNWR8/Tabla-horarios.png)](https://postimg.cc/5XP2YJxf)

[![Tabla-Fecha.png](https://i.postimg.cc/y6GJHy2H/Tabla-Fecha.png)](https://postimg.cc/K4nc7BZq)

## SCRIPTS SQL
Creacion tablas.sql

create table fecha(
id_fecha_hora int not null primary key,
año int,
mes int,
dia varchar(30)
)</script>
