create database BD_Ferreteria;
use BD_Ferreteria;

CREATE TABLE CLIENTES(
Id_Cliente int not null primary key,
Nombre varchar(30) not null,
Apellido varchar(30) not null,
Direccion varchar(50) not null,
Telefono int not null
);

create index index_nombre on Cliente (Nombre);
create unique index index_telefonoC on Cliente (Telefono);

ALTER TABLE Cliente DROP INDEX index_nombre; 
alter table Cliente drop index index_nombreCliente;


/*Describe Cliente;*/

create table Facturas(
Id_Factura int primary key not null,
Fecha date,
Cliente int,
Foreign key (Cliente) references Cliente(Id_Cliente)
);

create table Categorias(
Id_Categoria int primary key not null,
Descripcion varchar(20) not null
);

create table Proveedores(
Id_Proveedor int not null primary key,
Nombre varchar(80) not null,
Dirección varchar(100) not null,
Telefono int not null
);

create index nomproveedor on Proveedores (Nombre)

Create table Productos(
Id_Producto int not null primary key,
Descripcion varchar(20) not null,
Precio float not null,
Categoria int not null,
Proveedor int null,
foreign key (Categoria) references Categorias(Id_Categoria),
foreign key (Proveedor) references Proveedores(Id_proveedor),
);

create table Ventas(
Id_Venta int primary key not null,
Factura int not null,
foreign key (Factura) references Facturas(Id_Factura),
Producto int not null,
foreign key (Producto) references Productos(Id_Producto),
Cantidad int not null
);

create index index_ventas on Ventas (Factura, Producto);

/*Se crea campo index con duplicado en tabla Producto campo Descripción*/
create index index_descripcion on Productos (Descripcion);

/*Se crea index con duplicado en la tabla Facturas campo Cliente*/
create index index_clienteFactura on Facturas (Cliente);

/*Se crea un index unique (Sin duplucado) al campo Nombre de la tabla Cliente*/
create unique index index_nombreCliente on Cliente (Nombre);

/*Se modifica y actualiza el campo Fecha de la tabla facturas para dejarlo con un valor por defecto*/
Alter table Facturas ADD DEFAULT GETDATE() for Fecha;

/*DOMICILIOS*/

create table Reportes(
id_Reporte int primary key not null,
NO_Reporte int not null,
Fecha date not null,
Nombre varchar(30) not null,
Cantidad int not null,
Precio int not null
);
CREATE TABLE Pedidos (
Id_Pedido int primary key not null,
NO_Pedido int not null,
Fecha date not null,
Cantidad int not null,
FOREIGN KEY (Cantidad) REFERENCES Reportes(id_Reporte),
producto varchar(40) not null,
Precio int not null
);

CREATE TABLE Domicilios (
Id_Domicilio int primary key not null,
NO_Domicilio int not null,
Producto varchar(40) not null,
Cantidad int not null,
Precio int not null
);
create index index_Domicilios on Domicilios (precio)
