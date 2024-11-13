
CREATE TABLE productos (
    producto_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    precio DECIMAL(10, 2),
    stock INT,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE clientes (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL,  
    fecha_registro DATE DEFAULT CURDATE()
);

CREATE TABLE pedidos (
    pedido_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    fecha_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
    ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE detalle_pedidos (
    detalle_id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT,
    producto_id INT,
    cantidad INT,
    precio_unitario DECIMAL(10, 2),
    FOREIGN KEY (pedido_id) REFERENCES pedidos(pedido_id)
    ON UPDATE CASCADE ON DELETE RESTRICT,
    FOREIGN KEY (producto_id) REFERENCES productos(producto_id)
    ON UPDATE CASCADE ON DELETE RESTRICT
);

## Ejercicios CREATE

##1. **Inserta 5 productos diferentes en la tabla `productos`.**  
   
##*Instrucción:* Los productos deben incluir un nombre, categoría, precio y stock inicial.

INSERT INTO productos (nombre, categoria, precio, stock) 
VALUES 
('Laptop Gamer', 'Electrónica', 1200.00, 20),
('Audífonos Bluetooth', 'Electrónica', 50.00, 100),
('Silla Ergonomica', 'Muebles', 200.00, 30),
('Cafetera Italiana', 'Hogar', 80.00, 15),
('Libro "SQL Avanzado"', 'Libros', 35.00, 50);


##2. **Registra 3 clientes en la tabla `clientes`.**  
   
## *Instrucción:* Ingresa datos de nombre y correo para cada cliente. Asegúrate de que los correos sean únicos.

INSERT INTO clientes (nombre, correo) 
VALUES 
('Juan Pérez', 'juan.perez@example.com'),
('Ana López', 'ana.lopez@example.com'),
('Carlos Ruiz', 'carlos.ruiz@example.com');


##3. **Inserta 2 pedidos hechos por diferentes clientes.**  
   
##*Instrucción:* Cada pedido debe tener al menos 2 productos, especifica la cantidad y el precio unitario de cada uno.

-- Pedido 1 por el cliente 'Juan Pérez'
INSERT INTO pedidos (cliente_id, total)
VALUES (1, 1350.00);

INSERT INTO detalle_pedidos (pedido_id, producto_id, cantidad, precio_unitario)
VALUES 
(1, 1, 1, 1200.00),(1, 2, 3, 50.00);    

-- Pedido 2 por el cliente 'Ana López'
INSERT INTO pedidos (cliente_id, total)
VALUES (2, 280.00);

INSERT INTO detalle_pedidos (pedido_id, producto_id, cantidad, precio_unitario)
VALUES (2, 3, 1, 200.00), (2, 4, 1, 80.00); 
