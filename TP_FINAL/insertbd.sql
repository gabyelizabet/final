/*--Datos a insetar en la base de datos --*/

INSERT INTO usuarios(nombre_usuario, nombre, apellido, email, contraseña, f_nacim) VALUES ('pepe', 'jose', 'lopez', 'jlopez@gmail.com', 'jp0101', 20150101);
INSERT INTO usuarios(nombre_usuario, nombre, apellido, email, contraseña, f_nacim) VALUES ('perlita', 'perla', 'lira', 'perlita@gmail.com', 'prl0303', 20120303);
INSERT INTO usuarios(nombre_usuario, nombre, apellido, email, contraseña, f_nacim) VALUES ('lolo', 'lorena', 'perez', 'lolo@gmail.com', 'lolo0505', 20110505);
INSERT INTO usuarios(nombre_usuario, nombre, apellido, email, contraseña, f_nacim) VALUES ('nini', 'noelia', 'cano', 'nini@gmail.com', 'nini0606', 20180606);
INSERT INTO usuarios(nombre_usuario, nombre, apellido, email, contraseña, f_nacim) VALUES ('sol', 'soledad', 'leal', 'sol@gmail.com', 'sol2020', 20171201);


INSERT INTO servidores(nombre_serv) VALUE ('Literatura Fantastica');
INSERT INTO servidores(nombre_serv) VALUE ('Programacion Wb');
INSERT INTO servidores(nombre_serv) VALUE ('Relaciones Personales');


INSERT INTO usuar_serv (usuario_id, servidor_id) VALUES (01, 1);
INSERT INTO usuar_serv (usuario_id, servidor_id) VALUES (02, 2);
INSERT INTO usuar_serv (usuario_id, servidor_id) VALUES (03, 3);
INSERT INTO usuar_serv (usuario_id, servidor_id) VALUES (04, 1);
INSERT INTO usuar_serv (usuario_id, servidor_id) VALUES (05, 3);

INSERT INTO canales (nombre_canal, usuar_serv_id) VALUES ('Club de Lectura',01);
INSERT INTO canales (nombre_canal, usuar_serv_id) VALUES ('Cursos Cortos',02);
INSERT INTO canales (nombre_canal, usuar_serv_id) VALUES ('Amigos',03);
INSERT INTO canales (nombre_canal, usuar_serv_id) VALUES ('Recomendaciones',04);
INSERT INTO canales (nombre_canal, usuar_serv_id) VALUES ('Familia',05);

INSERT INTO chats (mensaje, canal_id) VALUES ('Bienvenidos al Club',01);
INSERT INTO chats (mensaje, canal_id) VALUES ('Hola Amigos, tanto tiempo',03);
INSERT INTO chats (mensaje, canal_id) VALUES ('Hola Familia, como estas?',05);
