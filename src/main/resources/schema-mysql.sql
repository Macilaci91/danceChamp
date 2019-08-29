CREATE DATABASE IF NOT EXISTS `dancechampionship`;
USE `dancechampionship`;

DROP TABLE IF EXISTS `Tancol`;
CREATE TABLE IF NOT EXISTS `Tancol` (
  `nemzetiseg` char(200),
  `tanc_neve` char(100),
  `cim` char(100)
);

DROP TABLE IF EXISTS `Csoport`;
CREATE TABLE IF NOT EXISTS `Csoport` (
  `nev` char(100),
  `nemzetiseg` varchar(200) PRIMARY KEY,
  `pontszam` int(5),
  `atlag_eletkor` int(3)
);

DROP TABLE IF EXISTS `Tanc`;
CREATE TABLE IF NOT EXISTS `Tanc` (
  `tanc_neve` char(100) PRIMARY KEY
);

DROP TABLE IF EXISTS `Zene`;
CREATE TABLE IF NOT EXISTS `Zene` (
  `cim` char(100) PRIMARY KEY,
  `mufaj` varchar(200),
  `eloado` varchar(200)
);

INSERT INTO `Csoport` (`nev`, `nemzetiseg`, `pontszam`, `atlag_eletkor`) VALUES
('Guys with Kids', 'USA', 120, 20),
('Hontalanok', 'szlov�k', 2, 21),
('J� Bar�t', 'lengyel', 213, 30),
('Rabl� Pand�rok', 'magyar', 233, 21),
('S�gorok', 'osztr�k', 222, 31),
('Sz�r�stalp�ak', 'rom�n', 1, 18),
('Total Success', 'francia', 110, 66);

INSERT INTO `Tanc` (`tanc_neve`) VALUES
('Balett'),
('Capoeira'),
('Kort�rst�nc'),
('Pogo'),
('Salsa'),
('Tang�'),
('Zumba');

INSERT INTO `Tancol` (`nemzetiseg`, `tanc_neve`, `cim`) VALUES
('magyar', 'Balett', '16 tonna'),
('USA', 'Capoeira', 'Gangnam Sytle'),
('francia', 'Kort�rst�nc', 'Highway to Hell'),
('rom�n', 'Pogo', 'Ki nem ugr�l...'),
('szlov�k', 'Salsa', 'Gyite'),
('lengyel', 'Tang�', 'Tabletta'),
('osztr�k', 'Zumba', 'Pokol tanca');

INSERT INTO `Zene` (`cim`, `mufaj`, `eloado`) VALUES
('16 tonna', 'pop', 'Republic'),
('Gangnam Sytle', 'pop', 'PSY'),
('Highway to Hell', 'rock', 'ACDC'),
('Ki nem ugr�l...', 'minimal', 'Lady Luck'),
('Pokol tanca', 'rock', 'John All Stars'),
('Gyite', 'techno', 'Paul Kalkbrenner'),
('Tabletta', 'pop', 'NERVO');

ALTER TABLE `Tancol`
  ADD CONSTRAINT `tancol_ibfk_1` FOREIGN KEY (`cim`) REFERENCES `Zene` (`cim`),
  ADD CONSTRAINT `tancol_ibfk_2` FOREIGN KEY (`nemzetiseg`) REFERENCES `Csoport` (`nemzetiseg`),
  ADD CONSTRAINT `tancol_ibfk_3` FOREIGN KEY (`tanc_neve`) REFERENCES `Tanc` (`tanc_neve`);
