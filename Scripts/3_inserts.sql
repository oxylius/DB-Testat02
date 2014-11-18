/* Autoren:	Lukas Steiger	lsteiger@hsr.ch
 *			Noah Hendrikx	nhendrikx@hsr.ch
 */
 
INSERT INTO Gestell VALUES
	(1, 'A1', 14),
	(2, 'A2', 45),
	(3, 'A3', 12),
	(4, 'B1', 1),
	(5, 'B2', 22),
	(6, 'B3', 33),
	(7, 'C1', 1),
	(8, 'C2', 31)	
;

INSERT INTO Produkt VALUES
	(1, 'Apfel', 'Eine süsse oder saure Frucht von IHREN Schweizer Bauern', 'Schweiz', true),
	(2, 'Birne', 'Eine süsse oder saure Frucht von IHREN Schweizer Bauern', 'Schweiz', true),
	(3, 'Erdbeere', 'Die süsse Verführung', 'Schweiz', true),
	(4, 'Ananas', 'Exotische Frucht, produziert und geernet von Armen Menschen', 'Spanien', false),
	(5, 'Banane', 'Exotische Frucht, produziert und geernet von Armen Menschen', 'Afrika', false),
	(6, 'Mango', 'Exotische Frucht, produziert und geernet von Armen Menschen', 'Afrika', false),
	(7, 'Kirsche', 'Eine süsse oder saure Frucht von IHREN Schweizer Bauern', 'Schweiz', true)
;

INSERT INTO Person VALUES
	(nextval('person_id_seq'), 'Hansi', 'Hinterseher', '1.1.1900'),
	(nextval('person_id_seq'), 'Helene', 'Fischer', '22.3.1991'),
	(nextval('person_id_seq'), 'Vujo', 'Gavric', '12.1.2005'),
	(nextval('person_id_seq'), 'Mike', 'Shiva', '13.12.1950'),
	(nextval('person_id_seq'), 'Monika', 'Fasnacht', '1.2.1939'),
	(nextval('person_id_seq'), 'DJ', 'Bobo', '12.8.1977'),
	(nextval('person_id_seq'), 'Melanie', 'Winniger', '18.9.1966'),
	(nextval('person_id_seq'), 'Jacqueline', 'Badran', '1.5.1972'),
	(nextval('person_id_seq'), 'Cedric', 'Wehrmuth', '12.12.1999'),
	(nextval('person_id_seq'), 'Barack', 'Obama', '18.5.1977')
;

INSERT INTO Mitarbeiter VALUES
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5),
	(6,6),
	(7,7)
;

INSERT INTO Kunde VALUES
	(1,10),
	(2,9),
	(3,8),
	(4,4),
	(5,5),
	(6,6),
	(7,7)
;

INSERT INTO Bestellung VALUES
	(1, '25.10.2014', 1),
	(2, '26.10.2014', 2),
	(3, '27.10.2014', 3),
	(4, '28.10.2014', 4),
	(5, '29.10.2014', 5),
	(6, '29.10.2014', 6),
	(7, '29.10.2014', 7)
;

INSERT INTO ProduktBestellung VALUES
	(1, 3, 1, 1),
	(2, 14, 1, 4),
	(3, 2, 2, 3),
	(4, 1, 3, 5),
	(5, 17, 4, 2),
	(6, 1777, 4, 6),
	(7, 22, 5, 1),
	(8, 3, 6, 3),
	(9, 8, 7, 6),
	(10, 13, 7, 7)
;

INSERT INTO Artikel VALUES 
	(1, 13.55, '2014-11-01 11:15:22', 3, 1, 1, 2, 1),
	(2, 11.55, '2014-11-02 10:15:22', 32, 1, 1, 1, 2),
	(3, 3.50, '2014-11-03 09:15:09', 4, 2, 4, 3, 4),
	(4, 1.35, '2014-11-05 07:15:22', 7, 3, 5, 7, 7),
	(5, 31.50, '2014-11-06 16:15:18', 12, 4, 5, 1, 7),
	(6, 1.10, '2014-11-06 19:15:12', 31, 4, 5, 2, 3),
	(7, 12.50, '2014-11-07 22:15:00', 13, 5, 2, 2, 6),
	(8, 12.50, '2014-11-07 22:15:00', 3, 6, 2, 3, 2),
	(9, 12.50, '2014-11-07 22:15:00', 4, 7, 4, 5, 3),
	(10, 12.50, '2014-11-07 22:15:00', 7, 7, 5, 2, 4)
;