USE C_DB05_2018;
INSERT INTO PET_OWNER 
(OwnerID, OwnerLastName, OwnerFirstName, OwnerPhone, OwnerEmail)
VALUES 
(1, 'Downs', 'Marscha', 5555378765, 'Marsha.downs@somewhere.com'), 
(2,	'James', 'Richard', 5555377654,	'Richard.James@somewhere.som'),
(3,	'Frier', 'Liz',	5555376543,	'Liz.Frier@somewhere.com'), 
(4,	'Trent', 'Miles', NULL,	'Miles.Trent@somewhere.com');

SELECT * FROM PET_OWNER 
ALTER TABLE PET_OWNER ALTER COLUMN OwnerPhone INT;
/*
ALTER TABLE PET ALTER COLUMN PetDOB DATETIME2;
ALTER TABLE PET ALTER COLUMN PetWeight FLOAT;
*/


INSERT INTO PET
(PetID,	PetName,	PetType,	PetBreed,	PetDOB,	PetWeight,	OwnerId)
VALUES
(1,	'King',	'Dog',		'Std. Poodle',	20110221,	25.5,	1);
(2, 'Teddy', 'Cat', 'Cashmere',	01-02-2012,	10.5,	2),
(3,	'Fido',	'Dog', 'Std. Poodle',	17-07-2010, 28.5,	1), 
(4,	'AJ',	'Dog',	'Collie Mix',	05/05-2011,	20.0,	3),
(5,	'Cedro',	'Cat',	null,	06/06/2009,	9.5,	2), 
(6,	'Wooley',	'Cat',	null, null, 9.5, 2),
(7,	'Buster',	'Dog',	'Border Collie',	11/12/2008,	25.0,	4);
