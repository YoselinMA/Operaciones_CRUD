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
## Ejercicos DELETE

-- 1. **Elimina todos los productos de la tabla `productos` que no tienen stock disponible.** 
   
-- *Instrucción:* Debes usar la columna `stock` para identificar productos con stock igual a 0.

DELETE FROM productos 
WHERE stock = 0;

-- 2. **Borra un pedido que fue cancelado por el cliente.** 
   
-- *Instrucción:* Elimina el pedido junto con todos los registros relacionados en la tabla `detalle_pedidos`.

DELETE FROM detalle_pedidos 
WHERE pedido_id = 1;  -- Pedido a eliminar

DELETE FROM pedidos 
WHERE pedido_id = 1;

-- 3. **Elimina un cliente que ha solicitado la eliminación de su cuenta.**
   
-- *Instrucción:* Asegúrate de borrar primero los registros relacionados en la tabla `pedidos` y luego el cliente de la tabla `clientes`.

DELETE FROM detalle_pedidos 
WHERE pedido_id IN (SELECT pedido_id FROM pedidos WHERE cliente_id = 3);  

DELETE FROM pedidos 
WHERE cliente_id = 3;

DELETE FROM clientes 
WHERE cliente_id = 3;

