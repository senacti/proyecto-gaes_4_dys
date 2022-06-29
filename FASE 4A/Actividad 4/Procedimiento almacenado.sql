use BD_Transaccional;

/*Proceso de almacenamiento sin procedimientos*/

DELIMITER //
CREATE PROCEDURE PACIENTES(
	in Identificacion char (10),
    in Nombres varchar (50),
    in Apellidos varchar (50)
    )
BEGIN
	SELECT PacIdentificacion, PacNombres, PacApellidos FROM PACIENTES;
END	//
DELIMITER ;

/*Proceso almacenado con procedimientos*/

DELIMITER //
CREATE PROCEDURE TRATAMIENTOS (inout TraFechaFin DATE)
BEGIN
	SET TraFechaFin = 2011-06-11;
END	//
DELIMITER ;

set@TraFechaFin=0;
call TraFechaFin('2011-06-11',@TraFechaFin);

drop procedure if exists TRATAMIENTOS;