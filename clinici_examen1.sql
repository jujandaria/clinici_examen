create table Clinici (
	id_clinici INTEGER PRIMARY KEY,
	nume VARCHAR(100) NOT NULL,
	adresa VARCHAR(255) NOT NULL,
	telefon VARCHAR(10) NOT NULL
);

create table Cabinete (
	id_cabinete INTEGER PRIMARY KEY,
	id_clinici INTEGER,
	numer VARCHAR(50) NOT NULL,
	etaj INTEGER NOT NULL,
	numar VARCHAR(3) NOT NULL,
	FOREIGN KEY (id_clinici) REFERENCES Clinici(id_clinici)
);

create table Medici (
	id_medici INTEGER PRIMARY KEY,
	id_cabinete INTEGER,
	nume VARCHAR(50) NOT NULL,
	prenume VARCHAR(50) NOT NULL,
	specializare VARCHAR(100) NOT NULL,
	telefon VARCHAR(10) NOT NULL,
	FOREIGN KEY (id_cabinete) REFERENCES Cabinete(id_cabinete)
);

create table Pacienti (
	id_pacienti INTEGER PRIMARY KEY,
	id_medici INTEGER,
	nume VARCHAR(50) NOT NULL,
	prenume VARCHAR(50) NOT NULL,
	telefon VARCHAR(10) NOT NULL,
	CNP CHAR(13) UNIQUE,
	FOREIGN KEY (id_medici) REFERENCES Medici(id_medici)
);

create table Programari (
	id_programari INTEGER PRIMARY KEY,
	id_medici INTEGER,
	id_pacienti INTEGER,
	data DATE NOT NULL,
	ora TIME NOT NULL,
	status VARCHAR(50) NOT NULL,
	FOREIGN KEY (id_medici) REFERENCES Medici(id_medici),
	FOREIGN KEY (id_pacienti) REFERENCES Pacienti(id_pacienti)
);

create table Consultatii (
	id_consultatii INTEGER PRIMARY KEY,
	id_pacienti INTEGER,
	data DATE NOT NULL,
	pret INTEGER NOT NULL,
	FOREIGN KEY (id_pacienti) REFERENCES Pacienti(id_pacienti)
	
);

create table Diagnostic (
	id_diagnostic INTEGER PRIMARY KEY,
	id_consultatii INTEGER,
	nume VARCHAR(100) NOT NULL,
	recomandare VARCHAR(300),
	FOREIGN KEY (id_consultatii) REFERENCES Consultatii(id_consultatii)
);

create table Tratament (
	id_tratament INTEGER PRIMARY KEY,
	id_diagnostic INTEGER,
	denumire VARCHAR(200) NOT NULL,
	durata_zile INTEGER NOT NULL,
	tip_tratament VARCHAR(50),
	FOREIGN KEY (id_diagnostic) REFERENCES Diagnostic(id_diagnostic)
);


insert into Clinici (id_clinici, nume, adresa, telefon) VALUES
('1','TudorMed', 'str.Taba nr.5 Pitesti', '0786555111'),
('2','TudorMed', 'str. Pacii nr.10 Lugoj', '0762002002'),
('3','TudorMed', 'str.Hebe nr.23 Arad', '0796122122'),
('4','TudorMed', 'str. Miahi Viteazu nr.10 Timisoara', '0753155155'),
('5','TudorMed', 'str.Miorita nr.25 Alba Iulia', '0766006006'),
('6','TudorMed', 'str.Mangalia nr.60 Craiova', '0799009009'),
('7','TudorMed', 'str. Universitatii nr.27 Ploiesti', '0783888888'),
('8','TudorMed', 'str.Cetatii nr.12 Brasov', '0766990990'),
('9','TudorMed', 'str.Panselutelor nr.7 Orsova', '0754545545'),
('10','TudorMed', 'str.Florenta nr.50 Caransebes', '0789110110');

insert into Cabinete (id_cabinete, id_clinici, numer, etaj, numar) VALUES
('1','1','Stomatologie','2','25'),
('2','1','Cardiologie','1','11'),
('3','1','Dermatologie','5','59'),
('4','1','Ginecologie','4','47'),
('5','1','Pneumologie','1','12'),
('6','1','Hematologie','2','22'),
('7','1','Oncologie','3','31'),
('8','1','Psihiatrie','2','21'),
('9','1','Pediatrie','5','52'),
('10','1','Oftalmologie','2','23');


