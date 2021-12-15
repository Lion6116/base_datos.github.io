-- Creación de la base de datos.
CREATE DATABASE yournotes;
USE yournotes;
-- Creación de la tabla usuarios.
CREATE TABLE usuarios (
id_usuario INT PRIMARY KEY AUTO_INCREMENT,
Nombres VARCHAR(50) NOT NULL,
Apellidos VARCHAR(50) NOT NULL,
Edad TINYINT(10) NOT NULL,
Genero VARCHAR(1) NOT NULL,
identificacion INT(20) NOT NULL,
Correo VARCHAR(60),
Telefono bigINT(15),
id_Direccion CHAR(20) NOT NULL,
id_Rol CHAR(10) NOT NULL,
id_Sede CHAR(10),
Codigo VARCHAR(20));

INSERT INTO usuarios
(Nombres,Apellidos,Edad,Genero,identificacion,Correo,telefono,id_Direccion,id_rol,id_Sede,Codigo) VALUES
('sara sofia','rosales',16,'f',1066741281,'sofi24@gmail.com',2109677,1,1,2,NULL),
('rosa maria','gomez perez',14,'f',1024486337,'rosita16@gmail.com',7441520,2,1,6,NULL),
('mario jose','suarez pineda',9,'m',82898752,'mario_jose@hotmail.com',2700093,3,1,4,NULL),
('oscar fernando','hernandez carriso',11,'m',1032369748,'fercho1032@gmail.com',3184481,4,1,1,NULL),
('leo egdar','suarez polo',6,'m',1019346881,'leo6116@gmail.com',2716262,5,1,2,NULL),
('lucy maria','suaza carrillo',10,'f',1036221001,'lucym01@hotmail.com',5775575,6,1,7,NULL),
('javier','castillo vega',36,'m',72144102,'javivega@alianzaeducativa.edu.co',3114112011,7,3,9,NULL),
('marta rosa','morales velasco',48,'f',28194354,'marta_velasco@alianzaeducativa.edu.co',3205514011,8,5,9,NULL),
('alba cristina','gallego saez',32,'f',1011501662,'alba_saez@alianzaeducativa.edu.co',3232014140,9,4,8,NULL),
('raul elpidio','garcia carrasco',45,'m',79302401,'raul_carrasco@hotmail.com',3031024452,10,2,null,NULL);

-- Creación de la tabla Ubicacion.
CREATE TABLE ubicacion(
id_direccion INT PRIMARY KEY AUTO_INCREMENT, 
Departamento VARCHAR(25) NOT NULL,
Ciudad VARCHAR(30) not NULL,
Barrio VARCHAR(30)NOT NULL,
Numeracion VARCHAR(50)NOT NULL)
;

INSERT INTO ubicacion
(Departamento, Ciudad,Barrio, Numeracion) 

VALUES
('Cundinamarca','Bogota','Bosa Palmar','cr 1 #21-17'),
('Cundinamarca','Bogota','Bosa Palmar','cll 41 #1-80'),
('Cundinamarca','Bogota','Bosa Piamonte','diag 31 # 6-31'),
('Cundinamarca','Soacha','Quintas de la laguna','Cll 43 # 22-130'),
('Cundinamarca','Soacha','Olivos II','Cll 51 # 16-71'),
('Cundinamarca','Soacha','Ciudad verde','Diagonal 30 L Apto 308'),
('Cundinamarca', 'Bogota','Quinta paredes','Dia 45 # 45-18'),
('Cundinamarca','Bogota', 'Nuevo Muzu', 'Diagonal 52B # 61f-27 sur'),
('Cundinamarca', 'Chia','Las clamidias', 'Calle 2° # 27-18 Apto 308'),
('Cundinamarca', 'Soacha', 'Ducales', 'Carrera 45B # 1-130')
;
-- Creación de la tabla Asignatura.
CREATE TABLE Asignatura (
id_asignatura INT PRIMARY KEY AUTO_INCREMENT,
Asignatura VARCHAR(40) NOT NULL, Code_Asignatura INT(10) NOT NULL
);

