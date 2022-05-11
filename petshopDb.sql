-- create and use db
CREATE DATABASE bdi221;
USE bdi221;

-- create a table on db
CREATE TABLE produtos(
	id INT IDENTITY(1,1) NOT NULL,
	nome VARCHAR(50),
	descricao VARCHAR(255),
	valor DECIMAL(5,2),
);

-- edit a table on table produtos adding a new collum
ALTER TABLE produtos ADD tipo CHAR(1) NULL;

-- selection all content from table produtos
SELECT * FROM produtos;

-- creating a primary key called pk_produtos based in id on table produtos
ALTER TABLE produtos ADD CONSTRAINT pk_produtos PRIMARY KEY(id);

-- creating prontuario table
CREATE TABLE prontuario(
    id INT IDENTITY(1,1) NOT NULL,
    descricao VARCHAR(255),
    temperatura DECIMAL(3,1),
    peso DECIMAL(5,2)
);

-- creating a primary key called prontuario on table prontuario
ALTER TABLE prontuario ADD CONSTRAINT pk_prontuario PRIMARY KEY(id);

-- creating pet table
CREATE TABLE pet(
    id INT IDENTITY(1,1) NOT NULL,
    nome VARCHAR(50),
    especie VARCHAR(50),
    porte VARCHAR(50),
    -- dt_nasc DATE(),
);

-- creating a primary key called pk_pet on table pet
ALTER TABLE pet ADD CONSTRAINT pk_pet PRIMARY KEY(id);

-- creating a foreign key called fk_id_prontuario on table pet referencing prontuario(id)
ALTER TABLE pet ADD CONSTRAINT fk_id_prontuario FOREIGN KEY(id) REFERENCES prontuario(id);