DROP SCHEMA

IF EXISTS uzone;
	CREATE SCHEMA uzone COLLATE = utf8_general_ci;

USE uzone;

CREATE TABLE usertypes (
	usertype_id INT(2) UNSIGNED NOT NULL,
    usertype_name VARCHAR(15) NOT NULL,
    PRIMARY KEY(usertype_id)
    );

CREATE TABLE users (
	user_id INT(5) UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
	user_username VARCHAR(20) NOT NULL,
    user_password VARCHAR(20) NOT NULL,
    user_name VARCHAR(30),
    user_lastname VARCHAR(30),
    user_email VARCHAR(40) NOT NULL,
    user_birthdate DATE NOT NULL,
    user_genre CHAR(1) NOT NULL,
    user_phone CHAR(9),
    user_picture VARCHAR(100),
    usertype_id INT(2) UNSIGNED NOT NULL,
    PRIMARY KEY(user_id),
    CONSTRAINT users_usertypes_usertype_id FOREIGN KEY (usertype_id) REFERENCES usertypes(usertype_id)
	);
  
CREATE TABLE informations(
	info_id INT(5) UNSIGNED NOT NULL,
    info_description VARCHAR(100),
    info_avgpoints DECIMAL(2,2),
    info_votequantity INT(10),
    user_id INT(5) UNSIGNED NOT NULL,
    PRIMARY KEY(info_id),
    CONSTRAINT informations_users_user_id FOREIGN KEY (user_id) REFERENCES users(user_id)
);
  
  
CREATE TABLE evnts (
	evnt_id INT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT(5) UNSIGNED NOT NULL,
    evnt_picture VARCHAR(100),
    evnt_date DATETIME NOT NULL,
    evnt_datelimit DATETIME NOT NULL,
    evnt_description VARCHAR(300),
    evnt_category INT(2) NOT NULL,
    evnt_salary DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(evnt_id),
	CONSTRAINT evnts_users_user_id FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE postulants (
	evnt_id INT(5) UNSIGNED NOT NULL,
    postulant_id INT(5) UNSIGNED NOT NULL,
    user_id INT(5) UNSIGNED NOT NULL,
    postulant_date DATETIME,
    PRIMARY KEY(evnt_id,postulant_id),
    CONSTRAINT postulants_evnts_event_id FOREIGN  KEY (evnt_id) REFERENCES evnts(evnt_id),
    CONSTRAINT postulants_users_user_id FOREIGN KEY (user_id) REFERENCES users (user_id)
);

CREATE TABLE posts (
	post_id INT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT(5) UNSIGNED NOT NULL ,
    post_title VARCHAR(50),
    post_description VARCHAR(100),
	post_url VARCHAR(100),
    PRIMARY KEY(post_id),
    CONSTRAINT posts_users_user_id FOREIGN KEY (user_id) REFERENCES users(user_id)
);
    
CREATE TABLE comments (
	post_id INT(5) UNSIGNED NOT NULL,
    comment_id INT(5) UNSIGNED NOT NULL,
    comment_description VARCHAR(100) NOT NULL,
    PRIMARY KEY(post_id,comment_id),
    CONSTRAINT comments_posts_post_id FOREIGN KEY (post_id) REFERENCES posts(post_id)
);

CREATE TABLE points(
	point_origin INT(5) UNSIGNED NOT NULL,
    point_target INT(5) UNSIGNED NOT NULL,
    point_quantity INT(2) NOT NULL,
    PRIMARY KEY(point_origin,point_target),
    CONSTRAINT points_users_point_origin FOREIGN KEY (point_origin) REFERENCES users(user_id),
    CONSTRAINT points_users_point_target FOREIGN KEY (point_target) REFERENCES users(user_id)
);

INSERT INTO usertypes
VALUES (
	1,
	'ARTIST'
	);
    
INSERT INTO usertypes
VALUES (
	2,
	'WORKER'
	);
    
INSERT INTO usertypes
VALUES (
	3,
	'NORMAL'
	);
    
INSERT INTO usertypes
VALUES (
	4,
	'ADMIN'
	);

INSERT INTO users (user_username,user_password,user_name,user_lastname,user_email,user_birthdate,user_genre,user_phone,user_picture,usertype_id)
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
    4
	);
    
INSERT INTO users (user_username,user_password,user_name,user_lastname,user_email,user_birthdate,user_genre,user_phone,user_picture,usertype_id)
VALUES (
    'Potato',
    'potato123',
    'Carlos',
    'Enrique',
    'aiuda_012@hotmail.com',
    STR_TO_DATE('25-FEB-1995', '%d-%M-%Y'),
    'F',
    '999069069',
    NULL,
    3
	);
    


COMMIT;

select * from users;


