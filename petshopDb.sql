-- create and use db
CREATE DATABASE IF NOT EXISTS bdi221;
USE bdi221;

DROP TABLE IF EXISTS produtos;

-- create a table on db
CREATE TABLE IF NOT EXISTS produtos(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(50),
	descricao VARCHAR(255),
    tipo CHAR(1) NULL,
	valor DECIMAL(5,2),
    CONSTRAINT pk_produtos PRIMARY KEY(id)
);

-- edit a table on table produtos adding a new collum

-- selection all content from table produtos
SELECT * FROM produtos;

DROP TABLE IF EXISTS prontuario;

-- creating prontuario table
CREATE TABLE IF NOT EXISTS prontuario(
    id INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(255),
    temperatura DECIMAL(3,1),
    peso DECIMAL(5,2),
    CONSTRAINT pk_prontuario PRIMARY KEY(id)
);

DROP TABLE IF EXISTS pet;

-- creating pet table
CREATE TABLE IF NOT EXISTS pet(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50),
    especie VARCHAR(50),
    porte VARCHAR(50),
    dt_nasc DATE,
    id_prontuario INT NULL,
    CONSTRAINT pk_pet PRIMARY KEY(id),
    CONSTRAINT fk_pet_prontuario FOREIGN KEY(id_prontuario) REFERENCES prontuario(id)
);

-- creating a table for form of payment
CREATE TABLE IF NOT EXISTS forma_pagamento(
    id INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(50) NOT NULL,
    CONSTRAINT pk_forma_pagamento PRIMARY KEY(id)
);

DROP TABLE IF EXISTS funcionario;

-- creating a table for employers
CREATE TABLE IF NOT EXISTS funcionario(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    salario DECIMAL(6,2) NOT NULL,
    tipo CHAR(1) NULL,
    n_conselho INT NULL,
    especialidade VARCHAR(20) NULL,
    comissao DECIMAL(4,2),
    CONSTRAINT pk_funcionario PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS cliente(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(50) NOT NULL,
    CONSTRAINT pk_cliente PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS cliente_pet(
    id INT NOT NULL AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_pet INT NOT NULL,
    CONSTRAINT pk_cliente_pet PRIMARY KEY(id),
    CONSTRAINT fk_cliente_pet_cliente FOREIGN KEY(id_cliente) REFERENCES cliente(id),
    CONSTRAINT fk_cliente_pet_pet FOREIGN KEY(id_pet) REFERENCES pet(id)
);
