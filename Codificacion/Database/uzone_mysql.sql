DROP SCHEMA

IF EXISTS uzone;
	CREATE SCHEMA uzone COLLATE = utf8_general_ci;

USE uzone;

CREATE TABLE usertypes (
	usertype_id INT(2) UNSIGNED NOT NULL,
    usertype_name VARCHAR(15) NOT NULL,
    PRIMARY KEY(usertype_id)
    );

CREATE TABLE informations(
	info_id CHAR(5) NOT NULL,
    info_description VARCHAR(100),
    info_avgpoints DECIMAL(2,2),
    info_votequantity INT(10),
    PRIMARY KEY(info_id)
);

CREATE TABLE users (
	user_id CHAR(05) NOT NULL,
	user_name VARCHAR(30),
    user_lastname VARCHAR(30),
    user_login VARCHAR(20) NOT NULL,
    user_password VARCHAR(20) NOT NULL,
    user_email VARCHAR(40) NOT NULL,
    user_birthdate DATETIME NOT NULL,
    user_genre CHAR(1) NOT NULL,
    user_phone CHAR(9),
    user_picture VARCHAR(100),
    usertype_id INT(2) UNSIGNED NOT NULL,
    info_id CHAR(5) NOT NULL,
    PRIMARY KEY(user_id),
    CONSTRAINT users_usertypes_usertype_id FOREIGN KEY (usertype_id) REFERENCES usertypes(usertype_id),
    CONSTRAINT users_informations_info_id FOREIGN KEY (info_id) REFERENCES informations(info_id)
	);
    
CREATE TABLE eventzs (
	event_id CHAR(05) NOT NULL,
    user_id CHAR(05) NOT NULL,
    event_picture VARCHAR(100),
    event_date DATETIME NOT NULL,
    event_datelimit DATETIME NOT NULL,
    event_description VARCHAR(300),
    event_category INT(2) NOT NULL,
    event_salary DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(event_id),
	CONSTRAINT events_users_user_id FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE postulants (
	event_id CHAR(05) NOT NULL,
    postulant_id CHAR(05) NOT NULL,
    user_id CHAR(05) NOT NULL,
    postulant_date DATETIME,
    PRIMARY KEY(event_id,postulant_id),
    CONSTRAINT postulants_events_event_id FOREIGN  KEY (event_id) REFERENCES eventzs(event_id),
    CONSTRAINT postulants_users_user_id FOREIGN KEY (user_id) REFERENCES users (user_id)
);

CREATE TABLE posts (
	post_id CHAR(10) NOT NULL,
    info_id CHAR(5) NOT NULL,
    post_videourl VARCHAR(100),
    PRIMARY KEY(post_id),
    CONSTRAINT posts_informations_info_id FOREIGN KEY (info_id) REFERENCES informations(info_id)
);
    
CREATE TABLE comments (
	post_id CHAR(10) NOT NULL,
    comment_id CHAR(5) NOT NULL,
    comment_description VARCHAR(100) NOT NULL,
    PRIMARY KEY(post_id,comment_id),
    CONSTRAINT comments_posts_post_id FOREIGN KEY (post_id) REFERENCES posts(post_id)
);

CREATE TABLE points(
	point_origin CHAR(5) NOT NULL,
    point_id CHAR(5) NOT NULL,
    point_target CHAR(5) NOT NULL,
    point_quantity INT(2) NOT NULL,
    PRIMARY KEY(point_origin,point_id),
    CONSTRAINT points_users_point_origin FOREIGN KEY (point_origin) REFERENCES users(user_id),
    CONSTRAINT points_users_point_target FOREIGN KEY (point_target) REFERENCES users(user_id)
);

COMMIT;