insert into Medici (id_medici, id_cabinete, nume, prenume,specializare, telefon) VALUES
('1','10','Popescu','Andrei','Oftalmologie','0762626262'),
('2','1','Ionescu','Maria','Stomatologie','0799050987'),
('3','9','Dumitru','Gabriel','Pediatrie','0745455455'),
('4','2','Radu','Elena','Cardiologie','0712467467'),
('5','8','Georgescu','Alexandra','Psihiatrie','0731909099'),
('6','3','Stoica','Liviu','Dermatologie','0745989000'),
('7','7','Petre','Daniela','Oncologie','0781234234'),
('8','4','Marcon','Ioana','Ginecologie','0745076698'),
('9','6','Cristache','Nicusor','Hematologie','0732890765'),
('10','5','Voicu','Marius','Pneumologie','0755999000');


insert into Pacienti (id_pacienti,id_medici,nume,prenume,telefon,CNP) VALUES
('1','1','Constantinescu','Mihai','0765876231','1234578098127'),
('2','10','Popa','Alina','0789145023','0953782549124'),
('3','2','Florescu','Iustin','0790147987','9437501592045'),
('4','9','Ionescu','Sorin','0745905873','6592583054871'),
('5','3','Dumitrecu','Adrian','0712856321','6491638235621'),
('6','8','Marinescu','Cristina','0734784098','5481340852864'),
('7','4','Fometescu','Maria','0798037876','0264829457125'),
('8','7','Petrecu','Daniel','0764390001','0374586421864'),
('9','5','Boltasu','Sebastian','0795381209','2474810629743'),
('10','6','Angheluta','David','0798125333','7465192734098');

insert into Programari (id_programari,id_medici,id_pacienti,data,ora,status) VALUES
('1','5','9','12-02-2025','13:00','Confirmata'),
('2','4','7','13-02-2025','10:00','In asteptare'),
('3','3','5','13-02-2025','11:00','Confirmata'),
('4','2','3','13-02-2025','12:00','Confirmata'),
('5','1','1','13-02-2025','12:30','In asteptare'),
('6','6','10','17-02-2025','08:00','Confirmata'),
('7','10','2','17-02-2025','10:00','Confrimata'),
('8','7','8','17-02-2025','12:30','Confirmata'),
('9','8','6','18-02-2025','08:00','In asteptare'),
('10','9','4','18-02-2025','10:00','Confrimata');


insert into Consultatii (id_consultatii,id_pacienti,data,pret) VALUES
('1','10','17-02-2025','300'),
('2','9','12-02-2025','450'),
('3','8','17-02-2025','700'),
('4','7','13-02-2025','250'),
('5','6','18-02-2025','800'),
('6','5','13-02-2025','1230'),
('7','4','17-02-2025','2000'),
('8','3','13-02-2025','200'),
('9','2','17-02-2025','900'),
('10','1','13-02-2025','2300');


insert into Diagnostic (id_diagnostic,id_consultatii,nume,recomandare) VALUES
('1','10','Consult Oftalmologic','Reprogameaza-te in 2 saptamani'),
('2','9','Bipolaritate','Mult sport'),
('3','8','Curatare dentara','Nu manca 3h de la procedura'),
('4','7','Anemie','Consum bogat de fier'),
('5','6','Dureri stomac','Reprogrameaza-te in 2 saptamani'),
('6','5','Control de rutina','Te asteptam sa ridici rezultatele'),
('7','4','Hipertensiune arteriala','Luati medicamentele(vezi prescriptia'),
('8','3','Analize de sange','Te asteptam sa ridici rezultatele'),
('9','2','Control','Te asteptam sa ridici rezulatatele'),
('10','1','Dermatita Seboreica','Vezi prescriptia medicala');



