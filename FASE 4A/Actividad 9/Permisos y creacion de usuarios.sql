
/*Usuarios*/
create user 'Administrador'@'localhost' IDENTIFIED BY 'Admin';
create user 'Empleador'@'localhost' IDENTIFIED BY 'Emple';
create user 'Cliente'@'localhost' IDENTIFIED BY 'Client';

/*Privilegios administrador*/
grant all privileges on database_FERRETERIA.* to 'Administrador'@'localhost';
flush privileges;
show grants for 'Administrador'@'localhost';

/*Privilegios empleado*/
grant select,insert on database_FERRETERIA.ventas to 'Empleado'@'localhost';
grant select, insert on database_FERRETERIA.Domicilios to 'Empleado'@'localhost';
grant select, insert on database_FERRETERIA.Productos to 'Empleado'@'localhost';
flush privileges;
show grants for 'Empleado'@'localhost';

/*Privilegios cliente*/
grant insert on database_FERRETERIA.ventas to 'Cliente'@'localhost';
flush privileges;
show grants for 'Cliente'@'localhost';