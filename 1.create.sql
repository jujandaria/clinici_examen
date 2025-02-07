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
