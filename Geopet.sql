DROP SCHEMA IF EXISTS Geopet;
CREATE SCHEMA IF NOT EXISTS Geopet;

CREATE TABLE Geopet.Users (
  userId INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  name TEXT NOT NULL,
  email TEXT NOT NULL,
  cep INTEGER(8) NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE Geopet.Pets (
  petId INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  size TEXT NOT NULL,
  breed TEXT NOT NULL,
  hash TEXT NOT NULL,
  userId INTEGER,
  FOREIGN KEY (userId) REFERENCES Geopet.Users (userId)
);

INSERT INTO
  Geopet.Users (name, email, cep, password)
VALUES
  ("Telme", "falecomtelme@gmail.com", 30140903, "agnesvarda"),
  ("Jessica", "jess@example.com.br", 30140903, "minhasenha"),
  ("Clovis", "clovis@example.com.br", 30140903, "cruzeiro"),
  ("Ian", "ian@example.com.br", 30140903, "mutha"),
  ("Gabriel", "gabriel@exemple.com.br", 31890003, "futebol"),
  ("Alvaro", "alvaro@example.com.br", 30140903, "minhasenha");

INSERT INTO
  Geopet.Pets (name, age, size, breed, hash, userId)
VALUES
  ("Varda", 8, "medium", "mixed", "fasdfs", 1),
  ("Cabuloso", 1, "medium", "caramelo", "fasdfs", 3),
  ("Fifito", 8, "medium", "mixed", "fasdfs", 4),
  ("Paçoca", 8, "medium", "mixed", "fasdfs", 5),
  ("Favela", 8, "medium", "mixed", "fasdfs", 5);
