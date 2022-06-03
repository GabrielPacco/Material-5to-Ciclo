CREATE DATABASE db_transaccion; 
use db_transaccion; 

CREATE TABLE Cliente (
	id INT PRIMARY KEY,
    nombre VARCHAR(30),
    saldo INT
);

INSERT INTO Cliente VALUES (1,"Maria",1000);
INSERT INTO Cliente VALUES (2,"Carlos",1000);

SET SQL_SAFE_UPDATES = 0;

# =================== Transaccion =====================
# Maria va a transferir 100 soles a Carlos

START TRANSACTION; 

SELECT saldo FROM Cliente WHERE nombre = "Maria"; # Verificar la existencia de la cuenta de MARIA y saldo suficiente
SELECT saldo FROM Cliente WHERE nombre = "Carlos"; # Verificar la existencia de la cuenta de CARLOS y saldo actual

UPDATE Cliente SET saldo = saldo - 100 WHERE nombre = "Maria"; # Descuenta 100 soles a MARIA
SELECT saldo FROM Cliente WHERE nombre = "Maria"; # Verifica saldo actual de MARIA = 900

UPDATE Cliente SET saldo = saldo + 100 WHERE nombre = "Carlos"; # Agrega 100 soles a CARLOS
SELECT saldo FROM Cliente WHERE nombre = "Carlos"; # Verificar saldo actual de CARLOS = 1100

rollback; # Aborta la transaccion
commit;	  # Compromete la transaccion

