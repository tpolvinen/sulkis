INSERT INTO
	authority
VALUES
	(2,'ROLE_ADMIN'),
	(1,'ROLE_USER');
	

INSERT INTO
	webuser2
VALUES
	(1,'matti','1b320d1d4fca16462b0052e2b465c56d1111f6153670c73409e1d0b7b1f7867ff97fa12c1d465f35',1,'Matti','Meikkis'),
	(2,'aada','7fc74013565cfcf10dd379f964215c866627cdfcf2606ade05323d1273456f6915c2d73cde88e24b',1,'Aada','Admini'),
	(3,'tatupolvinen','429b856a2bc1fd1ced8c77c7396f42e0dd9918fb7b07440ec69a3f966963a2e27b9fc869fe185037',1,'Tatu','Polvinen');
	
	
INSERT INTO
	webuser2_authority
VALUES
	(1,1,1),
	(2,2,1),
	(3,2,2),
	(4,3,1);
	
	
INSERT INTO
	pelaajat
VALUES
	(1, 'Niels', 2),
	(2, 'Arto', 0),
	(3, 'Tatu', 0),
	(4, 'Eero', 1);
	
	
INSERT INTO
	ottelut
VALUES
	(1, 'Niels', 'Arto', 2016-10-08, 21, 19, 18, 21, 22, 20, 'Niels'),
	(2, 'Tatu', 'Eero', 2016-10-08, 21, 19, 23, 25, 29, 30, 'Eero'),
	(3, 'Niels', 'Eero', 2016-10-08, 21, 18, 21, 15, 21, 10, 'Niels');