insert into Tratament (id_tratament,id_diagnostic,denumire,durata_zile,tip_tratament) VALUES
('1','1','ConjuctiPlus','14','picaturi'),
('2','2','BipoLita','21','Pastile'),
('3','3','Fara','0','Fara'),
('4','4','AneMix','10','Sirop'),
('5','5','DebriBub','4','Sirop'),
('6','6','FeminoFem','3','Pastile'),
('7','7','CardiSol','30','Pastile'),
('8','8','Fara','0','Fara'),
('9','9','ViaminPlus','9','Pastile'),
('10','10','DermaLong','21','Sampon');


UPDATE Clinici SET telefon = '0755123456' WHERE id_clinici = 1;
UPDATE Clinici SET telefon = '0987124673' WHERE id_clinici = 2;
UPDATE Clinici SET nume = 'TudorMED' WHERE id_clinici = 10;
UPDATE Clinici SET adresa = 'str. Muncii nr.10 Bucuresti' WHERE id_clinici = 7;
UPDATE Clinici SET adresa = 'str. Spitalului, nr.4 Ploiesti' WHERE id_clinici = 5;
UPDATE Clinici SET telefon = '0741836322' WHERE id_clinici = 8;
UPDATE Clinici SET nume = 'TUDORmed' WHERE id_clinici = 3;
UPDATE Clinici SET nume = 'tudormed' WHERE id_clinici = 6;
UPDATE Clinici SET adresa = 'str. Voica nr.54 Constanta' WHERE id_clinici = 4;
UPDATE Clinici SET nume = 'TUDORMED' WHERE id_clinici = 9;



UPDATE Cabinete SET id_clinici = '3' WHERE id_cabinete = 1;
UPDATE Cabinete SET numer = 'Pediatrie' WHERE id_cabinete = 4;
UPDATE Cabinete SET etaj = '3' WHERE id_cabinete = 9;
UPDATE Cabinete SET numar = '56' WHERE id_cabinete = 3;
UPDATE Cabinete SET id_clinici = '4' WHERE id_cabinete = 2;
UPDATE Cabinete SET numer = 'Dermatologie' WHERE id_cabinete = 7;
UPDATE Cabinete SET etaj = '5' WHERE id_cabinete = 5;
UPDATE Cabinete SET numar = '23' WHERE id_cabinete = 6;
UPDATE Cabinete SET id_clinici = '2' WHERE id_cabinete = 8;
UPDATE Cabinete SET numer = 'Cardiologie' WHERE id_cabinete = 10;


UPDATE Medici SET telefon = '079053165' WHERE id_medici = 8;
UPDATE Medici SET nume = 'Podgor' WHERE id_medici = 4;
UPDATE Medici SET prenume = 'Flavian' WHERE id_medici = 1;
UPDATE Medici SET specializare = 'stomatologie' WHERE id_medici = 2;
UPDATE Medici SET telefon = '0754387294' WHERE id_medici = 9;
UPDATE Medici SET specializare = 'PEDIATRIE' WHERE id_medici = 3;
UPDATE Medici SET nume = 'Loghin' WHERE id_medici = 5;
UPDATE Medici SET prenume = 'Maria' WHERE id_medici = 6;
UPDATE Medici SET specializare = 'oncologie' WHERE id_medici = 7;
UPDATE Medici SET telefon = '0756344821' WHERE id_medici = 10;


UPDATE Pacienti SET nume = 'Licurici' WHERE id_pacienti = 10;
UPDATE Pacienti SET prenume = 'Miruna' WHERE id_pacienti = 5;
UPDATE Pacienti SET telefon = '0745210989' WHERE id_pacienti = 7;
UPDATE Pacienti SET CNP = '0836294724561' WHERE id_pacienti = 1;
UPDATE Pacienti SET id_medici = '10' WHERE id_pacienti = 1;
UPDATE Pacienti SET id_medici = '1' WHERE id_pacienti = 2;
UPDATE Pacienti SET nume = 'Fieraru' WHERE id_pacienti = 8;
UPDATE Pacienti SET prenume = 'Lucian' WHERE id_pacienti = 9;
UPDATE Pacienti SET telefon = '084512376' WHERE id_pacienti = 6;
UPDATE Pacienti SET CNP = '0734856382634' WHERE id_pacienti = 3;




