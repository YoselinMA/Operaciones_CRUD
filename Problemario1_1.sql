CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL CHECK (email LIKE '%@%._%'),
    telefono VARCHAR(15) CHECK (LENGTH(telefono) >= 10),
    direccion VARCHAR(255) NOT NULL
);

-- Ejercicios CREATE

-- Inserta un cliente válido en la tabla.

INSERT INTO clientes (nombre, email, telefono, direccion)
VALUES ('Juan Pérez', 'juan.perez@example.com', '5551234567', 'Av. Reforma 123');

-- Inserta un cliente sin especificar el campo id_cliente.
-- El id cliente se llenara automaticamente ya que es AUT INCREMENT
INSERT INTO clientes (nombre, email, telefono, direccion)
VALUES ('Maria López', 'maria.lopez@example.com', '5559876543', 'Calle 456');

                
-- Intenta insertar un cliente con un formato de correo incorrecto (debería fallar).

INSERT INTO clientes (nombre, email, telefono, direccion)
VALUES ('Carlos Ruiz', 'carlos.ruizexample.com', '5558765432', 'Calle Morelos 789');


-- Inserta múltiples clientes en una sola consulta.
INSERT INTO clientes (nombre, email, telefono, direccion)
VALUES ('Gian Carlos', 'charli123@gmail.com', '5648935487', 'El Quinte'), ('Ana Torres', 'ana.torres@example.com', '5556543210', 'Calle Juárez'),
('Luis Gómez', 'luis.gomez@example.com', '5551239876', 'Av. Hidalgo');

-- Inserta un cliente con un número de teléfono de menos de 10 caracteres (debería fallar).

INSERT INTO clientes (nombre, email, telefono, direccion)
VALUES ('Natalis', 'nata123@gmail.com', '6533598', 'Jilotepec');
