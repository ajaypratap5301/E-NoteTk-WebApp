CREATE DATABASE enotes;
USE enotes;

CREATE TABLE IF NOT EXISTS user
(
    id   INT AUTO_INCREMENT,
    name VARCHAR(55) NOT NULL,
    email VARCHAR(55) NOT NULL,
    password VARCHAR(55) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS post
(
    id           INT AUTO_INCREMENT,
   title  VARCHAR(255)   NOT NULL,
   content  VARCHAR(10000)   NOT NULL,
   date   timestamp,
   uid int
);


INSERT INTO user(name,email,password) values(?,?,?)

INSERT INTO post(title,content,uid) values(?,?,?)

