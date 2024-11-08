```SQL
CREATE TABLE Usuarios(
    INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(100) UNIQUE,
    CHECK(email LIKE "%_@_%._%"),
    contra VARCHAR(15) NOT NULL,
    CHECK(LENGTH(contra)>=8)
);
```
## Delete

La operacion *eliminar* se usa para borrar registros de la base de datos. Esto se realiza con la sentencia DELETE. **Devemos ser muy cuidadosos con esta operación, ya que una vez que los datos son eliminados, no pueden ser recuperados**

```SQL
--Eliminar el usuario por el ID--
DELETE FROM Usuarios WHERE id_usuario=4;

--Eliminar el usuario con un email especifico--
DELETE FROM Usuarios where email="yos@gmail.com";
```