INSERT INTO Asignatura (id_asignatura,Asignatura,Code_Asignatura) VALUES 
(1,'Ciencias naturales y educacion ambiental' ,6116),
(2,'Ciencias sociales, historia, gografia, constitucion politica y democracia' ,1032),
(3,'Educacion artistica y cultural' ,1411),
(4,'Educacion etica y en valores humanos',2235),
(5,'Educacion fisica, recreacion y deportes.',3215),
(6,'Educacion religiosa',1678),
(7,'Humanidades, lengua castellana e idiomas extranjeros',2341),
(8,'Matematicas',8976),
(9,'Tecnologia e informatica',5432)
;
-- Creación de la tabla Promedios.
CREATE TABLE Reportes (
id_reportes_1 INT PRIMARY KEY AUTO_INCREMENT,
id_aula INT(10) NOT NULL,
id_usuario INT(10) NOT NULL,
id_asignatura INT(10) NOT NULL , 
Promedio_Parcial DOUBLE(2,1) NOT NULL, 
Promedio_final DOUBLE(2,1)	NOT	NULL, 
Alerta CHAR(1) NOT NULL);

INSERT INTO Reportes (id_aula,id_usuario,id_asignatura,Promedio_Parcial,Promedio_final,Alerta) VALUES
(11,1,6,3.6,3.6,'f'),
(8,4,4,2.8,2.8,'v'),
(11,5,3,4.2,4.2,'f'),
(3,6,2,4.8,4.8,'f'),
(3,2,1,3.4,3.4,'f')
;

CREATE TABLE Aulas (
id_aula INT PRIMARY KEY AUTO_INCREMENT, Grado INT(10) NOT NULL, Salon varchar(3) NOT NULL, Capacidad_max int(10) NOT NULL);

INSERT INTO Aulas (Grado, Salon, Capacidad_max)
VALUES (1, 'A', 20),
(1, 'B', 20),
(1, 'C', 20),
(2, 'A', 25),
(2, 'B', 25),
(2, 'C', 25),
(3, 'A', 22),
(3, 'B', 22),
(3, 'C', 22),
(4, 'A', 25),
(4, 'B', 25),
(4, 'C', 25),
(5, 'A', 30),
(5, 'B', 30),
(5, 'C', 30),
(6, 'A', 32),
(6, 'B', 32),
(6, 'C', 32),
(7, 'A', 32),
(7, 'B', 32),
(7, 'C', 32),
(8, 'A', 30),
(8, 'B', 30),
(8, 'C', 30),
(9, 'A', 30),
(9, 'B', 30),
(9, 'C', 30),
(10, 'A', 30),
(10, 'B', 30),
(10, 'C', 30),
(11, 'A', 32),
(11, 'B', 32),
(11, 'C', 32);

CREATE TABLE Notas (
id_Notas INT PRIMARY KEY AUTO_INCREMENT, 
id_usuario int (10) not null,
id_asignatura int (10) not null,
nota DOUBLE(2,1) not null, 
Observaciones varchar (50));

INSERT INTO Notas (id_usuario, id_asignatura, nota, Observaciones)
VALUES 
(1,8,3.8, 'Reforzar sistema binario'),
(2,3,4.8, 'Demuestra dominio en los temas'),
(3,5,2.4, 'No presenta trabajos en clase'),
(4,7,3.8, 'Reforzar ortografia'),
(5,8,4.2, 'Realizar ejecicios sobre ecuaciones'),
(6,1,4.5, 'Ecxelente trabajo en clase')
;

CREATE TABLE Rol (
id_rol INT PRIMARY KEY AUTO_INCREMENT, Descripcion varchar(20) not null)
;

INSERT INTO Rol (id_rol,Descripcion)
VALUES (1,'Estudiante'),
(2,'Acudiente'),
(3,'Docente'),
(4,'Coordinador'),
(5,'Rector');

CREATE TABLE sede (
id_sede INT PRIMARY KEY AUTO_INCREMENT, Nom_sede varchar(30)not null,
Dir_sede varchar (50) not null, Correo_sede varchar(30) not null,
Tel_sede int(20) not null);

