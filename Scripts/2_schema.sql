/*
 * Tabellen erzeugen
 */

CREATE TABLE Gestell (
	Id INTEGER,
	Position VARCHAR(20) NOT NULL UNIQUE,
	Freie_Fläche INT NOT NULL
);

CREATE TABLE Produkt (
	Id INTEGER,
	Name VARCHAR(30) NOT NULL,
	Beschreibung VARCHAR(400)
);

CREATE TABLE Artikel (
	ArtikelNr INTEGER,
	Preis NUMERIC NOT NULL,
	Einlagerungsdatum TIMESTAMP NOT NULL,
	Grösse INTEGER NOT NULL,
	ProduktId INTEGER,
	GestellId INTEGER,
	EinlagerungsmitarbeiterId INTEGER,
	AuslagerungsmitarbeiterId INTEGER
);

CREATE TABLE Person (
	Id INTEGER,
	Vorname VARCHAR(30) NOT NULL,
	Nachname VARCHAR(30) NOT NULL,
	Geburtsdatum DATE NOT NULL
);

CREATE TABLE Kunde (
	Kundennummer INTEGER,
	PersonId INTEGER NOT NULL
);

CREATE TABLE Mitarbeiter (
	Mitarbeiternummer INTEGER,
	PersonId INTEGER
);

CREATE TABLE Bestellung (
	BestellNummer INTEGER,
	Datum TIMESTAMP NOT NULL,
	KundenId INTEGER NOT NULL
);

CREATE TABLE ProduktBestellung (
	Id INTEGER,
	Menge INTEGER NOT NULL,
	BestellId INTEGER,
	ProduktId INTEGER
); 