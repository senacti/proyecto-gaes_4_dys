use BD_Tienda;

Insert into Cliente values (53234567, 'Dulce Maria', 'Calle 25 #45-30', 159999999);
insert into Cliente values (899999997, 'MetroWilfor', 'Cra 24 #56-80 Int 8 Apto 301', 26789654);
insert into Cliente values (9876543, 'Carlos Prada', 'Calle 30 # 23-12', 54433221);
insert into Cliente values (98123654, 'Dulces & Gomas', 'Tranv 69B  #67-45 Int 4 Apto 201', 5222222);
insert into Cliente values (1141003357, 'Paquetones', 'Cra. 34 # 76-45', 116789098);

select * from Cliente;

insert into Facturas (Fecha, Cliente)  values ('2021-01-25', 53234567);
insert into Facturas (Fecha, Cliente)  values ('2021-01-25', 899999997);
insert into Facturas (Fecha, Cliente)  values ('2021-01-25', 53234567);
insert into Facturas (Fecha, Cliente)  values ('2021-01-26', 53234567);
insert into Facturas (Fecha, Cliente)  values ('2021-01-26', 1141003357);
insert into Facturas values (getdate(), 53234567);

select * from Facturas

insert into Categorias (Descripcion) values ('Lacteos');
insert into Categorias values ('Dulces');
insert into Categorias (Descripcion) values ('Aseo');
insert into Categorias (Descripcion) values ('Bebidas Alcoholicas');
insert into Categorias (Descripcion) values ('Paquetes');

select * from Categorias

insert into Proveedores values (54898765, 'Alejandro', 'Calle 25 #45-30', 6789534);
insert into Proveedores values (899999997, 'Manuel', 'Cra 24 #56-80 Int 8 Apto 301', 26789654);
insert into Proveedores values (1001316834, 'Camila', 'Calle 30 # 23-12', 54433221);
insert into Proveedores values (1134567898, 'Juan', 'Tranv 69B  #67-45 Int 4 Apto 201', 5222222);
insert into Proveedores values (1001368790, 'Gabriela', 'Cra. 34 # 76-45', 116789098);

Select * from Proveedores

insert into Productos values ('Leche Parmalat', 2700, 10, 1001316834);
insert into Productos values ('Detergente FAB 500ml', 4500, 12, 1001368790);
insert into Productos values ('Jabón Rey', 5800, 12, 1001368790);
insert into Productos values ('Papas margarita', 2500, 14, 1001316834);

select * from Productos

insert into Ventas (Factura, Producto, Cantidad) values (1001, 100, 1);
insert into Ventas (Factura, Producto, Cantidad) values (1001, 101, 2);
insert into Ventas (Factura, Producto, Cantidad) values (1001, 103, 4);

insert into Ventas (Factura, Producto, Cantidad) values (1003, 101, 2);
insert into Ventas (Factura, Producto, Cantidad) values (1003, 102, 4);
insert into Ventas (Factura, Producto, Cantidad) values (1003, 103, 6);

insert into Ventas (Factura, Producto, Cantidad) values (1004, 100, 3);
insert into Ventas (Factura, Producto, Cantidad) values (1004, 102, 5);
insert into Ventas (Factura, Producto, Cantidad) values (1004, 101, 1);

insert into Ventas (Factura, Producto, Cantidad) values (1002, 101, 3);
insert into Ventas (Factura, Producto, Cantidad) values (1002, 103, 5);

insert into Ventas (Factura, Producto, Cantidad) values (1000, 102, 6);
insert into Ventas (Factura, Producto, Cantidad) values (1000, 100, 2);

select * from Ventas

insert into Domicilios (NO_Domicilio, Producto, Cantidad, Precio) values (110, 'Tornillos', 10, 459.000);
insert into Domicilios (NO_Domicilio, Producto, Cantidad, Precio) values (111, 'Hidrolavadora', 20, 230.000);
insert into Domicilios (NO_Domicilio, Producto, Cantidad, Precio) values (112, 'Bateria auto', 23, 370.000);
insert into Domicilios (NO_Domicilio, Producto, Cantidad, Precio) values (113, 'Combo tornillos bricket', 2, 569.000);
insert into Domicilios (NO_Domicilio, Producto, Cantidad, Precio) values (114, 'Alicate', 12, 24.000);
insert into Domicilios (NO_Domicilio, Producto, Cantidad, Precio) values (115, 'Cegueta', 13, 100.000);

select * from Domicilios

insert into Pedidos (NO_Pedido, Fecha, Cantidad, producto, Precio) values (4567, '2022-02-25', 23, 'Taladro', 23.000);
insert into Pedidos (NO_Pedido, Fecha, Cantidad, producto, Precio) values (5678, '2022-05-16', 6, 'Aspiradora', 123.000);
insert into Pedidos (NO_Pedido, Fecha, Cantidad, producto, Precio) values (3674, '2022-12-12', 56, 'Juego de bisturies', 34.000);
insert into Pedidos (NO_Pedido, Fecha, Cantidad, producto, Precio) values (2776, '2022-03-31', 12, 'Aceitadora', 12.000);
insert into Pedidos (NO_Pedido, Fecha, Cantidad, producto, Precio) values (9487, '2022-08-22', 10, 'Baterias para auto', 230.000);
insert into Pedidos (NO_Pedido, Fecha, Cantidad, producto, Precio) values (6477, '2022-01-23', 8, 'Compresor', 570.000);

select * from Pedidos

insert into Reportes values (5676, '2022-04-30', 'Hungo Martin', 23, 340.000);
insert into Reportes values (9678, '2022-02-20', 'Marta Sepoveda', 4, 270.000);
insert into Reportes values (4567, '2022-04-27', 'Sara Rodriguez', 67, 20.000);
insert into Reportes values (8373, '2022-05-11', 'Daniel Gonzalez', 45, 5.700);
insert into Reportes values (7664, '2022-01-03', 'Juan Acosta', 12, 2.200);
insert into Reportes values (3746, '2022-06-20', 'Martin Grajales', 1, 340.000);

select * from Reportes

