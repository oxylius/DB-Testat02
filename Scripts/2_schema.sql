/* Autoren:	Lukas Steiger	lsteiger@hsr.ch
 *			Noah Hendrikx	nhendrik@hsr.ch
 */

/*
 * Tabellen erzeugen
 */
/* 
	Testat 3, A1.2 :
	ENUM
*/
CREATE TYPE herkunft AS ENUM 
('Schweiz', 'Afrika', 'Spanien');
 
CREATE TABLE Gestell (
/* 
	Testat 3, A1.1 :
	Typ Serial verwendet
*/
	Id SERIAL,
	Position VARCHAR(20) NOT NULL UNIQUE,
	Freie_Flaeche INT NOT NULL
);

CREATE TABLE Produkt (
	Id INTEGER,
	Name VARCHAR(30) NOT NULL,
	Beschreibung VARCHAR(400),
	Land herkunft,
/* 
	Testat 3, A1.2 :
	BOOLEAN
*/
	Lokal BOOLEAN
);

CREATE TABLE Artikel (
	ArtikelNr INTEGER,
	Preis NUMERIC NOT NULL,
	Einlagerungsdatum TIMESTAMP NOT NULL,
	Grösse INTEGER NOT NULL,
	ProduktId INTEGER,
	GestellId INTEGER,
	EinlagerungsmitarbeiterId INTEGER NOT NULL,
	AuslagerungsmitarbeiterId INTEGER NOT NULL
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
	PersonId INTEGER NOT NULL
);

CREATE TABLE Bestellung (
	BestellNummer INTEGER,
	Datum TIMESTAMP NOT NULL,
	KundenId INTEGER NOT NULL
);

CREATE TABLE ProduktBestellung (
	Id INTEGER,
	Menge INTEGER NOT NULL,
	BestellId INTEGER NOT NULL,
	ProduktId INTEGER NOT NULL
); 
/* 
	Testat 3, A1.1 :
	Typ Sequence
*/
CREATE SEQUENCE person_id_seq START 1;

