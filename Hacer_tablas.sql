Drop database IF EXISTS Proyecto2;

CREATE DATABASE IF NOT EXISTS Proyecto2;
USE Proyecto2;

CREATE TABLE IF NOT EXISTS `Provincias`(
`Provincia` Varchar(100),
`id_Provincia` INT,
primary key(`id_Provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

LOAD DATA INFILE "D:\\Programacion\\DataScience_Henry\\Proyecto_Individual2\\csv_api\\Provincias.csv"
INTO TABLE Provincias
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

CREATE TABLE IF NOT EXISTS `Partidos`(
`Partido` Varchar(100),
`id_Partido` INT,
primary key(`id_Partido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

LOAD DATA INFILE "D:\\Programacion\\DataScience_Henry\\Proyecto_Individual2\\csv_api\\Partidos.csv"
INTO TABLE Partidos
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

CREATE TABLE IF NOT EXISTS `Localidades`(
`Localidad` Varchar(100),
`id_Localidad` INT,
primary key(`id_Localidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

LOAD DATA INFILE "D:\\Programacion\\DataScience_Henry\\Proyecto_Individual2\\csv_api\\Localidades.csv"
INTO TABLE Localidades
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;



CREATE TABLE IF NOT EXISTS `Penet_Inter_PROV_100HOG`(
`Año`INT,
`Trimestre`INT,
`Accesos por cada 100 hogares`VARCHAR(150),
`id_Provincia` INT,
FOREIGN KEY (`id_Provincia`) REFERENCES `Provincias`(`id_Provincia`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

LOAD DATA INFILE 'D:\\Programacion\\DataScience_Henry\\Proyecto_Individual2\\csv_api\\Penet_Inter_PROV_100HOG.csv'
INTO TABLE Penet_Inter_PROV_100HOG
FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES;

UPDATE Penet_Inter_PROV_100HOG SET `Accesos por cada 100 hogares` = REPLACE(`Accesos por cada 100 hogares`,',','.');
ALTER TABLE `Penet_Inter_PROV_100HOG` CHANGE `Accesos por cada 100 hogares` `Accesos por cada 100 hogares` DECIMAL(10,3);


/*
CREATE TABLE IF NOT EXISTS ``
*/