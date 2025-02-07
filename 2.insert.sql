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