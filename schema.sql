DROP DATABASE IF EXISTS test;

CREATE DATABASE test;

USE test;

CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(200),
  password VARCHAR(200)
);

INSERT INTO users (username, password) VALUES ('John', 'test');
INSERT INTO users (username, password) VALUES ('James', 'test');
INSERT INTO users (username, password) VALUES ('Kevin', 'test');
INSERT INTO users (username, password) VALUES ('Romy', 'test');
INSERT INTO users (username, password) VALUES ('Jordan', 'test');
INSERT INTO users (username, password) VALUES ('Scott', 'test');
INSERT INTO users (username, password) VALUES ('Michael', 'test');
INSERT INTO users (username, password) VALUES ('Paul', 'test');

CREATE TABLE events (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(200),
  creator INT,
  attendee INT,
  FOREIGN KEY (creator) REFERENCES users (id),
  FOREIGN KEY (attendee) REFERENCES users (id) 
);

INSERT INTO events (name, creator, attendee) VALUES ('Pool party', 1, 1);
INSERT INTO events (name, creator, attendee) VALUES ('Pool party', 1, 2);
INSERT INTO events (name, creator, attendee) VALUES ('Pool party', 1, 3);
INSERT INTO events (name, creator, attendee) VALUES ('Pool party', 1, 4);
INSERT INTO events (name, creator, attendee) VALUES ('Pool party', 1, 5);
INSERT INTO events (name, creator, attendee) VALUES ('Pool party', 2, 2);
INSERT INTO events (name, creator, attendee) VALUES ('Study', 2, 2);
INSERT INTO events (name, creator, attendee) VALUES ('Buffet', 3, 3);


-- SELECT a.*, users.username FROM 
-- (SELECT users.username, events.name, events.attendee FROM users INNER JOIN events ON users.id = events.creator)a
--  INNER JOIN users ON a.attendee = users.id;