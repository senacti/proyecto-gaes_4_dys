create database BD_DYS;
use BD_DYS;

/*Usuarios*/

Create table Usuario(
Id int not null primary key,
Documento int ,
Nombre varchar(100) not null,
Apellido varchar(100) not null,
Correo varchar(100) not null,
Direccion varchar(100) not null,
Telefono int not null
);

Create table Roles(
No_Rol int not null auto_increment primary key,
Nombre_Rol varchar(30) not null
);

Create table Usuario_Roles(
US_Rol int not null auto_increment primary key,
Fk_No_Rol int not null,
Fk_Usuario int
);

/*Ventas*/

CREATE TABLE Inventario(
Id_Inventario int not null primary key,
NO_Producto int not null,
Fecha date not null,
Cantidad int not null
);

CREATE TABLE Clientes(
Id_Cliente int not null primary key,
Nombre varchar(30) not null,
Apellido varchar(30) not null,
Direccion varchar(50) not null,
Telefono int not null
); 

create table Facturas(
Id_Factura int primary key not null,
Fecha date not null,
Cliente int not null
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

Create table Productos(
Id_Producto int not null primary key,
Descripcion varchar(20) not null,
Precio float not null,
Categoria int not null,
Proveedor int null
);

create table Ventas(
Id_Venta int primary key not null,
Factura int not null,
Producto int not null,
Cantidad int not null
);

/*DOMICILIOS(Con pedidos)*/

CREATE TABLE Pedidos (
Id_Pedido int primary key not null,
NO_Pedido int not null,
Fecha date not null,
Cantidad int not null,
producto varchar(40) not null,
Precio int not null
);

create table Domiciliario (
Id_domiciliario int not null primary key,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
Telefono int not null,
Correo varchar(50) not null
);

CREATE TABLE Domicilios (
Id_Domicilio int primary key not null,
NO_Domicilio int not null,
Producto varchar(40) not null,
Cantidad int not null,
Precio int not null
);

create table Reportes(
id_Reporte int primary key not null,
NO_Reporte int not null,
Fecha date not null,
Nombre varchar(30) not null,
Cantidad int not null,
Precio int not null
);

ALTER TABLE Usuario_Roles ADD FOREIGN KEY (Fk_No_Rol) references Roles(No_Rol);
ALTER TABLE Usuario_Roles ADD FOREIGN KEY (Fk_Usuario) references Usuario(Id);
ALTER TABLE Facturas ADD FOREIGN KEY (Cliente) references Clientes(Id_Cliente);
ALTER TABLE Productos ADD FOREIGN KEY (Categoria) references Categorias(Id_Categoria);
ALTER TABLE Productos ADD FOREIGN KEY (Proveedor) references Proveedores(Id_Proveedor);
ALTER TABLE Productos ADD FOREIGN KEY (Categoria) references Inventario(Id_Inventario);
ALTER TABLE Ventas ADD FOREIGN KEY (Factura) references Facturas(Id_Factura);
ALTER TABLE Ventas ADD FOREIGN KEY (Producto) references Productos(Id_Producto);
ALTER TABLE Ventas ADD FOREIGN KEY (Cantidad) references Inventario(Id_Inventario);
ALTER TABLE Pedidos ADD FOREIGN KEY (NO_Pedido) references Domicilios(Id_Domicilio);
ALTER TABLE Domicilios ADD FOREIGN KEY (NO_Domicilio) references Reportes(id_Reporte);
ALTER TABLE Domiciliario ADD FOREIGN KEY (Telefono) references Domicilios(Id_Domicilio);

ALTER TABLE Usuario AUTO_INCREMENT=10000;
ALTER TABLE Roles AUTO_INCREMENT=20;
ALTER TABLE Usuario_Roles AUTO_INCREMENT=10000;
ALTER TABLE Inventario AUTO_INCREMENT=1000;
ALTER TABLE Clientes AUTO_INCREMENT=1000;
ALTER TABLE Facturas AUTO_INCREMENT=1000;
ALTER TABLE Categorias AUTO_INCREMENT=1000;
ALTER TABLE Proveedores AUTO_INCREMENT=1000;
ALTER TABLE Productos AUTO_INCREMENT=1000;
ALTER TABLE Ventas AUTO_INCREMENT=1000;
ALTER TABLE Pedidos AUTO_INCREMENT=1000;
ALTER TABLE Domiciliario AUTO_INCREMENT=1000;
ALTER TABLE Domicilios AUTO_INCREMENT=1000;
ALTER TABLE Reportes AUTO_INCREMENT=1000;