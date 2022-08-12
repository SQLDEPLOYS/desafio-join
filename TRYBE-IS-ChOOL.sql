DROP SCHEMA IF EXISTS school;
CREATE SCHEMA school;
USE school;

CREATE TABLE teachers (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(45) NOT NULL,
last_name VARCHAR(45) NOT NULL
);

CREATE TABLE subjects (
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
teacher_id INT NOT NULL,
FOREIGN KEY (teacher_id) REFERENCES teachers(id)
);

INSERT INTO teachers (first_name, last_name)
VALUES ('Matheus', 'Goyas'), ('Rafael', 'Luiz'), ('Alberto', 'Cavalcanti'), ('Djo', 'Djo');

INSERT INTO subjects (name, teacher_id)
VALUES ('Fundamentos', 2), ('Front-end', 3), ('Back-end', 4), ('Ciência da Computação', 1)