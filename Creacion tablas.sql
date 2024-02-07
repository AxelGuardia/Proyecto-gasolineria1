create table Empresa_Bandera(
id_empresa int not null primary key,
nombre_empresa varchar(50)
);

create table productos(
id_producto int not null primary key,
nombre_producto varchar(50)
);

create table provincia(
id_provincia int not null primary key,
nombre_provincia varchar(50)
);

create table horarios(
id_horario int not null primary key,
tipo_horario varchar(50)
);

create table fecha(
id_fecha_hora int not null primary key,
año int,
mes int,
dia varchar(30)
);

create table Gasolinerias(
id_gasolineria int not null primary key,
nombre_gasolineria varchar(50) not null,
domicilio varchar(50),
id_provincia int not null,
id_productos int not null,
id_empresa int not null,
id_horario int not null,
id_fecha_hora int not null,
FOREIGN KEY (id_provincia) references provincia(id_provincia),
FOREIGN KEY (id_productos) references productos (id_producto),
FOREIGN KEY (id_empresa) references Empresa_Bandera (id_empresa),
FOREIGN KEY (id_horario) references horarios(id_horario),
FOREIGN KEY (id_fecha_hora) references fecha (id_fecha_hora)
);
