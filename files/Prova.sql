CREATE DATABASE dipartimenti;

USE dipartimenti;


CREATE TABLE dipartimento
(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL,
	indirizzo VARCHAR(50) NOT NULL,
	email VARCHAR(25) NOT NULL,
	telefono VARCHAR(10) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE corso_di_laurea
(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL,
	Materie_totali SMALLINT NOT NULL,
	anni_totali SMALLINT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY (id) REFERENCES dipartimento(id)
);

CREATE TABLE corso
(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL,
	ore_complessive INT NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE Alunno 
(
	id INT NOT NULL,
	nome VARCHAR(40) NOT NULL,
	cognome VARCHAR(40) NOT NULL,
	eta SMALLINT(20) NOT NULL,
	indirizzo VARCHAR(20) NOT NULL,
	email VARCHAR(25) NOT NULL,
	id_cdl INT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY (id) REFERENCES corso_di_laurea(id)
);

CREATE TABLE insegnante
(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(40) NOT NULL,
	cognome VARCHAR(40) NOT NULL,
	indirizzo VARCHAR(40) NOT NULL,
	email VARCHAR(25) NOT NULL,
	PRIMARY KEY (id)
);

-- PONTE
CREATE TABLE corso_corso_di_laurea
(
    id INT NOT NULL AUTO_INCREMENT,
    id_cdl INT NOT NULL,
	id_corsi INT NOT NULL,
	FOREIGN KEY (id) REFERENCES corso_di_laurea(id),
	FOREIGN KEY (id) REFERENCES corso(id)
);

