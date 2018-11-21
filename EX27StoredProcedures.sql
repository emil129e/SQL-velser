USE C_DB05_2018
GO
CREATE PROC InsertPet
(@PetName nvarchar(max), @PetType nvarchar(max),@PetBreed nvarchar(max), @PetDOB DATETIME2, @PetWeight float, @OwnerID int)
AS
	BEGIN
	INSERT INTO PET (PetName,PetType,PetBreed,PetDOB,PetWeight,OwnerID)
	VALUES
	(@PetName, @PetType, @PetBreed,@PetDOB,@PetWeight,@OwnerID)
	END

ALTER PROC InsertPet
(@PetName nvarchar(max), @PetType nvarchar(max),@PetBreed nvarchar(max) = NULL, @PetDOB DATETIME2 = null , @PetWeight float = 0, @OwnerID int = 1)
AS
	BEGIN
	INSERT INTO PET (PetName,PetType,PetBreed,PetDOB,PetWeight,OwnerID)
	VALUES
	(@PetName,@PetType,@PetBreed,@PetDOB,@PetWeight,@OwnerID)
	END

CREATE PROC InsertOwner
(@OwnerLastName nvarchar(max), @OwnerFirstName nvarchar(max), @OwnerPhone nvarchar(max) = null, @OwnerEmail nvarchar(max))
AS 
	BEGIN
	INSERT INTO PET_OWNER (OwnerLastName,OwnerFirstName,OwnerPhone,OwnerEmail)
	VALUES
	(@OwnerLastName,@OwnerFirstName, @OwnerPhone, @OwnerEmail)
	END

CREATE PROC InsertBreed
(@MinWeight float = null, @MaxWeight float = null, @AverageLifeExpectancy float = null)
AS 
	BEGIN
	INSERT INTO BREED(MinWeight,MaxWeight,AverageLifeExpectancy)
	VALUES
	(@MinWeight,@MaxWeight, @AverageLifeExpectancy)
	END

CREATE PROC GetOwners
AS
BEGIN
SELECT * FROM PET_OWNER
END

CREATE PROC GetPets
AS
BEGIN
SELECT * FROM PET
END

CREATE PROC GetBreed
AS
BEGIN
SELECT * FROM BREED
END

CREATE PROC GetOwnerByLastName
(@OwnerLastName nvarchar(100))
AS
BEGIN
SELECT * FROM PET_OWNER WHERE OwnerLastName = @OwnerLastName
END

CREATE PROC GetOwnerByEmail
(@OwnerLastName nvarchar(100))
AS
BEGIN
SELECT * FROM PET_OWNER WHERE OwnerLastName = @OwnerLastName
END

EXEC GetOwnerByLastName 'James'
