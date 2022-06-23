use BD_Ferreteria;

delimiter //
CREATE TRIGGER CLIENTE 
BEFORE INSERT 
ON 
clientes 
FOR EACH ROW 
IF NEW.Id_Cliente < 0 
THEN SET NEW.Id_Cliente = 0; 
END IF;//
delimiter ;

SELECT * FROM clientes;






DELIMITER //

CREATE TRIGGER facturas_update
BEFORE UPDATE ON 
facturas FOR EACH ROW
BEGIN

   DECLARE usuario varchar(50);

   SELECT USER(sara) INTO usuario;

   INSERT INTO facturas
   ( Id_Factura, 
	 update_Fecha, 
     update_Cliente)
   VALUES
   ( NEW.factura_id,
     SYSDATE(),
     usuario );
     
END; //

DELIMITER ;
