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