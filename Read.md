```SQL
CREATE TABLE Usuarios(
    INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(100) UNIQUE,
    CHECK(email LIKE "%_@_%._%"),
    contra VARCHAR(15) NOT NULL,
    CHECK(LENGTH(contra)>=8)
);
```
## Read
La operación *leer* es utilizada para consultar o recuperar datos de la base de datos. Esto no modifica los datos, simplemente los extrae. En MySQL esta operación se realiza con la sentencia SELECT 

```SQL
-- Ejemplo de una consulta para todos los datos de una tabla--
SELECT * FROM Usuarios

--Ejemplo de consulta para un rejistro en especifico a travez del ID--
SELECT * FROM Usuarios WHERE id_usuario=1;

--Ejemplo de consulta para un registro con un email en especifico--

SELECT * FROM Usuarios WHERE email="ejemplo@gmail.com";

--Ejemplo de consulta con solo los campos email y contra--
SELECT email,contra FROM Usuarios;

--Ejemplo de consulta con un condicional lógico--
SELECT * FROM Usuarios WHERE LENGTH(contra)>=9; 
```
