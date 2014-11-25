/* Autoren:	Lukas Steiger	lsteiger@hsr.ch
 *			Noah Hendrikx	nhendrikx@hsr.ch
 */
 
INSERT INTO Gestell (Position, Freie_Flaeche) VALUES
	('A1', 14),
	('A2', 45),
	('A3', 12),
	('B1', 1),
	('B2', 22),
	('B3', 33),
	('C1', 1),
	('C2', 31)	
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
\echo
\echo A1.3 Testing
\echo Test Insert eines ungültigen Wertes. Rollback sollte durchgeführt werden.
\echo

BEGIN;
INSERT INTO Produkt VALUES
	(8, 'Nuss', 'Die Gute alte Nuss', 'Italien', true)
;
ROLLBACK;

INSERT INTO Person VALUES
	(nextval('person_id_seq'), 'Hansi', 'Hinterseher', to_date('1900-01-01', 'YYYY-MM-DD')),
	(nextval('person_id_seq'), 'Helene', 'Fischer', to_date('1991-03-22', 'YYYY-MM-DD')),
	(nextval('person_id_seq'), 'Vujo', 'Gavric', to_date('2005-01-12', 'YYYY-MM-DD')),
	(nextval('person_id_seq'), 'MIke', 'Shiva', to_date('1950-12-13', 'YYYY-MM-DD')),
	(nextval('person_id_seq'), 'Monika', 'Fasnacht', to_date('1939-02-01', 'YYYY-MM-DD')),
	(nextval('person_id_seq'), 'DJ', 'Bobo', to_date('1977-08-12', 'YYYY-MM-DD')),
	(nextval('person_id_seq'), 'Melanie', 'Winniger', to_date('1966-09-18', 'YYYY-MM-DD')),
	(nextval('person_id_seq'), 'Jacqueline', 'Badran', to_date('1972-05-01', 'YYYY-MM-DD')),
	(nextval('person_id_seq'), 'Cedric', 'Wehrmuth', to_date('1999-12-12', 'YYYY-MM-DD')),
	(nextval('person_id_seq'), 'Barack', 'Obama', to_date('1977-05-18', 'YYYY-MM-DD'))
;

INSERT INTO MItarbeiter VALUES
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
	(1, 13.55, to_timestamp('2014-11-01 11:15:22', 'YYYY-MM-DD HH24:MI:SS'), 3, 1, 1, 2, 1),
	(2, 11.55, to_timestamp('2014-11-02 10:15:22', 'YYYY-MM-DD HH24:MI:SS'), 32, 1, 1, 1, 2),
	(3, 3.50, to_timestamp('2014-11-03 09:15:09', 'YYYY-MM-DD HH24:MI:SS'), 4, 2, 4, 3, 4),
	(4, 1.35, to_timestamp('2014-11-05 07:15:22', 'YYYY-MM-DD HH24:MI:SS'), 7, 3, 5, 7, 7),
	(5, 31.50, to_timestamp('2014-11-06 16:15:18', 'YYYY-MM-DD HH24:MI:SS'), 12, 4, 5, 1, 7),
	(6, 1.10, to_timestamp('2014-11-06 19:15:12', 'YYYY-MM-DD HH24:MI:SS'), 31, 4, 5, 2, 3),
	(7, 12.50, to_timestamp('2014-11-07 22:15:00', 'YYYY-MM-DD HH24:MI:SS'), 13, 5, 2, 2, 6),
	(8, 12.50, to_timestamp('2014-11-07 22:15:00', 'YYYY-MM-DD HH24:MI:SS'), 3, 6, 2, 3, 2),
	(9, 12.50, to_timestamp('2014-11-07 22:15:00', 'YYYY-MM-DD HH24:MI:SS'), 4, 7, 4, 5, 3),
	(10, 12.50, to_timestamp('2014-11-07 22:15:00', 'YYYY-MM-DD HH24:MI:SS'), 7, 7, 5, 2, 4)
;