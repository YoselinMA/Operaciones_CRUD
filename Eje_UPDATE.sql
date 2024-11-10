CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL CHECK (email LIKE '%@%._%'),
    telefono VARCHAR(15) CHECK (LENGTH(telefono) >= 10),
    direccion VARCHAR(255) NOT NULL
);


## Ejercicios UPDATE

-- Actualiza el número de teléfono de un cliente específico.

UPDATE clientes SET telefono = '5559876543' WHERE id_cliente = 1;

-- Cambia el email de un cliente con un id_cliente específico.

UPDATE clientes SET email = 'nuevo.email@example.com' WHERE id_cliente = 2;

-- Intenta actualizar el correo de un cliente a un email que ya existe (debería fallar).

UPDATE clientes SET email = 'ana.torres@example.com' WHERE id_cliente = 3;

-- Actualiza la dirección de todos los clientes cuyos nombres contengan "López".

UPDATE clientes SET direccion = 'Nueva Dirección' WHERE nombre LIKE '%López%';

-- Incrementa los id_cliente de todos los clientes en 10 (esto es solo un ejercicio teórico).

UPDATE clientes SET id_cliente = id_cliente + 10;
