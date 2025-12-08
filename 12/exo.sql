CREATE DATABASE  IF NOT EXISTS `netflux`;
USE `netflux`;

CREATE TABLE IF NOT EXISTS `app_user`(
    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `firstname` VARCHAR(50) NOT NULL,
    `lastname` VARCHAR(50) NOT NULL,
    `email` VARCHAR(150) UNIQUE NOT NULL,
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS `genre`(
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(100) UNIQUE NOT NULL,
    `description` VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS movie(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    release_year INT NOT NULL,
    duration_min INT NOT NULL,
    genre_id  INT,
    rating FLOAT NOT NULL,
    FOREIGN KEY (genre_id) REFERENCES genre(id) ON DELETE SET NULL
);  


CREATE TABLE IF NOT EXISTS `watchlist`(
    user_id INT NOT NULL,
    FOREIGN KEY (`user_id`) REFERENCES `app_user`(`id`) ON DELETE CASCADE,
    movie_id int NOT NULL,
    FOREIGN KEY  (`movie_id`)  REFERENCES `movie`(`id`) ON DELETE CASCADE,
    `addded_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`user_id`, `movie_id`)
);

INSERT INTO app_user (firstname, lastname, email) VALUES ("alice", "doe", "alice.doe@exemple.net");
INSERT INTO app_user (firstname, lastname, email) VALUES ("bob", "doe", "bob.doe@exemple.net");
INSERT INTO app_user (firstname, lastname, email) VALUES ("eva", "doe", "eva.doe@exemple.net");


INSERT INTO genre (name, description) VALUES ("SF", "description SF");
INSERT INTO genre (name) VALUES ("comedy");
INSERT INTO genre (name, description) VALUES ("action", "explosions and stuff");
INSERT INTO genre (name, description) VALUES ("boring", "boring movies");

INSERT INTO movie(title, release_year, duration_min, genre_id, rating) VALUES ("bob leponge", 2002, 150, 4, 7.2);
INSERT INTO movie(title, release_year, duration_min, genre_id, rating) VALUES ("bob leponge 2", 2003, 150, 2, 8.2);
INSERT INTO movie(title, release_year, duration_min, genre_id, rating) VALUES ("bob leponge 3", 2004, 150, 1, 5.2);
INSERT INTO movie(title, release_year, duration_min, genre_id, rating) VALUES ("bob leponge 4", 2005, 150, 2, 1.2);
INSERT INTO movie(title, release_year, duration_min, genre_id, rating) VALUES ("bob leponge 5", 2006, 150, 3, 4.2);
INSERT INTO movie(title, release_year, duration_min, genre_id, rating) VALUES ("bob leponge 6", 2007, 150, 2, 7.2);


INSERT INTO watchlist (user_id, movie_id) VALUES (1, 1);
INSERT INTO watchlist (user_id, movie_id) VALUES (1, 2);
INSERT INTO watchlist (user_id, movie_id) VALUES (1, 3);
INSERT INTO watchlist (user_id, movie_id) VALUES (1, 4);
INSERT INTO watchlist (user_id, movie_id) VALUES (1, 5);
INSERT INTO watchlist (user_id, movie_id) VALUES (1, 6);
INSERT INTO watchlist (user_id, movie_id) VALUES (2, 1);
INSERT INTO watchlist (user_id, movie_id) VALUES (2, 2);
INSERT INTO watchlist (user_id, movie_id) VALUES (2, 3);
INSERT INTO watchlist (user_id, movie_id) VALUES (2, 4);
INSERT INTO watchlist (user_id, movie_id) VALUES (3, 4);
INSERT INTO watchlist (user_id, movie_id) VALUES (3, 5);
INSERT INTO watchlist (user_id, movie_id) VALUES (3, 6);

SELECT title, release_year, g.name FROM movie AS m INNER JOIN genre AS g ON m.genre_id = g.id;

SELECT u.firstname, u.lastname, m.title, g.name, w.addded_at FROM watchlist AS w
INNER JOIN movie AS m ON w.movie_id = m.id
INNER JOIN app_user AS u ON w.user_id = u.id
INNER JOIN genre AS g ON m.genre_id = g.id
WHERE u.id = 1;

SELECT g.name, COUNT(m.id) FROM genre AS g
INNER JOIN movie AS m ON m.genre_id = g.id
GROUP BY g.id
ORDER BY COUNT(m.id) DESC;

SELECT m.title, g.name, m.release_year FROM movie AS m
INNER JOIN genre AS g ON m.genre_id = g.id
WHERE m.rating >= 8;

SELECT m.title, count(w.addded_at) FROM watchlist AS w
INNER JOIN movie AS m ON w.movie_id = m.id
GROUP BY m.id
HAVING count(w.addded_at) >= 2;