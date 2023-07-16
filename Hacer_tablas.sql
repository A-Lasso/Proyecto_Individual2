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
`Accesos por cada 100 hogares`FLOAT,
`id_Provincia` INT,
FOREIGN KEY (`id_Provincia`) REFERENCES `Provincias`(`id_Provincia`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

LOAD DATA INFILE 'D:\\Programacion\\DataScience_Henry\\Proyecto_Individual2\\csv_api\\Penet_Inter_PROV_100HOG.csv'
INTO TABLE Penet_Inter_PROV_100HOG
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES;



CREATE TABLE IF NOT EXISTS `Penet_Inter_Nac`(
Año INT,
Trimestre INT,
`Accesos por cada 100 hogares` FLOAT,
`Accesos por cada 100 hab` FLOAT,
Periodo VARCHAR(100)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
LOAD DATA INFILE 'D:\\Programacion\\DataScience_Henry\\Proyecto_Individual2\\csv_api\\Penet_Inter_Nac.csv'
INTO TABLE `Penet_Inter_Nac`
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n' 
IGNORE 1 LINES;



CREATE TABLE IF NOT EXISTS `Acces_Banda_Ancha_Angosta_Nac`(
Año INT,
Trimestre INT,
`Banda ancha fija` INT,
`Dial up` INT,
Total INT,
Periodo VARCHAR(20)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
LOAD DATA INFILE 'D:\\Programacion\\DataScience_Henry\\Proyecto_Individual2\\csv_api\\Acces_Banda_Ancha_Angosta_Nac.csv'
INTO TABLE `Acces_Banda_Ancha_Angosta_Nac`
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES;


CREATE TABLE IF NOT EXISTS `Acces_Banda_Ancha_Angosta_Provincia`(
id_Provincia INT,
Año INT, 
Trimestre INT,
`Banda ancha fija` INT,
`Dial up` INT,
`Total` INT,
FOREIGN KEY (`id_Provincia`) REFERENCES `Provincias`(`id_Provincia`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
LOAD DATA INFILE 'D:\\Programacion\\DataScience_Henry\\Proyecto_Individual2\\csv_api\\Acces_Banda_Ancha_Angosta_Provincia.csv'
INTO TABLE `Acces_Banda_Ancha_Angosta_Provincia`
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES;


CREATE TABLE IF NOT EXISTS `Acces_Inter_Localidades`(
id_Provincia INT,
id_Partido INT,
id_Localidad INT,
ADSL INT,
CABLEMODEM INT,
DIALUP INT,
FIBRAOPTICA INT,
4G INT,
3G INT,
TELEFONIAFIJA INT,
WIRELESS INT,
SATELITAL INT,
FOREIGN KEY (`id_Provincia`) REFERENCES `Provincias`(`id_Provincia`),
FOREIGN KEY (`id_Partido`) REFERENCES `Partidos`(`id_Partido`),
FOREIGN KEY (`id_Localidad`) REFERENCES `Localidades`(`id_Localidad`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
LOAD DATA INFILE 'D:\\Programacion\\DataScience_Henry\\Proyecto_Individual2\\csv_api\\Acces_Inter_Localidades.csv'
INTO TABLE `Acces_Inter_Localidades`
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES;



CREATE TABLE IF NOT EXISTS `Acces_Inter_Prov_Vel`(
Año INT,
Trimestre INT,
id_Provincia INT,
`<0.512 mbps` INT,
`0.512 - 1 Mbps` INT,
`1 - 6 Mbps` INT,
`6 - 10 Mbps` INT,
`10 - 20 Mbps` INT,
`20 - 30 Mbps` INT,
`>=30 Mbps` INT,
Otros INT,
Total INT,
Total_Nuevo INT,
Diferencia INT,
FOREIGN KEY (`id_Provincia`) REFERENCES `Provincias`(`id_Provincia`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
LOAD DATA INFILE 'D:\\Programacion\\DataScience_Henry\\Proyecto_Individual2\\csv_api\\Acces_Inter_Prov_Vel.csv'
INTO TABLE `Acces_Inter_Prov_Vel`
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES;



CREATE TABLE IF NOT EXISTS `Acces_Inter_Tec_Nac`(
Año INT,
Trimestre INT,
ADSL INT,
Cablemodem INT,
`Fibra óptica` INT,
Wireless INT,
Otros INT,
Total INT,
Periodo VARCHAR(20)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
LOAD DATA INFILE 'D:\\Programacion\\DataScience_Henry\\Proyecto_Individual2\\csv_api\\Acces_Inter_Tec_Nac.csv'
INTO TABLE `Acces_Inter_Tec_Nac`
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES;


/*
CREATE TABLE IF NOT EXISTS ``(
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
LOAD DATA INFILE 'D:\\Programacion\\DataScience_Henry\\Proyecto_Individual2\\csv_api\\.csv'
INTO TABLE ``
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES;
*/

/*
CREATE TABLE IF NOT EXISTS ``(
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
LOAD DATA INFILE 'D:\\Programacion\\DataScience_Henry\\Proyecto_Individual2\\csv_api\\.csv'
INTO TABLE ``
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES;
*/

/*
CREATE TABLE IF NOT EXISTS ``(
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
LOAD DATA INFILE 'D:\\Programacion\\DataScience_Henry\\Proyecto_Individual2\\csv_api\\.csv'
INTO TABLE ``
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES;
*/

/*
CREATE TABLE IF NOT EXISTS ``(
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
LOAD DATA INFILE 'D:\\Programacion\\DataScience_Henry\\Proyecto_Individual2\\csv_api\\.csv'
INTO TABLE ``
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 LINES;
*/