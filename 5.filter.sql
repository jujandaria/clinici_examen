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