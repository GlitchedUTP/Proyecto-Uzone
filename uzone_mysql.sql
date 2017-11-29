DROP SCHEMA

IF EXISTS uzone;
	CREATE SCHEMA uzone COLLATE = utf8_general_ci;

USE uzone;

CREATE TABLE user_types (
	id INT(2) UNSIGNED NOT NULL,
    name VARCHAR(15) NOT NULL,
    PRIMARY KEY(id)
    );

CREATE TABLE users (
	id INT(5) UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
	username VARCHAR(20) NOT NULL UNIQUE,
    password VARCHAR(20) NOT NULL,
    name VARCHAR(30),
    lastname VARCHAR(30),
    email VARCHAR(40) NOT NULL UNIQUE,
    birthdate DATE NOT NULL,
    genre CHAR(1) NOT NULL,
    phone CHAR(9),
    picture_url VARCHAR(100),
    user_type_id INT(2) UNSIGNED NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT users_user_types_user_type_id FOREIGN KEY (user_type_id) REFERENCES user_types(id)
	);
  
CREATE TABLE informations(
	id INT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    description VARCHAR(100),
    average_points DECIMAL(3,2),
    vote_quantity INT(10),
    user_id INT(5) UNSIGNED NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT informations_users_user_id FOREIGN KEY (user_id) REFERENCES users(id)
);
  
  
CREATE TABLE events (
	id INT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR (50)  NOT NULL,
    picture_url VARCHAR(100) NOT NULL,
    ubication VARCHAR(150) NOT NULL,
    date DATE NOT NULL,
    date_limit DATE NOT NULL,
    description VARCHAR(300) NOT NULL,
    tags VARCHAR(100),
    websites VARCHAR(70),
    salary DECIMAL(10,2),
    user_id INT(5) UNSIGNED NOT NULL,
    PRIMARY KEY(id),
	CONSTRAINT events_users_user_id FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE postulants (
	event_id INT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT(5) UNSIGNED NOT NULL,
    date DATE NOT NULL,
    PRIMARY KEY(event_id,user_id),
    CONSTRAINT postulants_events_event_id FOREIGN  KEY (event_id) REFERENCES events(id),
    CONSTRAINT postulants_users_user_id FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE posts (
	id INT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT(5) UNSIGNED NOT NULL ,
    title VARCHAR(50),
    date DATE,
    description VARCHAR(300),
	url VARCHAR(100),
    PRIMARY KEY(id,user_id),
    CONSTRAINT posts_users_user_id FOREIGN KEY (user_id) REFERENCES users(id)
);
    
CREATE TABLE comments (
    post_id INT(5) UNSIGNED NOT NULL,
    id INT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    description VARCHAR(100) NOT NULL,
    date DATE NOT NULL,
    user_id INT(5) UNSIGNED NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT comments_posts_post_id FOREIGN KEY (post_id) REFERENCES posts(id),
    CONSTRAINT comments_users_user_id FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE points(
	origin INT(5) UNSIGNED NOT NULL,
    target INT(5) UNSIGNED NOT NULL,
    quantity INT(2) NOT NULL,
    PRIMARY KEY(origin,target),
    CONSTRAINT points_users_origin FOREIGN KEY (origin) REFERENCES users(id),
    CONSTRAINT points_users_target FOREIGN KEY (target) REFERENCES users(id)
);

INSERT INTO user_types
VALUES (
	1,
	'ARTIST'
	);
    
INSERT INTO user_types
VALUES (
	2,
	'WORKER'
	);
    
INSERT INTO user_types
VALUES (
	3,
	'NORMAL'
	);
    
INSERT INTO user_types
VALUES (
	4,
	'ADMIN'
	);

INSERT INTO users (username,password,name,lastname,email,birthdate,genre,phone,picture_url,user_type_id)
VALUES (
    'NicoForce',
    'nicomax',
    'Nicolas',
    'Cordova',
    'nicomax_008@hotmail.com',
    STR_TO_DATE('25-01-1999', '%d-%m-%Y'),
    'M',
    '978066359',
    NULL,
    1
	);
    
INSERT INTO users (username,password,name,lastname,email,birthdate,genre,phone,picture_url,user_type_id)
VALUES (
    'potato',
    'potato123',
    'Carlos',
    'Enrique',
    'aiuda_012@hotmail.com',
    STR_TO_DATE('25-02-1995', '%d-%m-%Y'),
    'F',
    '999069069',
    NULL,
    2
	);
    
INSERT INTO users (username,password,name,lastname,email,birthdate,genre,phone,picture_url,user_type_id)
VALUES (
    'NicoForce2',
    'nicomax',
    'Nicolas',
    'Cordova',
    'nicomax_012@hotmail.com',
    STR_TO_DATE('25-01-1999', '%d-%m-%Y'),
    'M',
    '978066359',
    NULL,
    1
	);
    
INSERT INTO informations (description,average_points,vote_quantity,user_id)
VALUES (
	'',
    0,
    0,
    1
    );
    
INSERT INTO informations (description,average_points,vote_quantity,user_id)
VALUES (
	'',
    0,
    0,
    2
    );
    
INSERT INTO informations (description,average_points,vote_quantity,user_id)
VALUES (
	'',
    0,
    0,
    3
    );
    
INSERT INTO posts (user_id,title,date,description,url) 
VALUES (
	1,
    'CLICKBAIT 1',
    STR_TO_DATE("15-06-2017", "%d-%m-%Y"),
    'This is clickbait',
    'https://www.youtube.com/embed/IiksAKkTCSo'
	);
    
INSERT INTO posts (user_id,title,date,description,url) 
VALUES (
	2,
    'CLICKBAIT 2',
    STR_TO_DATE("15-06-2017", "%d-%m-%Y"),
    'This is clickbait x2',
    'https://www.youtube.com/embed/G3rc-2-jtr0'
	);
    
INSERT INTO posts (user_id,title,date,description,url) 
VALUES (
	1,
    'CLICKBAIT 3',
    STR_TO_DATE("15-06-2017", "%d-%m-%Y"),
    'This is clickbait x3',
    'https://www.youtube.com/embed/_r7A1aTp74w'
	);
    
INSERT INTO posts (user_id,title,date,description,url) 
VALUES (
	2,
    'CLICKBAIT 4',
    STR_TO_DATE("15-06-2017", "%d-%m-%Y"),
    'This is clickbait x4',
    'https://www.youtube.com/embed/F0c8U3x_vKM'
	);
    
INSERT INTO posts (user_id,title,date,description,url) 
VALUES (
	1,
    'CLICKBAIT 5',
    STR_TO_DATE("15-06-2017", "%d-%m-%Y"),
    'This is clickbait x5',
    'https://www.youtube.com/embed/Oc08ZPc30Zs'
	);
    
INSERT INTO posts (user_id,title,date,description,url) 
VALUES (
	2,
    'CLICKBAIT 6',
    STR_TO_DATE("15-06-2017", "%d-%m-%Y"),
    'This is clickbait x6',
    'https://www.youtube.com/embed/3gSwUwvP9Ao'
	);

INSERT INTO comments (post_id,description,date,user_id)
VALUES (
	1,
    'asd',
    STR_TO_DATE("15-06-2017", "%d-%m-%Y"),
    1
	);    
    
INSERT INTO comments (post_id,description,date,user_id)
VALUES (
	1,
    'asd',
    STR_TO_DATE("15-06-2017", "%d-%m-%Y"),
    2
	);    
    
INSERT INTO comments (post_id,description,date,user_id)
VALUES (
	1,
    'asd',
    STR_TO_DATE("15-06-2017", "%d-%m-%Y"),
    3
	);    

COMMIT;

