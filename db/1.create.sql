CREATE USER 'user'@'%' IDENTIFIED VIA password USING 'user123';GRANT ALL PRIVILEGES ON *.* TO 'user'@'%' REQUIRE NONE WITH GRANT OPTION MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;GRANT ALL PRIVILEGES ON `dancechampionship`.* TO 'user'@'%';
CREATE DATABASE IF NOT EXISTS `dancechampionship`;
USE `dancechampionship`;

DROP TABLE IF EXISTS `tancol`;
CREATE TABLE IF NOT EXISTS `tancol` (
  `nemzetiseg` char(200),
  `tanc_neve` char(100),
  `cim` char(100)
);

DROP TABLE IF EXISTS `csoport`;
CREATE TABLE IF NOT EXISTS `csoport` (
  `nev` char(100),
  `nemzetiseg` varchar(200) PRIMARY KEY,
  `pontszam` int(5),
  `atlag_eletkor` int(3)
);

DROP TABLE IF EXISTS `tanc`;
CREATE TABLE IF NOT EXISTS `tanc` (
  `tanc_neve` char(100) PRIMARY KEY
);

DROP TABLE IF EXISTS `zene`;
CREATE TABLE IF NOT EXISTS `zene` (
  `cim` char(100) PRIMARY KEY,
  `mufaj` varchar(200),
  `eloado` varchar(200)
);