--Part B
/*
Group Name: Late-Night Code Co.
First and Last Name: Rajpara Dhruv Kamleshkumar	   Student_ID: 991575895
First and Last Name: Patel Devansh			           Student_ID: 991574941
First and Last Name:  Patel Shreya			           Student_ID: 991561893
*/
---Create All The Tables


CREATE  TABLE MOVIECATEGORY(
CategoryID NUMBER NOT NULL,
CategoryName VARCHAR(30),
CONSTRAINT pk_CategoryID  PRIMARY KEY (CategoryID)
);

---Select the MOVIECATEGORY table to see data which is inserted through Talend

SELECT * FROM MOVIECATEGORY;

-----------------------

CREATE  TABLE CUSTOMERLIST(
CustomerInitials VARCHAR(5) NOT NULL,
FirstName VARCHAR(10) NOT NULL,
LastName VARCHAR(10),
PhoneNumber VARCHAR(23) NOT NULL,
BirthDate VARCHAR(27) NOT NULL,
DriverLicense NUMBER ,
Status VARCHAR(9) NOT NULL,
CONSTRAINT pk_CustomerInitial  PRIMARY KEY (CustomerInitials)
);

---Select the CUSTOMERLIST table to see data which is inserted through Talend
SELECT * FROM CUSTOMERLIST;


--------------

CREATE   TABLE DVDS(
TapeID NUMBER NOT NULL,
Title VARCHAR(57) NOT NULL,
YearOfRelease  NUMBER,
Cost NUMBER NOT NULL,
CategoryID   INT NOT NULL,
RentedOut  VARCHAR(15) NOT NULL,
Rating VARCHAR(9),
ActionOnReturn VARCHAR(15),
CONSTRAINT pk_TapeID  PRIMARY KEY (TapeID),
CONSTRAINT FK_CATEGORYID FOREIGN KEY (CategoryID) REFERENCES  MOVIECATEGORY(CategoryID)

);

---Select the DVDS table to see data which is inserted through Talend
SELECT * FROM DVDS;


---------------------

CREATE    TABLE DVDRENTAL(
RentalID NUMBER NOT NULL PRIMARY KEY,
RentalDate VARCHAR(13) NOT NULL,
CustomerInitials   VARCHAR(5) NOT NULL,
TapeID NUMBER NOT NULL,
CONSTRAINT Fk_Customers_Initials FOREIGN KEY (CustomerInitials) REFERENCES  CUSTOMERLIST(CustomerInitials),
CONSTRAINT FK_TAPEID FOREIGN KEY (TapeId) REFERENCES  DVDS(TapeID)
);

---Select the DVDRENTAL table to see data which is inserted through Talend
SELECT * FROM DVDRENTAL;