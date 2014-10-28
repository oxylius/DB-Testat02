SELECT k.Kundennummer p.Vorname, p.Nachname FROM Person p, Kunde k;

SELECT m.Mitarbeiternummer, p.Vorname, p.Nachname FROM Person p, Mitarbeiter m;

SELECT b.Datum AS Bestelldatum, b.Bestellnummer, p.Name, p.Beschreibung, pb.Menge FROM Bestellung b, ProduktBestellung pb, Produkt p ORDER BY b.Datum DESC;
