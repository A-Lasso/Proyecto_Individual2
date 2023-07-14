Drop database IF EXISTS Proyecto2;
SET GLOBAL local_infile = 1;

CREATE DATABASE IF NOT EXISTS Proyecto2;
USE Proyecto2;

CREATE TABLE IF NOT EXISTS `Penet_Inter_PROV_100HOG`(
`Año`INT,
`Trimestre`INT,
`Accesos por cada 100 hogares`VARCHAR(150),
`id_Provincia` INT
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

LOAD DATA INFILE 'D:\\Programacion\\DataScience_Henry\\Proyecto_Individual2\\csv_api\\Penet_Inter_PROV_100HOG.csv'
INTO TABLE Penet_Inter_PROV_100HOG
FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES;