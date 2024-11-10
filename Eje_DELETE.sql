CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL CHECK (email LIKE '%@%._%'),
    telefono VARCHAR(15) CHECK (LENGTH(telefono) >= 10),
    direccion VARCHAR(255) NOT NULL
);

## Ejercicios DELETE

##Elimina un cliente específico con un id_cliente da.do.

DELETE FROM clientes WHERE id_cliente = 1;

## Elimina todos los clientes que tengan un número de teléfono que empiece con "555".

DELETE FROM clientes WHERE telefono LIKE '555%';

## Elimina todos los clientes cuyo nombre contenga "Gómez".

DELETE FROM clientes WHERE nombre LIKE '%Gómez%';

## Elimina todos los clientes con direcciones que contengan menos de 10 caracteres.

DELETE FROM clientes WHERE LENGTH(direccion) < 10;

## Elimina todos los registros de la tabla clientes (¡CUIDADO!). 

DELETE FROM clientes;