insert into sede(nom_sede, dir_sede, correo_sede, tel_sede) 
values
('Argelia', 'Calle 63 Sur No.81 A-31 (Bosa Centro) Bogotá', 'info@alianzaeducativa.edu.co', 7750606),
('Jaime Garzon', 'Calle 85A No.49-45 Sur (Barrio Britalia) Bogotá', 'info@alianzaeducativa.edu.co', 4528546),
('La giralda', 'Calle 1 No. 3-60 (Barrio Las Cruces) Bogotá', 'info@alianzaeducativa.edu.co', 3371094),
('Miravalle', 'Calle 75A Sur No.14P -15 (Marichuela) Bogotá', 'info@alianzaeducativa.edu.co', 7446130),
('Santiago de las Atalayas', 'Cra. 89a Bis A #34 (Bosa Libertad) Bogotá', 'info@alianzaeducativa.edu.co', 7844024),
('Jorge Isaacs', 'Cra. 92 # 73 50 Sur (Bosa el Recreo) Bogotá', 'info@alianzaeducativa.edu.co', 7452016),
('Las margaritas', 'Cra. 88c # 43 53 Sur (Bosa Margaritas) Bogotá' , 'info@alianzaeducativa.edu.co', 7462016),
('El nogal', 'Cl. 63 Sur #81A-30 (Bosa) Bogotá', 'info@alianzaeducativa.edu.co', 7751187),
('Laurel de cera', 'Calle 85 sur# 94-75. Cl. 85 Sur Bogotá', 'info@alianzaeducativa.edu.co', 7462016);


show tables;

select * from asignatura;

select * from aulas;

select * from notas;

select * from reportes;
 
select * from rol;
 
select * from sede;

select * from ubicacion;
 
select * from usuarios;
 
 
 
select sede.nom_sede as colegio,
usuarios.nombres as estudiante
from usuarios
inner join sede on sede.id_sede = usuarios.id_sede;

update usuarios set telefono  = 3114112210 where apellidos = 'suarez pineda';

update notas set nota = round (nota+0.5) where id_notas = 1;

SELECT user.nombres,user.genero,rep.promedio_final,rep.alerta
FROM reportes rep JOIN usuarios user
ON (rep.id_usuario = user.id_usuario)
WHERE user.nombres NOT LIKE '%infor%';

--Sentencias UPDATE

UPDATE
reportes rep JOIN usuarios user
ON (rep.id_usuario = user.id_usuario)
SET
-- aumentar el promedio del estudiante
rep.promedio_final = rep.promedio_final + 0.5,
-- cambiar genero a n 
user.genero = ‘n’
WHERE
user.nombres NOT LIKE '%infor%' AND rep.promedio_final = 2.8; -- sin aumento todavia

SELECT user.nombres,user.genero,rep.promedio_final,rep.alerta
FROM reportes rep JOIN usuarios user
ON (rep.id_usuario = user.id_usuario)
WHERE user.nombres NOT LIKE '%infor%';


--DELETE simple

DELETE FROM aulas WHERE id_aula = 21;
--DELETE por LIMIT
SELECT id_aula,grado FROM aulas ORDER BY id_aula DESC LIMIT 1;

DELETE FROM aulas ORDER BY id_aula DESC LIMIT 1;

SELECT id_aula,grado FROM aulas ORDER BY id_aula DESC LIMIT 1;


--DELETE relacionado con tres tablas

SELECT id_usuario,correo FROM usuarios WHERE id_usuario = 6;
SELECT * FROM notas WHERE id_usuario = 6;
SELECT * FROM reportes WHERE id_usuario = 6
DELETE FROM
user,note,repo -- alias definidos en la cláusula USING
USING
usuarios user,notas note,reportes repo
WHERE
user.id_usuario = note.id_usuario
AND user.id_usuario = repo.id_usuario
AND user.correo = 'lucym01@hotmail.com';

SELECT id_usuario,correo FROM usuarios WHERE id_usuario = 6;
SELECT * FROM notas WHERE id_usuario = 6;
SELECT * FROM reportes WHERE id_usuario = 6




