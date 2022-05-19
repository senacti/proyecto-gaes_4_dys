use BD_Tienda;

select * from Ventas
select * from Facturas
select * from Productos
select * from Proveedores
select * from Cliente
select * from Categorias
select * from Domicilios
select * from Pedidos
select * from Reportes

select Id_Domicilio, precio from Domicilios

/*mostrar la venta registrada del cliente, MetroWilfor, agregando sus datos Nombre, 
direccion, Telefono, domicilio solicitado, y dar el total de la venta*/
select Id_Venta, factura, Fecha, id_cliente, nombre, direccion, telefono, ve. cantidad, sum(pr. precio)as total
from Ventas ve join Facturas
on id_factura = factura join Productos pr on Id_Producto = producto
join Cliente on Id_Cliente = Cliente
where cliente =(select id_Cliente from Cliente where nombre='MetroWilfor')
group by Id_Venta, factura, Fecha, id_cliente, nombre, direccion, telefono, ve. cantidad
select sum(precio) as Gastos from Ventas, Productos where Id_Producto= producto


/*Mostrar el consecutivo de la ultima venta registrada, agregando tambien la factura y el cliente*/
Select id_Factura, Id_Cliente, Nombre, Fecha, Telefono, max(id_venta) as consecutivo from Ventas, Facturas, Cliente 
where Id_Cliente= Cliente group by id_Factura, Id_Cliente, Nombre, Fecha, Telefono



