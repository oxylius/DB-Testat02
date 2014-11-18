/* Autoren:	Lukas Steiger	lsteiger@hsr.ch
 *			Noah Hendrikx	nhendrik@hsr.ch
 */

/*
	Testat 3, A3.1:
	Die Abfrage zählt für jedes Produkt, wie oft es
	bereits bestellt wurde. 
*/
SELECT pb.ProduktId, (
	SELECT p.Name 
		FROM Produkt p 
		WHERE p.Id = pb.ProduktId
	), SUM(pb.menge)
	FROM ProduktBestellung pb
	GROUP BY pb.ProduktId
;
/* ... und als CTE ... */
WITH alleProduktBestellungen AS (
	SELECT pb.ProduktId AS Id, SUM(pb.Menge) AS Summe 
		FROM ProduktBestellung pb
		GROUP BY pb.ProduktId
)
SELECT p.Name, pb.Summe FROM Produkt p 
	INNER JOIN alleProduktBestellungen pb  
	ON p.Id = pb.Id
;

/*
	Testat 3, A4.1
	Alle Bestellungen mit Menge und Bestelldatum
	derjenigen Personen ausgeben, die 'Barack' 
	zum Vornamen heissen
*/
CREATE VIEW BaracksBestellungen AS (
SELECT p.Name, pb.Menge, b.Datum, pe.Vorname, pe.Nachname 
	FROM Produkt p INNER JOIN ProduktBestellung pb 
		ON p.Id = pb.ProduktId
	INNER JOIN Bestellung b
		ON b.Bestellnummer = pb.BestellId
	INNER JOIN Kunde k
		ON k.Kundennummer = b.KundenId
	INNER JOIN Person pe
		ON pe.Id = k.PersonId
	WHERE pe.Vorname = 'Barack'
);
SELECT * FROM BaracksBestellungen;

/*
	Testat 3, A4.2
*/
CREATE VIEW person_view AS ( 
	SELECT Nachname, Vorname, Geburtsdatum
		FROM Person
);

CREATE RULE update_person_view AS ON UPDATE TO person_view
    DO INSTEAD UPDATE Person 
		SET Nachname = NEW.Nachname, Vorname = NEW.Vorname
		WHERE Nachname = OLD.Nachname;
		
UPDATE person_view 
	SET Nachname = 'Maurer', Vorname = 'Ueli' 
	WHERE Nachname= 'Obama';