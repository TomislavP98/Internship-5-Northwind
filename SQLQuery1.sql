CREATE TABLE Titule
(
	ID_Titlule int IDENTITY(1,1),
	Titula nvarchar(10)
);

CREATE TABLE Korisnici
(
    ID_Korisnika int IDENTITY(1,1),
	Ime nvarchar(25),
	Prezime nvarchar(25),
	OIB char(11),
	Broj_Mobitela varchar(10),
	Adresa nvarchar(25),
	Grad nvarchar(25),
	Drzava nvarchar(30),
	Postanski_Broj nvarchar(10)
);

CREATE TABLE Transakcije
(
	ID_Transakcije int IDENTITY(1,1),
	Datum_Transakcije datetime,
	Status int,
	Opis nvarchar(30)
);

CREATE TABLE Zaposlenici
(
	Zaposlenik_ID int IDENTITY(1,1),
	Ime nvarchar(20),
	Prezime nvarchar(20),
	Titula nvarchar(15),
	Email nvarchar(20)
);
INSERT INTO Titule(Titula)
VALUES ('Direktor'), ('Potpredsjednik'), ('Investicijski suradnik'), ('Ivesticijski analiticar');

ALTER TABLE Korisnici
ADD UNIQUE(OIB);

ALTER TABLE Titule 
ALTER COLUMN Titula nvarchar(30);

ALTER TABLE Transakcije
ALTER COLUMN Opis nvarchar(100);

ALTER TABLE Zaposlenici
ALTER COLUMN Biljeske_za_Zaposlenika nvarchar(30);

SELECT * FROM Titule;

INSERT INTO Korisnici(Ime, Prezime, OIB, ID_Korisnika, Broj_Mobitela, Adresa, Grad, Drzava, Postanski_Broj)
VALUES ('Ante', 'Antic', '11111111111', '420420', 'Put Ante 69', 'Antigrad', 'Republic of Ante', '10000'),
	   ('Borna', 'Bornic', '22222222222', '421421', 'Put Borne 69', 'Bornigrad', 'Republic of Borna', '20000'),
	   ('Cvetko', 'Cvetkic', '33333333333', '422422', 'Put Cvetka 69', 'Cvetkograd', 'Republic of Cvetko', '30000'),
	   ('Duje', 'Dujic', '44444444444', '423423', 'Put Duje 69', 'Dujegrad', 'Republic of Duje', '40000');

INSERT INTO Zaposlenici(Ime, Titula, Zaposlenik_ID)
VALUES ('Ezekija', 'Prorok', 'ezekija-starizavjet@biblija.com'),
('Ivan', 'Krstitelj', 'ivankrstitelj-novizavjet@biblija.com');

INSERT INTO Transakcije(Datum_Transakcije, Status, Opis)
VALUES ('2017-24-11', '1', 'Hentai casopisi'),
('2018-12-05', '1', 'Konop + Stolica');



UPDATE Korisnici
SET Prezime = N'Bornicic'
WHERE Ime = 'Borna'

UPDATE Korisnici
SET  Adresa = 'Put Borne 420'
WHERE Ime = 'Borna'

UPDATE Korisnici
SET  Postanski_Broj = '696969'
WHERE ime = 'Borna'