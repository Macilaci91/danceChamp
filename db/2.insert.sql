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