UPDATE Programari SET data = '15-02-2025' WHERE id_programari = 1;
UPDATE Programari SET ora = '09:00' WHERE id_programari = 9;
UPDATE Programari SET status = 'Confirmata' WHERE id_programari = 5;
UPDATE Programari SET id_medici = '7' WHERE id_programari = 6;
UPDATE Programari SET data = '20-02-2025' WHERE id_programari = 10;
UPDATE Programari SET ora = '12:00' WHERE id_programari = 3;
UPDATE Programari SET status = 'Anulata' WHERE id_programari = 2;
UPDATE Programari SET id_medici = '9' WHERE id_programari = 9;
UPDATE Programari SET ora = '08:00' WHERE id_programari = 7;
UPDATE Programari SET status = 'In asteptare' WHERE id_programari = 8;



UPDATE Consultatii SET id_pacienti = '1' WHERE id_consultatii = 9;
UPDATE Consultatii SET pret = '800' WHERE id_consultatii = 10;
UPDATE Consultatii SET data = '18-02-2025' WHERE id_consultatii = 3;
UPDATE Consultatii SET id_pacienti = '4' WHERE id_consultatii = 6;
UPDATE Consultatii SET pret = '1000' WHERE id_consultatii = 2;
UPDATE Consultatii SET data = '15-02-2025' WHERE id_consultatii = 8;
UPDATE Consultatii SET id_pacienti = '7' WHERE id_consultatii = 2;
UPDATE Consultatii SET pret = '200' WHERE id_consultatii = 1;
UPDATE Consultatii SET data = '17-02-2025' WHERE id_consultatii = 4;
UPDATE Consultatii SET id_pacienti = '9' WHERE id_consultatii = 7;



UPDATE Diagnostic SET id_consultatii = '1' WHERE id_diagnostic = 9;
UPDATE Diagnostic SET nume = 'Analize saptamanale' WHERE id_diagnostic = 8;
UPDATE Diagnostic SET recomandare = 'Reprogrameaza-te pentru saptamana viitoare' WHERE id_diagnostic = 8;
UPDATE Diagnostic SET id_consultatii = '4' WHERE id_diagnostic = 6;
UPDATE Diagnostic SET nume = 'Tratament dinte' WHERE id_diagnostic = 3;
UPDATE Diagnostic SET recomandare = 'Nu manca 2 ore' WHERE id_diagnostic = 3;
UPDATE Diagnostic SET id_consultatii = '7' WHERE id_diagnostic = 2;
UPDATE Diagnostic SET nume = 'Anxietate' WHERE id_diagnostic = 2;
UPDATE Diagnostic SET recomandare = 'Reprogrameaza-te' WHERE id_diagnostic = 6;
UPDATE Diagnostic SET recomandare = 'Medicamente(prescriptie)' WHERE id_diagnostic = 7;



UPDATE Tratament SET denumire = 'ConjiPlus' WHERE id_tratament = 1;
UPDATE Tratament SET durata_zile = '1' WHERE id_tratament = 3;
UPDATE Tratament SET tip_tratament = 'Pastile' WHERE id_tratament = 3;
UPDATE Tratament SET denumire = 'AgoDent' WHERE id_tratament = 3;
UPDATE Tratament SET denumire = 'MemoHealth' WHERE id_tratament = 8;
UPDATE Tratament SET durata_zile = '7' WHERE id_tratament = 8;
UPDATE Tratament SET tip_tratament = 'Pastile' WHERE id_tratament = 1;
UPDATE Tratament SET tip_tratament = 'Injectie' WHERE id_tratament = 2;
UPDATE Tratament SET denumire = 'DermaTik' WHERE id_tratament = 10;
UPDATE Tratament SET tip_tratament= 'Pastile' WHERE id_tratament = 8;



SELECT nume
FROM Clinici
WHERE id_clinici = 1;

SELECT nume
FROM Clinici
WHERE nume = 'TudorMed';

SELECT adresa
FROM Clinici
WHERE telefon = '0753155155';


SELECT numer
FROM Cabinete
WHERE id_cabinete = 1;

SELECT numer
FROM Cabinete
WHERE etaj = 2;


SELECT numar
FROM Cabinete
WHERE id_clinici = 4;

SELECT nume, prenume
FROM Medici
WHERE id_medici = 1;

SELECT nume, prenume
FROM Medici
WHERE specializare = 'Dermatologie';

