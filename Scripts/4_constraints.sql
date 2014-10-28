ALTER TABLE Gestell 
ADD CONSTRAINT pk_GestellID 
	PRIMARY KEY (Id)
;

ALTER TABLE Produkt 
ADD CONSTRAINT pk_ProduktId 
	PRIMARY KEY (Id)
;

ALTER TABLE Person 
ADD CONSTRAINT pk_Person 
	PRIMARY KEY (Id)
;

ALTER TABLE Kunde 
ADD CONSTRAINT pk_Kunde
	PRIMARY KEY (Kundennummer)
;

ALTER TABLE Mitarbeiter 
ADD CONSTRAINT pk_Mitarbeiter 
	PRIMARY KEY (Mitarbeiternummer),
ADD CONSTRAINT fk_MitarbeiterPerson
	FOREIGN KEY (PersonId) REFERENCES Person(Id)
;

ALTER TABLE Artikel 
ADD CONSTRAINT pk_ArtikelNr 
	PRIMARY KEY (ArtikelNr),
ADD CONSTRAINT fk_ArtikelProduktID
	FOREIGN KEY (ProduktId) REFERENCES Produkt(Id),
ADD CONSTRAINT fk_ArtikelGestellId
	FOREIGN KEY (GestellId) REFERENCES Gestell(Id),
ADD CONSTRAINT fk_ArtikelEinlagerung
	FOREIGN KEY (EinlagerungsmitarbeiterId) REFERENCES Mitarbeiter(Mitarbeiternummer),
ADD CONSTRAINT fk_ArtikelAuslagerung
	FOREIGN KEY (AuslagerungsmitarbeiterId) REFERENCES Mitarbeiter(Mitarbeiternummer)
;

ALTER TABLE Bestellung 
ADD CONSTRAINT pk_Bestellung
	PRIMARY KEY (Bestellnummer),
ADD CONSTRAINT fk_BestellungKunde
	FOREIGN KEY (KundenId) REFERENCES Kunde(Kundennummer)
;

ALTER TABLE ProduktBestellung
ADD CONSTRAINT pk_ProduktBestellung
	PRIMARY KEY (Id),
ADD CONSTRAINT fk_ProduktBestellungBestellung
	FOREIGN KEY (BestellId) REFERENCES Bestellung (Bestellnummer),
ADD CONSTRAINT fk_ProduktbestellungProdukt
	FOREIGN KEY (ProduktId) REFERENCES Produkt (Id)
;