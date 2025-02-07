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