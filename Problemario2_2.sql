## Ejercicios UPDATE

##1. **Actualiza el precio de todos los productos de una categoria aumentando un 15%.**  
   
##*Instrucción:* Usa la columna `categoria` para filtrar los productos.

UPDATE productos 
SET precio = precio * 1.15 
WHERE categoria = 'Electrónica';

##2. **Modifica el correo de uno de los clientes por un nuevo correo electrónico.**
   
##*Instrucción:* Asegúrate de que el nuevo correo sea único.

UPDATE clientes 
SET correo = 'nuevo.email@example.com' 
WHERE cliente_id = 2;

##3. **Corrige el stock de un producto cuyo stock actual es incorrecto.** 
##*Instrucción:* Busca el producto por su `producto_id` y actualiza el campo `stock`.

UPDATE productos 
SET stock = 25 
WHERE producto_id = 3;
