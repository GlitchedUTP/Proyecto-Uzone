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
    email VARCHAR(40) NOT NULL,
    birthdate DATE NOT NULL,
    genre CHAR(1) NOT NULL,
    phone CHAR(9),
    picture_url VARCHAR(100),
    user_type_id INT(2) UNSIGNED NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT users_user_types_user_type_id FOREIGN KEY (user_type_id) REFERENCES user_types(id)
	);
  
CREATE TABLE informations(
	id INT(5) UNSIGNED NOT NULL,
    description VARCHAR(100),
    average_points DECIMAL(2,2),
    vote_quantity INT(10),
    user_id INT(5) UNSIGNED NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT informations_users_user_id FOREIGN KEY (user_id) REFERENCES users(id)
);
  
  
CREATE TABLE events (
	id INT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    picture_url VARCHAR(100),
    date DATETIME NOT NULL,
    date_limit DATETIME NOT NULL,
    description VARCHAR(300),
    category INT(2) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    user_id INT(5) UNSIGNED NOT NULL,
    PRIMARY KEY(id),
	CONSTRAINT events_users_user_id FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE postulants (
	event_id INT(5) UNSIGNED NOT NULL,
    id INT(5) UNSIGNED NOT NULL,
    user_id INT(5) UNSIGNED NOT NULL,
    date DATETIME,
    PRIMARY KEY(event_id,id),
    CONSTRAINT postulants_events_event_id FOREIGN  KEY (event_id) REFERENCES events(id),
    CONSTRAINT postulants_users_user_id FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE posts (
	id INT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT(5) UNSIGNED NOT NULL ,
    title VARCHAR(50),
    description VARCHAR(300),
	url VARCHAR(100),
    PRIMARY KEY(id),
    CONSTRAINT posts_users_user_id FOREIGN KEY (user_id) REFERENCES users(id)
);
    
CREATE TABLE comments (
	post_id INT(5) UNSIGNED NOT NULL,
    id INT(5) UNSIGNED NOT NULL,
    description VARCHAR(100) NOT NULL,
    PRIMARY KEY(post_id,id),
    CONSTRAINT comments_posts_post_id FOREIGN KEY (post_id) REFERENCES posts(id)
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
    STR_TO_DATE('25-JAN-1999', '%d-%M-%Y'),
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
    STR_TO_DATE('25-FEB-1995', '%d-%M-%Y'),
    'F',
    '999069069',
    NULL,
    2
	);
    
INSERT INTO posts (user_id,title,description,url) 
VALUES (
	1,
    'CLICKBAIT 1',
    'This is clickbait',
    'https://www.youtube.com/embed/IiksAKkTCSo'
	);
    
INSERT INTO posts (user_id,title,description,url) 
VALUES (
	2,
    'CLICKBAIT 2',
    'This is clickbait x2',
    'https://www.youtube.com/embed/G3rc-2-jtr0'
	);
    
INSERT INTO posts (user_id,title,description,url) 
VALUES (
	1,
    'CLICKBAIT 3',
    'This is clickbait x3',
    'https://www.youtube.com/embed/_r7A1aTp74w'
	);
    
INSERT INTO posts (user_id,title,description,url) 
VALUES (
	2,
    'CLICKBAIT 4',
    'This is clickbait x4',
    'https://www.youtube.com/embed/F0c8U3x_vKM'
	);
    
INSERT INTO posts (user_id,title,description,url) 
VALUES (
	1,
    'CLICKBAIT 5',
    'This is clickbait x5',
    'https://www.youtube.com/embed/Oc08ZPc30Zs'
	);
    
INSERT INTO posts (user_id,title,description,url) 
VALUES (
	2,
    'CLICKBAIT 6',
    'This is clickbait x6',
    'https://www.youtube.com/embed/3gSwUwvP9Ao'
	);
    

COMMIT;

select * from users;

select * from posts;

