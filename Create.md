**Primero creamos una tabla.**
```SQL
CREATE TABLE Usuarios(
    INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(100) UNIQUE,
    CHECK(email LIKE "%_@_%._%"),
    contra VARCHAR(15) NOT NULL,
    CHECK(LENGTH(contra)>=8)
);
```
## Create **(CREAR)**
Es reponsable de insertar nuevos datos en la base de datos, en lenguaje SQL esto se realiza con la sentencia **INSERT INTO** y en caso de MySQL **INSERT** También funciona. El propocito de la operacion es añadir el nuevo regristro a una tabla.

```SQL
--Ejemplo de una insercion valida usando todos los campos--
INSERT INTO Usuarios VALUES(1,"ejemplo@gmail.com", "12345678");

--Ejemplo de una inserción validad usando el comando DEFAULT--
INSERT INTO Usuarios VALUES(DEFAULT,"ejemplo2@gmail.com", "abcdefgh");

--Ejemplo de una inserción sin incluir el Id usuario--
INSERT Usuarios(email, contra) VALUES(DEFAULT,"ejemplo3@hotmail.com", "abcdefgh");
```
