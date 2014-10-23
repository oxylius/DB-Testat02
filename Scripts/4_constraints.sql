/*
 * Fremdschluessel setzen
 */
 ALTER TABLE Gestell 
 ADD CONSTRAINT pk_GestellID 
    PRIMARY KEY (Id)
 ;
 
 ALTER TABLE Produkt 
 ADD CONSTRAINT pk_ProduktId 
    PRIMARY KEY (Id)
 ;
 
 ALTER TABLE Artikel 
 ADD CONSTRAINT pk_ArtikelNr 
    PRIMARY KEY (ArtikelNr),
 ADD CONSTRAINT fk_ArtikelProduktID
	FOREIGN KEY (ProduktId) REFERENCES Produkt(Id),
 ADD CONSTRAINT fk_ArtikelGestellId
	FOREIGN KEY (GestellId) REFERENCES Gestell(Id),
	
    ON DELETE CASCADE
 ;
 
 ALTER TABLE AbtLeitung 
 ADD CONSTRAINT fk_AbtLAng 
    FOREIGN KEY (AbtChef) REFERENCES Angestellter(PersNr)
    ON DELETE CASCADE
 ;
 
 ALTER TABLE Projekt 
 ADD CONSTRAINT fk_ProjAng 
    FOREIGN KEY (ProjLeiter) REFERENCES Angestellter(PersNr)
 ;
 
 ALTER TABLE ProjektZuteilung 
 ADD CONSTRAINT fk_ProjzAng 
    FOREIGN KEY (PersNr) REFERENCES Angestellter(PersNr)
    ON DELETE CASCADE
 ;
 
 ALTER TABLE ProjektZuteilung 
 ADD CONSTRAINT fk_ProjzProj 
    FOREIGN KEY (ProjNr) REFERENCES Projekt(ProjNr)
    ON DELETE CASCADE
;
