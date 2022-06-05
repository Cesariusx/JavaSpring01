INSERT INTO regiones ( id, nombre_region ) VALUES ( 1, 'Sudamerica' );
INSERT INTO regiones ( id, nombre_region ) VALUES ( 2, 'Centromaerica' );
INSERT INTO regiones ( id, nombre_region ) VALUES ( 3, 'Norteamerica' );
INSERT INTO regiones ( id, nombre_region ) VALUES ( 4, 'Europa' );
INSERT INTO regiones ( id, nombre_region ) VALUES ( 5, 'Asia' );
INSERT INTO regiones ( id, nombre_region ) VALUES ( 6, 'Africa' );
INSERT INTO regiones ( id, nombre_region ) VALUES ( 7, 'Oceania' );
INSERT INTO regiones ( id, nombre_region ) VALUES ( 8, 'Antartida' );

INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (1, 'Cesar', 'Soto', 'cesar1@hotmail.com', '2020-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (2, 'Cristina', 'Montes', 'cris2@hotmail.com', '2022-03-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (3, 'Rosa', 'Cordova', 'rosa3@hotmail.com', '2021-01-02');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (4, 'Saul', 'Fernandez', 'cesar4@hotmail.com', '2022-02-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (5, 'Paul', 'Oliva', 'paul5@hotmail.com', '2020-03-03');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (6, 'Cinthia', 'Velazquez', 'ernesto6@hotmail.com', '2020-02-02');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (7, 'Oscar', 'Salas', 'oscar7@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (8, 'Cesar', 'Soto', 'cesar8@hotmail.com', '2020-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (1, 'Cristina', 'Montes', 'cris9@hotmail.com', '2022-03-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (2, 'Rosa', 'Cordova', 'rosa10@hotmail.com', '2021-01-02');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (3, 'Saul', 'Fernandez', 'cesar11@hotmail.com', '2022-02-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (4, 'Paul', 'Oliva', 'paul12@hotmail.com', '2020-03-03');
/*
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (5, 'Cinthia', 'Velazquez', 'ernesto13@hotmail.com', '2020-02-02');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (6, 'Oscar', 'Salas', 'oscar14@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (7, 'Cesar', 'Soto', 'cesar15@hotmail.com', '2020-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (8, 'Cristina', 'Montes', 'cris16@hotmail.com', '2022-03-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (1, 'Rosa', 'Cordova', 'rosa17@hotmail.com', '2021-01-02');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (2, 'Saul', 'Fernandez', 'cesar18@hotmail.com', '2022-02-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (3, 'Paul', 'Oliva', 'paul19@hotmail.com', '2020-03-03');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (4, 'Cinthia', 'Velazquez', 'ernesto20@hotmail.com', '2020-02-02');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (5, 'Oscar', 'Salas', 'oscar21@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (6, 'Oscar', 'Salas', 'Correo10@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (7, 'Oscar', 'Salas', 'Correo11@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (8, 'Oscar', 'Salas', 'Correo12@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (1, 'Oscar', 'Salas', 'Correo13@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (2, 'Oscar', 'Salas', 'Correo14@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (3, 'Oscar', 'Salas', 'Correo15@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (4, 'Oscar', 'Salas', 'Correo16@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (5, 'Oscar', 'Salas', 'Correo17@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (6, 'Oscar', 'Salas', 'Correo18@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (7, 'Oscar', 'Salas', 'Correo19@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (8, 'Oscar', 'Salas', 'Correo20@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (1, 'Oscar', 'Salas', 'Correo21@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (2, 'Oscar', 'Salas', 'Correo22@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (3, 'Oscar', 'Salas', 'Correo23@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (4, 'Oscar', 'Salas', 'Correo24@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (5, 'Oscar', 'Salas', 'Correo25@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (6, 'Oscar', 'Salas', 'Correo26@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (7, 'Oscar', 'Salas', 'Correo27@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (8, 'Oscar', 'Salas', 'Correo28@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (1, 'Oscar', 'Salas', 'Correo29@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (2, 'Oscar', 'Salas', 'Correo30@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (3, 'Oscar', 'Salas', 'Correo31@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (4, 'Oscar', 'Salas', 'Correo32@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (5, 'Oscar', 'Salas', 'Correo33@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (6, 'Oscar', 'Salas', 'Correo34@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (7, 'Oscar', 'Salas', 'Correo35@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (8, 'Oscar', 'Salas', 'Correo36@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (1, 'Oscar', 'Salas', 'Correo37@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (2, 'Oscar', 'Salas', 'Correo38@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (3, 'Oscar', 'Salas', 'Correo39@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (4, 'Oscar', 'Salas', 'Correo40@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (5, 'Oscar', 'Salas', 'Correo41@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (6, 'Oscar', 'Salas', 'Correo42@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (7, 'Oscar', 'Salas', 'Correo43@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (8, 'Oscar', 'Salas', 'Correo44@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (1, 'Oscar', 'Salas', 'Correo45@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (2, 'Oscar', 'Salas', 'Correo46@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (3, 'Oscar', 'Salas', 'Correo47@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (4, 'Oscar', 'Salas', 'Correo48@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (5, 'Oscar', 'Salas', 'Correo49@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (6, 'Oscar', 'Salas', 'Correo50@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (7, 'Oscar', 'Salas', 'Correo60@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (8, 'Oscar', 'Salas', 'Correo61@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (1, 'Oscar', 'Salas', 'Correo62@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (2, 'Oscar', 'Salas', 'Correo63@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (3, 'Oscar', 'Salas', 'Correo64@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (4, 'Oscar', 'Salas', 'Correo65@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (5, 'Oscar', 'Salas', 'Correo66@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (6, 'Oscar', 'Salas', 'Correo67@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (7, 'Oscar', 'Salas', 'Correo68@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (8, 'Oscar', 'Salas', 'Correo69@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (1, 'Oscar', 'Salas', 'Correo70@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (2, 'Oscar', 'Salas', 'Correo71@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (3, 'Oscar', 'Salas', 'Correo72@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (4, 'Oscar', 'Salas', 'Correo73@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (5, 'Oscar', 'Salas', 'Correo74@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (6, 'Oscar', 'Salas', 'Correo75@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (7, 'Oscar', 'Salas', 'Correo76@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (8, 'Oscar', 'Salas', 'Correo77@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (1, 'Oscar', 'Salas', 'Correo78@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (2, 'Oscar', 'Salas', 'Correo79@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (3, 'Oscar', 'Salas', 'Correo80@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (4, 'Oscar', 'Salas', 'Correo81@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (5, 'Oscar', 'Salas', 'Correo82@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (6, 'Oscar', 'Salas', 'Correo83@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (7, 'Oscar', 'Salas', 'Correo84@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (8, 'Oscar', 'Salas', 'Correo85@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (1, 'Oscar', 'Salas', 'Correo86@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (2, 'Oscar', 'Salas', 'Correo87@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (3, 'Oscar', 'Salas', 'Correo88@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (4, 'Oscar', 'Salas', 'Correo89@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (5, 'Oscar', 'Salas', 'Correo90@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (6, 'Oscar', 'Salas', 'Correo91@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (7, 'Oscar', 'Salas', 'Correo92@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (8, 'Oscar', 'Salas', 'Correo93@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (1, 'Oscar', 'Salas', 'Correo94@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (2, 'Oscar', 'Salas', 'Correo95@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (3, 'Oscar', 'Salas', 'Correo96@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (4, 'Oscar', 'Salas', 'Correo97@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (5, 'Oscar', 'Salas', 'Correo98@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (6, 'Oscar', 'Salas', 'Correo99@hotmail.com', '2021-01-01');
INSERT INTO clientes ( region_id, nombre, apellido, email, create_at ) VALUES (7, 'Oscar', 'Salas', 'Correo100@hotmail.com', '2021-01-01');
*/

/* Creamos algunos usuarios con sus roles */
INSERT INTO `usuarios` ( username, password, enabled ) VALUES ('cesar', '$2a$10$ZWostrLbtb2E375nl2kC3uAQRaaT1SyRIVXaYn.7wQ9sOAbDntHAW', 1 );
INSERT INTO `usuarios` ( username, password, enabled ) VALUES ('admin', '$2a$10$WOMWAtkn5Ekgs/t4OTSTAeejhzIOGshiiNjzNCBO8FarhxmKG8ACO', 1 );

INSERT INTO `roles` ( nombre ) VALUES ( 'ROLE_USER' );
INSERT INTO `roles` ( nombre ) VALUES ( 'ROLE_ADMIN' );

INSERT INTO usuarios_roles ( usuario_id, role_id ) VALUES ( 1, 1 )
INSERT INTO usuarios_roles ( usuario_id, role_id ) VALUES ( 2, 2 )
INSERT INTO usuarios_roles ( usuario_id, role_id ) VALUES ( 2, 1 )

INSERT INTO productos (nombre, precio, create_at) VALUES ('Camara panasonic', 5000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('PC gamer III', 4000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Notebook Lenovo', 4500, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Notebook HP', 6000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Monitor 15 pulgadas', 5100, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Case Power', 6800, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Teclado', 1000, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Mouse', 100, NOW());

INSERT INTO facturas(descripcion, observacion, cliente_id, create_at) VALUES ( 'Factura de equipos de oficia', null, 1, NOW() );
INSERT INTO facturas_items ( cantidad, factura_id, producto_id ) VALUES ( 1,1,1 );
INSERT INTO facturas_items ( cantidad, factura_id, producto_id ) VALUES ( 2,1,4 );
INSERT INTO facturas_items ( cantidad, factura_id, producto_id ) VALUES ( 1,1,5 );
INSERT INTO facturas_items ( cantidad, factura_id, producto_id ) VALUES ( 1,1,7 );


INSERT INTO facturas(descripcion, observacion, cliente_id, create_at) VALUES ( 'Factura de mi cris', 'gracias por su visita', 1, NOW() )
INSERT INTO facturas_items ( cantidad, factura_id, producto_id ) VALUES ( 3,2,6 )








