/*--Crear la base de datos convoweb con sus respectivas tablas--*/

CREATE DATABASE convoweb;
 
use convoweb;

CREATE TABLE usuarios(
usuario_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre_usuario VARCHAR(45) NOT NULL ,
nombre VARCHAR(45) NOT NULL,
apellido VARCHAR(45) NOT NULL,
email VARCHAR (45) NOT NULL UNIQUE,
contraseña VARCHAR (45) NOT NULL,
f_nacim DATE,
foto VARCHAR(45) DEFAULT ‘app\static\imagenes\images.1.png’
);

CREATE TABLE servidores( 
servidor_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre_serv VARCHAR (45) NOT NULL,
icono VARCHAR(45) DEFAULT ‘app\static\imagenes\servidor_ico.jpg’
);

CREATE TABLE usuar_serv(
usuar_serv_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
usuario_id INT NOT NULL,
servidor_id INT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (servidor_id) REFERENCES servidores (servidor_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE canales(
canal_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre_canal VARCHAR (90) NOT NULL,
usuar_serv_id INT NOT NULL,
FOREIGN KEY (usuar_serv_id) REFERENCES usuar_serv (usuar_serv_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE chats(
chat_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
canal_id INT NOT NULL,
fecha DATETIME DEFAULT NOW(),
mensaje TEXT(2000) NOT NULL
FOREIGN KEY (canal_id) REFERENCES canales (canal_id) ON DELETE CASCADE ON UPDATE CASCADE
);

