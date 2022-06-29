CREATE DATABASE BD_Transaccional;


DELIMITER //
CREATE PROCEDURE GetAllPACIENTES()
BEGIN 
	SELECT*FROM pacientes;
END //
DELIMITER ;
call GetAllPACIENTES;

DELIMITER //
CREATE PROCEDURE GetAllMEDICOS()
BEGIN
	SELECT*FROM MEDICOS;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE GetAllCONSULTORIOS()
BEGIN
	SELECT*FROM CONSULTORIOS;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE GetAllTRATAMIENTOS()
BEGIN
	SELECT*FROM TRATAMIENTOS;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE GetAllCITAS()
BEGIN
	SELECT*FROM CITAS;
END //
DELIMITER ;

create table PACIENTES (
PacIdentificacion char (10) primary key not null,
PacNombres varchar (50) not null,
PacApellidos varchar (50) not null,
PacFechaNacimiento date not null,
PacSexo enum("M","F")
);

create table MEDICOS (
MedIdentificacion  char (10) primary key not null,
MedNombres varchar (50) not null,
MedApellidos varchar (50) not null
);

create table CONSULTORIOS (
ConNumero int primary key not null,
ConNombre varchar (50) not null
);

create table TRATAMIENTOS (
TraNumero int primary key not null,
TraFechaAsignado date not null,
TraDescripcion text not null,
TraFechaInicio date not null,
TraFechaFin date not null,
TraObservaciones text not null,
TraPaciente char (10) not null
);

create table CITAS (
CitNumero int,
CitFecha date not null,
CitHora time not null,
CitPaciente char (50) not null,
CitMedico char (50) not null,
CitConsultorio int not null,
CitEstado  enum("Disponible","Confirmada","Cancelada"),
CitObservaciones text not null
);

alter table CITAS add constraint fk_CitaMedico foreign key (CitMedico) 
references MEDICOS (MedIdentificacion) on delete cascade on update cascade;

alter table CITAS add constraint fk_CitaConsultorio foreign key (CitConsultorio) 
references CONSULTORIOS (ConNumero) on delete cascade on update cascade;

alter table CITAS add constraint fk_CitaPaciente foreign key (CitPaciente) 
references PACIENTES (PacIdentificacion) on delete cascade on update cascade;

alter table TRATAMIENTOS add constraint fk_TratamientoPaciente foreign key (TraPaciente) 
references PACIENTES (PacIdentificacion) on delete cascade on update cascade;
