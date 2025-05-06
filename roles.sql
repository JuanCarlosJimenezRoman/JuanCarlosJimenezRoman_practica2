créate Database test_roles;

CREATE TABLE Departamentos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE Empleados (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    departamento_id INT,
    salario DECIMAL(10,2),
    FOREIGN KEY (departamento_id) REFERENCES Departamentos(id)
);

create role gerente;

create role recepcion;

create role limpieza;

grant select, insert, delete, update on test_role.* to 'gerente';

grant select, insert, update on test_role.* to 'recepcion';

grant select, update on test_role.* to 'limpieza';

flush privileges;

create user 'Juan_Carlos'@'localhost' identified by '020108juan';

create user 'Carlos'@'localhost' identified by '020108juan';

create user 'Charly'@'localhost' identified by '020108juan';

grant 'gerente' to 'Juan_Carlos'@'localhost';

grant 'recepcion' to 'Carlos'@'localhost';

grant 'limpieza' to 'Charly'@'localhost';

SELECT User, localhost FROM mysql.user;

SELECT User, Host FROM mysql.user;

SHOW GRANTS FOR 'Carlos'@'localhost';

SHOW GRANTS FOR 'Juan_Carlos'@'localhost';

SHOW GRANTS FOR 'gerente';