USE C_DB05_2018;
INSERT INTO PET_OWNER 
(OwnerLastName, OwnerFirstName, OwnerPhone, OwnerEmail)
VALUES 
('Downs', 'Marscha', '5555378765', 'Marsha.downs@somewhere.com'), 
('James', 'Richard', '5555377654', 'Richard.James@somewhere.som'),
('Frier', 'Liz', '5555376543', 'Liz.Frier@somewhere.com'), 
('Trent', 'Miles', NULL, 'Miles.Trent@somewhere.com');

INSERT INTO PET
(PetName, PetType, PetBreed, PetDOB, PetWeight, OwnerId)
VALUES
('King', 'Dog', 'Std. Poodle', '21.02.2011', 25.5, 1),
('Teddy', 'Cat', 'Cashmere', '01.02.2012', 10.5, 2),
('Fido', 'Dog', 'Std. Poodle', '17.07.2010', 28.5,	1), 
('AJ', 'Dog',	'Collie Mix', '05.06.2011', 20.0,	3),
('Cedro', 'Cat', default, '06.06.2009', 9.5, 2), 
('Wooley', 'Cat', default, null, 9.5, 2),
('Buster', 'Dog', 'Border Collie', '11.12.2008', 25.0, 4);

/*ØVELSE 2 DB04*/
SELECT PetId, PetName, PetType, PetBreed, PetDOB, PetWeight, OwnerID FROM PET /* 3.15*/
SELECT * FROM PET /* 3.16*/
SELECT PetBreed, PetType FROM PET /* 3.17*/
SELECT PetBreed, PetType, PetDOB FROM PET WHERE PetType ='Dog', 'Cat' /* 3.18*/
SELECT PetBreed FROM PET /* 3.19*/
SELECT DISTINCT PetBreed FROM PET /* 3.20*/
SELECT PetBreed, PetType, PetDOB FROM PET WHERE PetType ='Dog' AND PetBreed='Std. Poodle' /* 3.21*/
SELECT PetName,PetBreed , PetType FROM PET WHERE PetType !='Dog' AND PetType <> 'Cat' AND PetType !='Fish' /* 3.22*/
/*ØVELSE 4 DB05*/
SELECT OwnerFirstName, OwnerLastName, OwnerEmail FROM PET_OWNER WHERE OwnerEmail LIKE '%somewhere.com'; /* 3.24*/
SELECT PetName, PetBreed FROM PET ORDER BY PetName; /* 3.26*/
SELECT COUNT(DISTINCT PetBreed) FROM PET; /* 3.29*/
SELECT MIN(PetWeight) AS "MinWeight", MAX(PetWeight) AS "MaxWeight", AVG(PetWeight) AS "AVGWeight" FROM PET; /* 3.31*/
SELECT AVG(PetWeight) AS "AVGWeight", PetBreed FROM PET GROUP BY PetBreed; /* 3.32*/
SELECT AVG(PetWeight) AS "AVGWeight", PetBreed FROM PET GROUP BY PetBreed HAVING COUNT(*) >1; /* 3.33*/
SELECT AVG(PetWeight) AS "AVGWeight", PetBreed FROM PET WHERE PetBreed <> 'Unknown' GROUP BY PetBreed HAVING COUNT(*) >1; /* 3.34*/
/*ØVELSE 6 DB05*/
SELECT OwnerLastName, OwnerFirstName, OwnerEmail FROM PET_OWNER WHERE OwnerID IN(SELECT OwnerID FROM PET WHERE PetType='Cat'); /* 3.35*/





