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
## Ejercicios READ

-- 1. **Obtén una lista de todos los productos que tienen un stock mayor a 10 unidades.**  
   
-- *Instrucción:* Muestra el `producto_id`, `nombre`, `precio` y `stock`.

SELECT producto_id, nombre, precio, stock 
FROM productos 
WHERE stock > 10;

-- 2. **Encuentra los pedidos realizados por un cliente en particular.** 
   
-- *Instrucción:* Muestra el `nombre` del cliente, `pedido_id`, `fecha_pedido` y el `total`.

SELECT c.nombre, p.pedido_id, p.fecha_pedido, p.total 
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.cliente_id
WHERE c.nombre = 'Juan Pérez';

-- 3. **Muestra el total de ventas por cada producto.**  
   
-- *Instrucción:* Agrupa por `producto_id` y muestra el `nombre` del producto y la cantidad total vendida en todos los pedidos.
   
SELECT p.nombre, SUM(dp.cantidad) AS total_vendido 
FROM detalle_pedidos dp
JOIN productos p ON dp.producto_id = p.producto_id
GROUP BY dp.producto_id;
