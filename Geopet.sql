USE master;
GO

DROP DATABASE IF EXISTS Geopet;
GO

CREATE DATABASE Geopet;
GO

USE Geopet;

CREATE TABLE Users(
  userId INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  phone VARCHAR(50) NOT NULL,
  cep VARCHAR(50) NOT NULL,
  password VARCHAR(50) NOT NULL
);
GO

CREATE TABLE Pets (
  petId INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INTEGER NOT NULL,
  size VARCHAR(50) NOT NULL,
  breed VARCHAR(50) NOT NULL,
  hash VARCHAR(50) NOT NULL,
  userId INT,
  FOREIGN KEY (userId) REFERENCES Users(userId)
);
GO

INSERT INTO
  Users(name, email, phone, cep, password)
VALUES
  ('Telme', 'falecomtelme@gmail.com', '30140903', '30140903', 'agnesvarda'),
  ('Jessica', 'jess@example.com.br', '30140903', '30140903', 'minhasenha'),
  ('Clovis', 'clovis@example.com.br', '30140903', '30140903', 'cruzeiro'),
  ('Ian', 'ian@example.com.br', '30140903', '30140903', 'mutha'),
  ('Gabriel', 'gabriel@exemple.com.br', '30140903', '31890003', 'futebol'),
  ('Alvaro', 'alvaro@example.com.br', '30140903', '30140903', 'minhasenha');
GO

INSERT INTO
  Pets (name, age, size, breed, hash, userId)
VALUES
  ('Varda', 8, 'medium', 'mixed', 'fasdfs', 1),
  ('Cabuloso', 1, 'medium', 'caramelo', 'fasdfs', 3),
  ('Fifito', 8, 'medium', 'mixed', 'fasdfs', 4),
  ('Paçoca', 8, 'medium', 'mixed', 'fasdfs', 5),
  ('Favela', 8, 'medium', 'mixed', 'fasdfs', 5);
GO
