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