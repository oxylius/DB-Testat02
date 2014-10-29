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

/* TODO: QUERY MIT UNTERABFRAGE */

/* GROUP BY 
Anzahl Bestellungen pro Tag
*/
SELECT b.Datum, COUNT(b.Datum) AS "Anz. Bestellungen/Tag" 
	FROM Bestellung b
	GROUP BY b.Datum
;

/* TODO: Query mit ANY oder IN oder NOT IN */