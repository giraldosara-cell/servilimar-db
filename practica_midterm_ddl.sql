CREATE TABLE ciudad (
 ciudad_id INT PRIMARY KEY, 
nombre_ciudad VARCHAR(100), 
codigo_postal VARCHAR(10) 
); 

CREATE TABLE usuario ( 
usuario_id INT PRIMARY KEY, 
nombre VARCHAR(100), 
apellido VARCHAR(100), 
tipo_usuario VARCHAR(50), 
condicion_especial VARCHAR(100), 
ciudad_id INT,
 FOREIGN KEY (ciudad_id) REFERENCES ciudad(ciudad_id) 
); 

CREATE TABLE empleado ( 
empleado_id INT PRIMARY KEY,
usuario_id INT, 
cargo VARCHAR(100), 
departamento VARCHAR(100), 
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id) 
); 

CREATE TABLE servicio ( 
servicio_id INT PRIMARY KEY, 
nombre VARCHAR(100), 
descripcion TEXT, 
estado VARCHAR(20) 
); 

CREATE TABLE turno ( 
turno_id INT PRIMARY KEY, 
usuario_id INT, servicio_id INT, 
empleado_id INT, 
fecha DATE, 
hora_inicio TIME, 
hora_fin TIME, 
estado VARCHAR(20), 
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id), 
FOREIGN KEY (servicio_id) REFERENCES servicio(servicio_id), 
FOREIGN KEY (empleado_id) REFERENCES empleado(empleado_id) 
); 

CREATE TABLE medioContacto ( 
medio_id INT PRIMARY KEY, 
nombre_medio VARCHAR(50) ); 

CREATE TABLE notificacion (
notificacion_id INT PRIMARY KEY, 
usuario_id INT, 
medio_id INT, 
mensaje TEXT, 
fecha_envio TIMESTAMP, 
estado VARCHAR(20), 
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id), 
FOREIGN KEY (medio_id) REFERENCES medioContacto(medio_id) 
);