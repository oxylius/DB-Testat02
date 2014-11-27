/* Autoren:	Lukas Steiger	lsteiger@hsr.ch
 *			Noah Hendrikx	nhendrik@hsr.ch
 */

/* 	DISTINCT:
	Findet heraus, an welcher Position im 
	Lager Äpfel gelagert werden. Es kann sein,
	dass mehrere Artikel des selben Produktes 
	(in diesem Fall Äpfel) im selben Gestell 
	gelagert sind. Mit DISTINCT wird eine 
	Mehrfachausgabe verhindert
 */
SELECT DISTINCT g.Position, p.Name 
	FROM Gestell g LEFT JOIN Artikel a 
		ON g.Id = a.GestellId
	INNER JOIN Produkt p
		ON p.Id = a.ProduktId
	WHERE p.Name = 'Apfel'
;

/* JOIN ÜBER 5 TABLLEN 
	Alle Bestellungen mit Menge und Bestelldatum
	derjenigen Personen ausgeben, die 'Barack' 
	zum Vornamen heissen
*/
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
;

/* QUERY MIT UNTERABFRAGE 
	Die Abfrage zählt für jedes Produkt, wie oft es
	bereits bestellt wurde. In der Unterabfrage wird der 
	Produktname zur ProuktId gefunden
*/
SELECT pb.ProduktId, (
	SELECT p.Name 
		FROM Produkt p 
		WHERE p.Id = pb.ProduktId
	), SUM(pb.menge)
	FROM ProduktBestellung pb
	GROUP BY pb.ProduktId
;

/* GROUP BY 
	Anzahl Bestellungen pro Tag
*/
SELECT b.Datum, COUNT(b.Datum) AS "Anz. Bestellungen/Tag" 
	FROM Bestellung b
	GROUP BY b.Datum
;

/* Query mit ANY oder IN oder NOT IN 
	Sämtliche Gestelle im Gang A, also Gestell A1-A3,
	müssen wegen einem Umbau gezügelt werden. Die Abfrage
	Liefert die zu verschiebenden Artikel
*/
SELECT g.Position, a.ArtikelNr, p.Name, a.EinlagerungsDatum 
	FROM Gestell g LEFT JOIN Artikel a 
		ON g.Id = a.GestellId
	INNER JOIN Produkt p
		ON p.Id = a.ProduktId
	WHERE g.Position IN('A1', 'A2', 'A3')
;

/*
	Testat 3, A2.2 :
	Constraint verletzender Insert Testen.
*/
BEGIN;
INSERT INTO Artikel VALUES
	(11, -5.00, to_timestamp('2014-10-07 22:15:00', 'YYYY-MM-DD HH24:MI:SS'), 7, 4, 5, 2, 4)
;
ROLLBACK;