SELECT telefon
FROM Medici
WHERE id_cabinete = 5;


SELECT nume, prenume
FROM Pacienti
WHERE id_pacienti = 1;


SELECT nume, prenume
FROM Pacienti
WHERE id_medici = 3;

SELECT CNP
FROM Pacienti
WHERE nume = 'Ionescu';


SELECT ora
FROM Programari
WHERE id_pacienti = 1;

SELECT id_programari, data, ora
FROM Programari
WHERE status = 'Confirmata';

SELECT pret
FROM Consultatii
WHERE id_pacienti = 1;

SELECT data
FROM Consultatii
WHERE id_pacienti = (SELECT id_pacienti FROM Pacienti WHERE CNP = '7465192734098');

SELECT recomandare
FROM Diagnostic
WHERE id_diagnostic = 1;

SELECT durata_zile
FROM Tratament
WHERE id_diagnostic = 1;

SELECT tip_tratament
FROM Tratament
WHERE id_diagnostic = (SELECT id_diagnostic FROM Diagnostic WHERE nume = 'Anemie');

SELECT COUNT(*) AS total_clinici
FROM Clinici;

SELECT COUNT(*) AS total_cabinete
FROM Cabinete;

SELECT etaj, COUNT(*) AS numar_cabinete
FROM Cabinete
GROUP BY etaj
ORDER BY etaj;


SELECT COUNT(*) AS total_medici
FROM Medici;

SELECT COUNT(*) AS total_pacienti
FROM Pacienti;

SELECT COUNT(*) AS total_programari
FROM Programari;

SELECT AVG(pret) AS pret_mediu
FROM Consultatii;

SELECT COUNT(*) AS total_diagnostice
FROM Diagnostic;



SELECT id_clinici, nume
FROM Clinici
WHERE nume LIKE 'Tudor%';

SELECT id_clinici
FROM Clinici
WHERE adresa LIKE '%Ploiesti';

SELECT adresa 
FROM Clinici 
WHERE id_clinici BETWEEN '1' AND '5';



SELECT id_cabinete, numer
FROM Cabinete
WHERE etaj BETWEEN '2' AND '5';

SELECT id_cabinete
FROM Cabinete
WHERE numer LIKE 'P%';

SELECT numer
FROM Cabinete
WHERE numar BETWEEN '10' AND '20';


SELECT nume
FROM Medici
WHERE prenume LIKE 'D%';

SELECT nume, prenume
FROM Medici
WHERE specializare LIKE 'P%';

SELECT nume, prenume, specializare
FROM Medici
WHERE id_medici BETWEEN '5' AND '10';


SELECT nume, prenume, CNP
FROM Pacienti
WHERE id_medici BETWEEN '1' AND '7';

SELECT nume, CNP
FROM Pacienti
WHERE prenume LIKE '%a';

SELECT nume, prenume, CNP
FROM Pacienti
WHERE id_pacienti BETWEEN '4' AND '10';



SELECT id_pacienti
FROM Programari
WHERE status LIKE 'In%';

SELECT id_programari
FROM Programari
WHERE data BETWEEN '12-02-2025' AND '17-02-2025';

SELECT id_medici, id_pacienti
FROM Programari
WHERE id_programari BETWEEN '1' and '5';


SELECT id_pacienti
FROM Consultatii
WHERE pret BETWEEN '300' AND '1000';

SELECT id_pacienti
FROM Consultatii
WHERE data BETWEEN '13-02-2025' AND '15-02-2025';

SELECT id_pacienti
FROM Consultatii
WHERE id_consultatii BETWEEN '4' AND '7';

SELECT nume
FROM Diagnostic
WHERE id_diagnostic BETWEEN '1' AND '4';

SELECT recomandare
FROM Diagnostic
WHERE nume LIKE 'D%';

SELECT id_diagnostic
FROM Diagnostic
WHERE nume LIKE '%e'


SELECT denumire
FROM Tratament
WHERE id_diagnostic BETWEEN '1' AND '3';

SELECT durata_zile
FROM Tratament
WHERE denumire LIKE 'C%';

SELECT tip_tratament
FROM Tratament
WHERE durata_zile BETWEEN '3' AND '10';