CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL CHECK (email LIKE '%@%._%'),
    telefono VARCHAR(15) CHECK (LENGTH(telefono) >= 10),
    direccion VARCHAR(255) NOT NULL
);

## Ejercicios READ

##Consulta todos los registros de la tabla clientes.

SELECT * FROM clientes;

## Consulta el nombre y email de todos los clientes.

SELECT nombre, email FROM clientes;

## Consulta los clientes cuyo número de teléfono empiece con "555".

SELECT * FROM clientes WHERE telefono LIKE '555%';

## Consulta los clientes cuyo nombre contenga "López".

SELECT * FROM clientes WHERE nombre LIKE '%López%';

## Consulta los clientes ordenados por nombre en orden ascendente.

SELECT * FROM clientes ORDER BY nombre ASC;

## Consulta el email de los clientes cuyo id sea par.

SELECT email FROM clientes WHERE MOD(id_cliente, 2) = 0;

## Consulta los clientes con direcciones que contengan más de 10 caracteres.

SELECT * FROM clientes WHERE LENGTH(direccion) > 10;
