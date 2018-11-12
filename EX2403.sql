DROP TABLE PET_OWNER;
CREATE TABLE PET_OWNER(
OwnerID int not null IDENTITY (1,1),
OwnerLastNamen nvarchar(max) NOT NULL,
OwnerFirstName nvarchar(max) NOT NULL ,
OwnerPhone nvarchar(max) NULL,
OwnerEmail nvarChar(max) NOT NULL,
 Primary Key (OwnerID));
 
 DROP TABLE PET;
CREATE TABLE PET (
PetId int not null IDENTITY (1,1) Primary Key,
 PetName nvarchar(max) NOT NULL,
  PetType nvarchar (max) NOT NULL, 
  PetBreed nvarchar (max) default 'Unknown',
   PetDOB datetime2 NULL, 
PetWeight DECIMAL Not NUll, OwnerID int NOT NULL,
 CONSTRAINT OwnerID_FK Foreign Key (OwnerID) References PET_OWNER(OwnerID) ON DELETE NO ACTION);


 DROP TABLE INVOICE;
 CREATE TABLE INVOICE 
 (InvoiceNumber int not null IDENTITY (1,1),
  InvoiceDate Datetime2 not null,
   SubTotal float not null,
    TaxPct float not null,
	 Total float not null,
	  Primary key (InvoiceNumber));

DROP TABLE PRODUCT;  	 
Create TABLE PRODUCT (
ProductNumber Int not null IDENTITY (1,1),
ProductType nvarchar(max) not null,
ProductDescription nvarchar (max)not null,
UnitPrice decimal not null,
Primary key ( ProductNumber)
);

DROP TABLE LINE_ITEM;
Create TABLE LINE_ITEM (
InvoiceNumber int not null,
LineNumber int not null IDENTITY (1,1),
ProductNumber int not null,
Quantity int not null,
Unitprice float not null,
Total float not null,
primary key (InvoiceNumber, LineNumber),
Foreign key (InvoiceNumber) REFERENCES INVOICE(InvoiceNumber),
FOREIGN KEY (ProductNumber) REFERENCES PRODUCT (ProductNumber)
);


/*SEMINAR(SeminarID, SeminarDate, Location, SeminarTitle)
	SEMINAR_CUSTOMER(SeminarID, CustomerID)
	CUSTOMER(CustomerID, FirstName, LastName, Street, Zip)
	ZIP_CITY(Zip, City)
	*/
	
CREATE TABLE SEMINAR (
SeminarID int not null,
SeminarDate datetime2 not null,
"Location" nvarchar (255) not null,
SeminarTitle nvarchar (255) not null,
PRIMARY KEY (SeminarID));

CREATE TABLE SEMINAR_CUSTOMER (
SeminarID int not null,
CustomerID int not null IDENTITY (1,1),
PRIMARY KEY ( SeminarID, CustomerID),
FOREIGN KEY (SeminarID) REFERENCES SEMINAR (SeminarID));







