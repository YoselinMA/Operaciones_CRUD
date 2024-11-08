```SQL
CREATE TABLE Usuarios(
    INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(100) UNIQUE,
    CHECK(email LIKE "%_@_%._%"),
    contra VARCHAR(15) NOT NULL,
    CHECK(LENGTH(contra)>=8)
);
```

## Date
La operación a *actualizar* se utiliza para modificar registros existentes en la base de datos. Esto se hace con la sentencia update
```SQL
    --Ejemplo para actualizar la constrace;a por su ID--
    UPDATE Usuario SET contra="abcdefgh" WHERE id_usuario=1;

    --Ejemplo para actualizar el email y contrase;a de un usuario en especifico--

    UPDATE Usuario SET contra="1234568", email="yos@gmail.com" WHERE id_usuario=1;
```
