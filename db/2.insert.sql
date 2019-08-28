INSERT INTO `Csoport` (`nev`, `nemzetiseg`, `pontszam`, `atlag_eletkor`) VALUES
('Guys with Kids', 'USA', 120, 20),
('Hontalanok', 'szlovák', 2, 21),
('Jó Barát', 'lengyel', 213, 30),
('Rabló Pandúrok', 'magyar', 233, 21),
('Sógorok', 'osztrák', 222, 31),
('Szõröstalpúak', 'román', 1, 18),
('Total Success', 'francia', 110, 66);

INSERT INTO `Tanc` (`tanc_neve`) VALUES
('Balett'),
('Capoeira'),
('Kortárstánc'),
('Pogo'),
('Salsa'),
('Tangó'),
('Zumba');

INSERT INTO `Tancol` (`nemzetiseg`, `tanc_neve`, `cim`) VALUES
('magyar', 'Balett', '16 tonna'),
('USA', 'Capoeira', 'Gangnam Sytle'),
('francia', 'Kortárstánc', 'Highway to Hell'),
('román', 'Pogo', 'Ki nem ugrál...'),
('szlovák', 'Salsa', 'Gyite'),
('lengyel', 'Tangó', 'Tabletta'),
('osztrák', 'Zumba', 'Pokol tanca');

INSERT INTO `Zene` (`cim`, `mufaj`, `eloado`) VALUES
('16 tonna', 'pop', 'Republic'),
('Gangnam Sytle', 'pop', 'PSY'),
('Highway to Hell', 'rock', 'ACDC'),
('Ki nem ugrál...', 'minimal', 'Lady Luck'),
('Pokol tanca', 'rock', 'John All Stars'),
('Gyite', 'techno', 'Paul Kalkbrenner'),
('Tabletta', 'pop', 'NERVO');

ALTER TABLE `Tancol`
  ADD CONSTRAINT `tancol_ibfk_1` FOREIGN KEY (`cim`) REFERENCES `Zene` (`cim`),
  ADD CONSTRAINT `tancol_ibfk_2` FOREIGN KEY (`nemzetiseg`) REFERENCES `Csoport` (`nemzetiseg`),
  ADD CONSTRAINT `tancol_ibfk_3` FOREIGN KEY (`tanc_neve`) REFERENCES `Tanc` (`tanc_neve`);
