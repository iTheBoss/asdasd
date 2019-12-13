		drop database if exists BD_MANA;
CREATE database BD_MANA;
USE BD_MANA;
CREATE TABLE BIOGRAFIA (
	BIO_id int(02) NOT NULL PRIMARY KEY,
	BIO_titulo varchar(50) NOT NULL,
	BIO_descripcion text NOT NULL
);
CREATE TABLE INTEGRANTE (
	INT_id int(02) NOT NULL PRIMARY KEY,
	INT_nombre varchar(50) NOT NULL,
	INT_nombreimagen varchar(50) NOT NULL
);
CREATE TABLE DISCOGRAFIA (
	DISC_id int(2) NOT NULL PRIMARY KEY,
	DISC_album VARCHAR(50) NOT NULL,
	DISC_anio YEAR NULL
);
CREATE TABLE CANCION (
	CAN_id int(02) NOT NULL PRIMARY KEY,
	CAN_autor VARCHAR(80) NOT NULL,
	CAN_titulo VARCHAR(30) NOT NULL
);
CREATE TABLE USUARIO (
	USER_id INT NOT NULL AUTO_INCREMENT,
	USER_nombres VARCHAR(50) NOT NULL,
	USER_apellidos VARCHAR(50) NOT NULL,
	USER_email VARCHAR(50) NOT NULL,
	USER_password VARCHAR(50) NOT NULL,
	USER_fechacreacion DATE NULL ,
	PRIMARY KEY(USER_id)
);
CREATE TABLE VIDEO (
	VID_id int(2) NOT NULL PRIMARY KEY,
	VID_titulo VARCHAR(50) NOT NULL,
	VID_descripcion TEXT NULL,
	VID_vistas int DEFAULT 0
);
CREATE TABLE CANCION_ALBUM (
	CAN_id int(2) NOT NULL,
	DISC_id int(2) NOT NULL,
	PRIMARY KEY (CAN_id, DISC_id),
	FOREIGN KEY (CAN_id) REFERENCES CANCION (CAN_id),
	FOREIGN KEY (DISC_id) REFERENCES DISCOGRAFIA (DISC_id)
);
CREATE TABLE COMENTARIO (
	COM_id INT NOT NULL AUTO_INCREMENT,
	VID_id int(2) NOT NULL,
	COM_comentario TEXT NOT NULL,
	USER_id INT NOT NULL,
	PRIMARY KEY (COM_id, VID_id),
	FOREIGN KEY (VID_id) REFERENCES VIDEO (VID_id),
	FOREIGN KEY (USER_id) REFERENCES USUARIO (USER_id)
);
INSERT INTO BIOGRAFIA VALUES
	(1,'SOMBRERO MUSICAL','Conjunto musical mexicano, formado en la ciudad de Guadalajara, e integrado originariamente por Fher (Fernando Olvera), Juan Diego Calleros, Ulises Calleros y Abraham, un grupo amigos que se entusiasmaron por el rock a principios de los años setenta. Hacia 1976 habían creado un grupo llamado The green hat spies, con el que tocaban en fiestas y cumpleaños. En esta situación estuvieron hasta 1981, en que, fichados por Ariola, adoptaron el nombre de Sombrero verde y grabaron su primer disco.'),
	(2,'MANÁ','Su segundo disco, A tiempo de Rock, se editó en Melody Discos, hasta que hacia 1985 fueron fichados por Polygram, esta vez ya con el nombre de Maná y con Alejandro González convertido en batería oficial de la banda. El primer elepé del grupo se editó en 1987 y consiguió vender casi cincuenta mil copias, una cifra respetable, pero 1988 fue un mal año para el grupo.'),
	(3,'FALTA AMOR','ras este tropiezo volvieron a cambiar de discográfica, y esta vez se trasladaron a Warner Music, con la que lanzaron en 1989 Falta amor, el disco que supuso el espaldarazo inicial de su carrera de éxitos. Gracias al gran apoyo que recibieron de su compañía, que siempre demostró tener fe en ellos, el disco superó las setecientas cincuenta mil copias vendidas.'),
	(4,'¿DÓNDE JUGARÁN LOS NIÑOS?','En 1991, después de una monumental gira con más de ciento treinta actuaciones, grabaron ¿Dónde jugarán los niños? Este nuevo larga duración de Maná representó su consagración internacional: un millón doscientos cincuenta mil ejemplares en México y más de ochocientos mil en el resto del mundo. Para este trabajo se incorporaron al grupo Iván González en los teclados y César López en la guitarra, en sustitución de Ulises, que se convirtió en manager de la banda.'),
	(5,'MANÁ EN VIVO','En 1994 corrieron rumores de una posible disolución (Iván y César abandonaron el grupo), pero en verano de ese año se presentaron de nuevo en directo en el festival de Montreux. A esta actuación siguieron unas cuantas recogidas en el doble álbum en directo que salió a la venta poco antes de acabar el año 1994: Maná en vivo.'),
	(6,'CUANDO LOS ÁNGELES LLORAN','En 1995 se publicó Cuando los ángeles lloran, el nuevo disco de Maná con el nuevo guitarrista, Sergio Vallín, que obtuvo una buena acogida.'),
	(7,'SUEÑOS LÍQUIDOS','En octubre de 1997, y tras casi dos años de inactividad discográfica, Maná lanzó al mercado Sueños líquidos, disco que confirmaba su carrera ascendente, vendiendo más de seis millones de copias en todo el mundo.'),
	(8,'MTV UNPLUGGED','En 1999 llegó su MTV Unplugged y en 2001 el recopilatorio de éxitos Grandes Maná.'),
	(9,'REVOLUCIÓN DE AMOR','Avalados con cifras de ventas astronómicas, conciertos multitudinarios y cuatro premios Grammy, el cuarteto mexicano saboreó de nuevo el éxito con Revolución de amor, álbum que contó con la colaboración de Carlos Santana y Rubén Blades y salió al mercado en 2002.'),
	(10,'ESENCIALES MANÁ','El 18 de Noviembre de 2003 el grupo, cansado de tantos años de trabajo, decide tomar un año sabático y aprovechan para lanzar los recopilatorios Esenciales en tres versiones: Sol, Luna y Eclipse, que incluyen sus temas más exitosos y otras colaboraciones de la banda, como por ejemplo la versión de “Fool in the rain”, canción original de Led Zeppelin incluida en el tributo Encomium al legendario grupo inglés y donde Maná fue el único artista latino invitado. También se encuentra en la compilación la canción inédita “Te llevaré al cielo”, tema que se convirtió en todo un éxito, alcanzando rápidamente los primeros lugares de popularidad en radio y video.'),
	(11,'AMAR ES COMPARTIR','Casi 5 años habían pasado desde el último disco de estudio de la banda, Revolución de Amor, por lo que ya corrían rumores y especulaciones sobre la separación del grupo. Lo que nadie sabía era que tras su año sabático y desde principios de 2005, Maná se reunió para empezar a componer su séptimo disco de estudio, Amar es Combatir.'),
	(12,'ARDE EL CIELO','La impresionante respuesta que tuvo la gira Amar Es Combatir World Tour fue una experiencia sorprendente para la banda, por lo que decidieron capturar esa energía, esa adrenalina, en una grabación con la cual sus seguidores pudieran recordar y revivir esos momentos. Así, la banda decide grabar dos de sus cuatro presentaciones en el Coliseo José M. Agrelot de Puerto Rico en Marzo de 2007.'),
	(13,'DRAMA Y LUZ','Drama y Luz representa un hito en la trayectoria artística de Maná. Se trata de un álbum cuidadosamente elaborado, gestado y realizado durante más de 1,000 días con sus respectivas mil y una noches. Como un buen plato, se ha cocinado a fuego lento.Concebir Drama y Luz tomó su tiempo, como todas las cosas que valen la pena. El proyecto comenzó a tomar forma en junio de 2008 y culminará a principios de abril de 2011. Durante esos 34 meses fueron compuestas, arregladas y grabadas en demo más de cuarenta canciones. Sólo una rigurosa selección de trece verán la luz.'),
	(14,'EXILIADOS EN LA BAHÍA','Exiliados en la Bahía (Lo Mejor de Maná) contiene los grandes éxitos de la banda a través de sus + de 20 años como una de las mejores bandas de Latinoamérica, además de los temas "Hasta que te conocí" (Cover de Juán Gabriel) y "Un Nuevo Amanecer" (Inédito).'),
	(15,'CAMA INCENDIADA','Aparentar es una forma de mentir. Confiar sólo en la apariencia nos puede alejar de la esencia. Cama Incendiada, la nueva producción de Maná, no aparenta, es…
		De esto trata Cama Incendiada, la producción que en 2015 marca el regreso de Maná a los escenarios y significa una vuelta de tuerca a su sonido original. Tenemos aquí un disco lleno de fuerza y vitalidad que nos permite reencontrar al Maná de los primeros álbumes, pero con la experiencia acumulada de una carrera en permanente ascenso.');
INSERT INTO INTEGRANTE VALUES
	(1,'José Fernando Emilio Olvera Sierra','FHER'),
	(2,'Juan Diego Calleros Ramos','JUAN'),
	(3,'Alejandro González Trujillo','ALEX'),
	(4,'Sergio Vallín Loera','SERGIO');
INSERT INTO DISCOGRAFIA (DISC_id,DISC_album,DISC_anio)VALUES
	(1,'cama incendiada','2015'),
	(2,'exiliados en la bahia: edicion portugues','2014'),
	(3,'exiliados en la bahia','2014'),
	(4,'drama y luz','2011'),
	(5,'arde el cielo','2008'),
	(6,'amar es combatir','2006'),
	(7,'esenciales mana eclipse','2003'),
	(8,'esenciales mana luna','2003'),
	(9,'esenciales mana sol','2003'),
	(10,'revolucion de amor','2002'),
	(11,'grandes mana','2001'),
	(12,'todo grandes exitos','2000'),
	(13,'MTV Unplugged','1999'),
	(14,'suenos liquidos','1997'),
	(15,'cuando los angeles lloran','1995'),
	(16,'mana en vivo','1994'),
	(17,'donde jugaran los ninos','1992'),
	(18,'Falta Amor','1990'),
	(19,'mana','1987');
INSERT INTO CANCION(CAN_id,CAN_autor,CAN_titulo)VALUES
	(1,'MANÁ','ROBOT'),
	(2,'MANÁ','MENTIROSA'),
	(3,'MANÁ','BAILANDO'),
	(4,'MANÁ','México'),
	(5,'MANÁ','ENTRÉ POR LA VENTANA'),
	(6,'MANÁ','CAYÓ MI NAVE'),
	(7,'MANÁ','MUEVE TUS CADERAS'),
	(8,'MANÁ','EN LA PLAYA'),
	(9,'MANÁ','LENTES DE SOL'),
	(10,'MANÁ','QUEREMOS PAZ'),
	(11,'MANÁ','GITANA'),
	(12,'MANÁ','REFRIGERADOR'),
	(13,'MANÁ','RAYANDO EL SOL'),
	(14,'MANÁ','BUSCÁNDOLA'),
	(15,'MANÁ','SOLEDAD'),
	(16,'MANÁ','FALTA Amor'),
	(17,'MANÁ','ESTOY AGOTADO'),
	(18,'MANÁ','PERDIDO EN UN BARCO'),
	(19,'MANÁ','LA PUERTA AZUL'),
	(20,'MANÁ','MAEO'),
	(21,'MANÁ','NO ME MIRES ASÍ'),
	(22,'MANÁ','DE PIES A CABEZA'),
	(23,'MANÁ','OYE MI AMOR'),
	(24,'MANÁ','CACHITO'),
	(25,'MANÁ','Vivir sin aire'),
	(26,'MANÁ','¿Dónde JUGARÁN LOS NIÑOS'),
	(27,'MANÁ','EL DESCIERTO'),
	(28,'MANÁ','LA CHULA'),
	(29,'MANÁ','COMO TE DESEO'),
	(30,'MANÁ','TE LLORÉ UN RÍO'),
	(31,'MANÁ','COMO DIABLOS'),
	(32,'MANÁ','HUELE A TRISTEZA'),
	(33,'MANÁ','ME VALE'),
	(34,'MANÁ','EL REY'),
	(35,'MANÁ','COMO UN PERRO ENLOQUECIDO'),
	(36,'MANÁ','SELVA NEGRA'),
	(37,'MANÁ','HUNDIDO EN UN RINCÓN'),
	(38,'MANÁ','EL RELOJ CUCÚ'),
	(39,'MANÁ','MIS OJOS'),
	(40,'MANÁ','ANA'),
	(41,'MANÁ','SIEMBRA EL AMOR'),
	(42,'MANÁ','CUANDO LOS Ángeles LLORAN'),
	(43,'MANÁ','DÉJAME ENTRAR'),
	(44,'MANÁ','NO HA PARADO DE llover'),
	(45,'MANÁ','ANTIFAZ'),
	(46,'MANÁ','EL BORRACHO'),
	(47,'MANÁ','HECHICERA'),
	(48,'MANÁ','UN LOBO POR TU AMOR'),
	(49,'MANÁ','COMO DUELES EN LOS Labios'),
	(50,'MANÁ','CHAMÁN'),
	(51,'MANÁ','TU TINES LO QUE QUIERO'),
	(52,'MANÁ','CLAVADO EN UN BAR'),
	(53,'MANÁ','RÓBAME EL ALMA'),
	(54,'MANÁ','EN EL MUELLE DE SAN BLÁS'),
	(55,'MANÁ','LA SIRENA'),
	(56,'MANÁ','ME VOY A CONVERTIR EN AVE'),
	(57,'MANÁ','COMO TE EXTRAÑO CORAZÓN'),
	(58,'MANÁ','ÁMAME HASTA QUE ME MUERA'),
	(59,'MANÁ','COMO TE DESEO'),
	(60,'MANÁ','TE SOLTÉ LA RIENDA');
INSERT INTO CANCION_ALBUM(CAN_id,DISC_id)VALUES
	(1,19),	(2,19),	(3,19),	(4,19),
	(5,19),	(6,19),	(7,19),	(8,19),
	(9,19),	(10,19),

	(11,18), (12,18), (13,18), (14,18),
	(15,18), (16,18), (17,18), (18,18),
	(19,18), (20,18), (21,18),

	(22,17), (23,17), (24,17), (25,17),
	(26,17), (27,17), (28,17), (29,17),
	(30,17), (31,17), (32,17), (33,17),

	(22,16), (23,16), (12,16), (26,16),
	(15,16), (32,16), (30,16), (17,16),
	(18,16), (14,16), (28,16), (34,16),
	(31,16), (33,16), (13,16), (29,16),
	(19,16), (25,16),

	(35,15), (36,15), (37,15), (38,15),
	(39,15), (40,15), (41,15), (42,15),
	(43,15), (44,15), (45,15), (46,15),

	(47,14), (48,14), (49,14), (50,14),
	(51,14), (52,14), (53,14), (54,14),
	(55,14), (56,14), (57,14), (58,14),

	(44,13), (54,13), (25,13), (42,13),
	(24,13), (60,13);
INSERT INTO USUARIO (USER_nombres,USER_apellidos, USER_email, USER_password) VALUES
	('Admin','Admin','admin@gmail.com','123456'),
	('César','Urbina','cesarurbina.narro@gmail.com','123456');
INSERT INTO VIDEO (VID_id,VID_titulo,VID_descripcion) VALUES
	(1,'Maná - Bendita Tu Luz','Bendita Tu Luz'),
	(2,'Maná - Labios compartidos','Labios Compartidos'),
	(3,'Maná - Manda una señal','Manda Una Senal'),
	(4,'Maná - Mariposa traicionera','Mariposa traicionera'),
	(5,'Maná - En el muelle de San Blás','En el muelle de San Blas'),
	(6,'Maná - Oye mi amor','Oye mi amor'),
	(7,'Maná - Vivir sin aire','Vivir sin aire'),
	(8,'Maná - No ha parado de llover','No ha parado de llover'),
	(9,'Maná - Clavado en un bar','Clavado en un bar'),
	(10,'Maná - Eres mi religión','Eres mi religion');
INSERT INTO COMENTARIO (VID_id,COM_comentario,USER_id) VALUES
	(2,'Labios compartidos, buen video','2'),
	(3,'Manda una señal, chévere','2'),
	(4,'Mariposa traicionera, posi','2'),
	(10,'Eres mi religión, good','2');
