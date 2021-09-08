
CREATE DATABASE INVENTORY;     -- creating a database
DROP DATABASE INVENTORY; 


USE INVENTORY;      -- using the created database


------    Let's create some tables and add values to it   ------


-- PRODUCT TABLE

CREATE TABLE PRODUCT 
(PID CHAR(5), PDESC VARCHAR(50), PRICE INT, CATEGORY VARCHAR(30), SID CHAR(5));



-- INSERTING RECORDS IN PRODUCT TABLE:

INSERT INTO PRODUCT
VALUES ('P0001', 'HP i3 LAPTOP', 36000, 'IT', 'S0001');

INSERT INTO PRODUCT
VALUES ('P0002', 'LENOVO KEYBOARD', 500, 'IT', 'S0004');

INSERT INTO PRODUCT
VALUES ('P0003', 'DELL MOUSE', 250, 'IT', 'S0003');

INSERT INTO PRODUCT
VALUES ('P0004', 'BAJAJ INDUCTION COOKER', 4000, 'HA', 'S0002');

INSERT INTO PRODUCT
VALUES ('P0005', 'PIGEON HOTPOT', 2500, 'HA', 'S0005');

INSERT INTO PRODUCT
VALUES ('P0006', 'HEALTHKART CALCIUM PILLS', 600, 'HC', 'S0008');

INSERT INTO PRODUCT
VALUES ('P0007', 'VITAMIN A SYRUP', 250, 'HC', 'S0007');

INSERT INTO PRODUCT
VALUES ('P0008', 'VITAMIN B CAPSULES', 200, 'HA', 'S0006');

INSERT INTO PRODUCT
VALUES ('P0009', 'KINGSTON PENDRIVE', 400, 'IT', 'S0009');

INSERT INTO PRODUCT
VALUES ('P0010', 'HAWKINS NON-STICK PAN', 600, 'HA', 'S0010');

INSERT INTO PRODUCT
VALUES ('P0011', 'HERBALIFE ENERGY DRINK', 250, 'HC', 'S0005');

INSERT INTO PRODUCT
VALUES ('P0012', 'SANDISK OTG PD', 800, 'IT', 'S0002');

INSERT INTO PRODUCT
VALUES ('P0013', 'LG MICROWAVE', 20000, 'HA', 'S0007');

INSERT INTO PRODUCT
VALUES ('P0014', 'THOMSON ULTRAHD TV', 40000, 'IT', 'S0003');

INSERT INTO PRODUCT
VALUES ('P0015', 'YAKUT PROBIOTIC DRINK', 150, 'HC', 'S0005');

INSERT INTO PRODUCT
VALUES ('P0016', 'REDMI NOTE 9', 16000, 'IT', 'S0001');

INSERT INTO PRODUCT
VALUES ('P0017', 'WHIRLPOOL SPLIT AC', 46500, 'HA', 'S0002');

INSERT INTO PRODUCT
VALUES ('P0018', 'HAIER AUTOMATIC WASHING MACHINE', 15000, 'HA', 'S0007');

INSERT INTO PRODUCT
VALUES ('P0019', 'LENOVO LEGION i5 LAPTOP', 40000, 'IT', 'S0006');

INSERT INTO PRODUCT
VALUES ('P0020', 'NUTRILITE PROTEIN POWDER', 3000, 'HC', 'S0008');



SELECT * FROM PRODUCT;   -- Query to display the entire product table



-------- ADDING SOME CONSTRAINTS TO THE PRODUCT TABLE --------- 

-- not null constraint on PID column
Alter table PRODUCT
Alter Column PID char(5) NOT NULL;



-- primary key constraint on PID column
ALTER TABLE PRODUCT
ADD CONSTRAINT PK PRIMARY KEY(PID);



-- not null constraint on PDESC column
Alter table PRODUCT
Alter Column PDESC varchar(50) NOT NULL;



-- check constraint on PRICE column
ALTER TABLE PRODUCT
ADD CONSTRAINT CKP CHECK (PRICE > 0);



-- check constraint on CATEGORY column
Alter table PRODUCT
ADD Constraint CK check (CATEGORY in ('IT','HA','HC'));



-- foreign key constraint on SID column
ALTER TABLE PRODUCT
ADD CONSTRAINT FK FOREIGN KEY(SID) REFERENCES SUPPLIER(SID); 



DROP TABLE PRODUCT;   -- Query to drop PRODUCT table





-- SUPPLIER TABLE

CREATE TABLE SUPPLIER
(SID CHAR(5), SNAME VARCHAR(30), SADD VARCHAR(50), SCITY VARCHAR(20), SPHONE CHAR(15), EMAIL VARCHAR(50));



-- INSERTING RECORDS IN SUPPLIER TABLE:

INSERT INTO SUPPLIER
VALUES ('S0001', 'YASH PRAJAPATI', 'WAKANER, NH 27', 'SURAT', '+918897234190', 'yash3@gmail.com');

INSERT INTO SUPPLIER
VALUES ('S0002', 'RESHMI CHHETRI', 'MES GATE ROAD', 'JORHAT', '+916697234190', 'reshc1@gmail.com');

INSERT INTO SUPPLIER
VALUES ('S0003', 'DHRUV PRAJAPATI', 'RING ROAD', 'MUMBAI', '+918897454178', 'dhruvp@yahoo.com');

INSERT INTO SUPPLIER
VALUES ('S0004', 'RAHUL CHETRI', 'PAN BAZAAR', 'GUWAHATI', '+913497234200', 'rahul12@yahoo.com');

INSERT INTO SUPPLIER
VALUES ('S0005', 'REETA CHHETRI', 'BTM LAYOUT STAGE-1', 'BANGALORE', '+912297233590', 'reeta@outlook.com');

INSERT INTO SUPPLIER
VALUES ('S0006', 'NAITIKA SHAH', 'HSR LAYOUT', 'BENGALURU', '+918897234340', 'snaitika@outlook.com');

INSERT INTO SUPPLIER
VALUES ('S0007', 'NCHUM SHITIRI', 'RIVER BELT COLONY', 'DIMAPUR', '+911197234190', 'nchums@gmail.com');

INSERT INTO SUPPLIER
VALUES ('S0008', 'RUBIKA AYEMI', 'PURANA BAZAAR', 'DELHI', '+918856784190', 'rubiaye@yahoo.com');

INSERT INTO SUPPLIER
VALUES ('S0009', 'BISWAJEET CHOUDHARY', 'KHANAPARA AH-1', 'GUWAHATI', '+913397234130', 'biswa2@outlook.com');

INSERT INTO SUPPLIER
VALUES ('S0010', 'PROBIN SINHA', 'NEHU LAST GATE', 'SHILLONG', '+916656234150', 'probins@yahoo.com');
 


SELECT * FROM SUPPLIER;    -- Query to display the entire SUPPLIER table



-------- ADDING SOME CONSTRAINTS TO THE SUPPLIER TABLE --------- 

-- primary key constraint on SID column
ALTER TABLE SUPPLIER
ADD CONSTRAINT SPK PRIMARY KEY(SID);



-- not null constraint on SID column
Alter table SUPPLIER
Alter Column SID CHAR(5) NOT NULL;



-- not null constraint on SNAME column 
Alter table SUPPLIER
Alter Column SNAME VARCHAR(30) NOT NULL;



-- not null constraint on SADD column
Alter table SUPPLIER
Alter Column SADD VARCHAR(50) NOT NULL;



-- default constraint on DCITY column
ALTER TABLE SUPPLIER
ADD CONSTRAINT DCITY DEFAULT 'DELHI' FOR SCITY;


-- unique constraint on SPHONE 
ALTER TABLE SUPPLIER
ADD CONSTRAINT UNIPH UNIQUE(SPHONE);



-- CUSTOMER TABLE

CREATE TABLE CUST
(CID CHAR(5), CNAME VARCHAR(30), ADDRESS VARCHAR(50), CITY VARCHAR(30), PHONE CHAR(15), EMAIL VARCHAR(50), DOB DATE);


-- INSERTING RECORDS IN CUSTOMER TABLE:

INSERT INTO CUST
VALUES ('C0001', 'ARYAN KUMAR', 'TEMPLE ROAD', 'BENGALURU', '+912234654879', 'arya@outlook.com', '13-MAY-1998');

INSERT INTO CUST
VALUES ('C0002', 'ALAIA P.', 'STATION ROAD', 'HYDERABAD', '+913334654879', 'aLaia@gmail.com', '09-NOV-1993');

INSERT INTO CUST
VALUES ('C0003', 'RUDRA KAPOOR', 'CHANDNI CHOWK', 'DELHI', '+912234653465', 'rud@yahoo.com', '23-FEB-1997');

INSERT INTO CUST
VALUES ('C0004', 'SAMAIRA KHANNA', 'AIRPORT ROAD', 'DEHRADUN', '+912454654830', 'sam@outlook.com', '16-JAN-1992');

INSERT INTO CUST
VALUES ('C0005', 'NATASHA SHRESTHA', 'A.T ROAD', 'GUWAHATI', '+915234654879', 'nats@gmail.com', '18-OCT-1991');

INSERT INTO CUST
VALUES ('C0006', 'SID PATEL', 'J.P ROAD, NH-1', 'AHMEDABAD', '+912454654879', 'sid@yahoo.com', '01-MAR-1994');

INSERT INTO CUST
VALUES ('C0007', 'KABIR SHARMA', 'UNITED COLONY', 'BENGALURU', '+912234234879', 'kab@gmail.com', '19-DEC-1993');

INSERT INTO CUST
VALUES ('C0008', 'PRIYA SINGH', 'NEAR HOWRAH METRO', 'KOLKATA', '+915534654879', 'priya@outlook.com', '05-JUN-1996');

INSERT INTO CUST
VALUES ('C0009', 'SNEHA GARODIA', 'OPPOSITE CITY TOWER', 'DELHI', '+913334654879', 'sneha@gmail.com', '24-SEP-1999');

INSERT INTO CUST
VALUES ('C0010', 'ANIKET SAHA', 'NEAR CHAR-MINAR ROAD', 'HYDERABAD', '+912334654845', 'anisaha@yahoo.com', '15-JULY-1997');




SELECT * FROM CUST;     -- Query to display the CUST table
DROP TABLE CUST;        -- Query to drop the CUST table





-------- ADDING SOME CONSTRAINTS TO THE CUST TABLE --------- 


-- not null constraint on CID column
Alter table CUST
Alter Column CID CHAR(5) NOT NULL;


-- primary key constraint on CID column 
ALTER TABLE CUST
ADD CONSTRAINT CPK PRIMARY KEY(CID);


-- not null constraint on CNAME column
Alter table CUST
Alter Column CNAME varchar(30) NOT NULL;


-- not null constraint on ADDRESS column
Alter table CUST
Alter Column ADDRESS varchar(50) NOT NULL;


-- not null constraint on CITY column
Alter table CUST
Alter Column CITY varchar(30) NOT NULL;


-- not null constraint on PHONE column
Alter table CUST
Alter Column PHONE char(15) NOT NULL;


-- not null constraint on EMAIL column
Alter table CUST
Alter Column EMAIL varchar(50) NOT NULL;


-- check constraint on DOB column
ALTER TABLE CUST
ADD CONSTRAINT CKDB CHECK (DOB < '01-JAN-2000');





-- ORDERS TABLE
CREATE TABLE ORDERS
(OID CHAR(5), ODATE DATE, CID CHAR(5), PID CHAR(5), OQTY INT);



-- INSERTING RECORDS IN ORDERS TABLE:


INSERT INTO ORDERS
VALUES ('O0001', '12-JAN-2021', 'C0001', 'P0001', 55);

INSERT INTO ORDERS
VALUES ('O0002', '01-SEP-2021', 'C0002', 'P0010', 10);

INSERT INTO ORDERS
VALUES ('O0003', '29-AUG-2021', 'C0003', 'P0003', 40);

INSERT INTO ORDERS
VALUES ('O0004', '03-JULY-2021', 'C0004', 'P0012', 20);

INSERT INTO ORDERS
VALUES ('O0005', '23-JUN-2021', 'C0004', 'P0005', 25);

INSERT INTO ORDERS
VALUES ('O0006', '04-FEB-2021', 'C0010', 'P0017', 40);

INSERT INTO ORDERS
VALUES ('O0007', '13-MAR-2021', 'C0007', 'P0004', 80);

INSERT INTO ORDERS
VALUES ('O0008', '19-MAY-2021', 'C0003', 'P0013', 30);

INSERT INTO ORDERS
VALUES ('O0009', '07-DEC-2021', 'C0005', 'P0009', 90);

INSERT INTO ORDERS
VALUES ('O0010', '18-OCT-2021', 'C0008', 'P0016', 50);




SELECT * FROM ORDERS;    -- Query to display the ORDERS table 

DROP TABLE ORDERS;       -- Query to drop ORDERS table




-------- ADDING SOME CONSTRAINTS TO THE ORDERS TABLE --------- 


-- not null constraint on OID column
Alter table ORDERS
Alter Column OID CHAR(5) NOT NULL;


-- primary key constraint on OID column
ALTER TABLE ORDERS
ADD CONSTRAINT OPK PRIMARY KEY(OID);


-- check constraint on OQTY column
ALTER TABLE ORDERS
ADD CONSTRAINT CKQTY CHECK (OQTY >= 1);


-- foreign key constraint on CID column
ALTER TABLE ORDERS
ADD CONSTRAINT CFK FOREIGN KEY(CID) REFERENCES CUST(CID); 


-- foreign key constraint on PID column
ALTER TABLE ORDERS
ADD CONSTRAINT PFK FOREIGN KEY(PID) REFERENCES PRODUCT(PID); 





-- STOCK TABLE
 
CREATE TABLE STOCK
(PID CHAR(5), SQTY INT, ROL INT, MOQ INT);  -- SQTY= STOCK QUANTITY, ROL = REORDER LEVEL, MOQ = MINIMUM ORDER QUANTITY




-- INSERTING RECORDS IN STOCK TABLE:


INSERT INTO STOCK
VALUES ('P0001', 700, 100, 10);

INSERT INTO STOCK
VALUES ('P0002', 400, 200, 5);

INSERT INTO STOCK
VALUES ('P0003', 600, 200, 7);

INSERT INTO STOCK
VALUES ('P0004', 300, 100, 10);

INSERT INTO STOCK
VALUES ('P0005', 500, 300, 8);

INSERT INTO STOCK
VALUES ('P0006', 800, 200, 15);

INSERT INTO STOCK
VALUES ('P0007', 400, 400, 5);

INSERT INTO STOCK
VALUES ('P0008', 1000, 500, 20);

INSERT INTO STOCK
VALUES ('P0009', 900, 200, 15);

INSERT INTO STOCK
VALUES ('P0010', 800, 100, 10);



SELECT * FROM STOCK;    -- Query to display the STOCK table

DROP TABLE STOCK;       -- Query to drop the STOCK table



-------- ADDING SOME CONSTRAINTS TO THE STOCK TABLE --------- 


-- foreign key constraint on PID column
ALTER TABLE STOCK
ADD CONSTRAINT SFK FOREIGN KEY(PID) REFERENCES PRODUCT(PID); 



-- check constraint on SQTY column
ALTER TABLE STOCK
ADD CONSTRAINT CKS CHECK (SQTY >= 0);




-- check constraint on ROL column 
ALTER TABLE STOCK
ADD CONSTRAINT CKR CHECK (ROL > 0);



-- check constraint on MOQ column
ALTER TABLE STOCK
ADD CONSTRAINT CKM CHECK (MOQ >= 5);





-- Two different queries to display only some columns(as per user requirements) from two(or more) different tables using JOINS:


-- QUERY 1
SELECT PRODUCT.PID, PDESC, CATEGORY, SUPPLIER.SNAME, SCITY
FROM PRODUCT
INNER JOIN SUPPLIER
ON PRODUCT.SID = SUPPLIER.SID;


-- QUERY 2
SELECT ORDERS.OID, ODATE, CUST.CNAME, CUST.ADDRESS, CUST.PHONE, PRODUCT.PDESC, PRODUCT.PRICE, ORDERS.OQTY
FROM ORDERS
INNER JOIN CUST
ON ORDERS.CID = CUST.CID
INNER JOIN PRODUCT
ON ORDERS.PID = PRODUCT.PID;





----- Using VIEW to create a bill for customers -----   



DROP VIEW BILL;     -- query to drop the bill 


CREATE VIEW BILL
 AS
(SELECT ORDERS.OID, ODATE, CNAME, ADDRESS, CITY, PHONE, PDESC, PRICE, OQTY, PRICE * OQTY AS 'AMOUNT' 
FROM ORDERS
INNER JOIN CUST
ON ORDERS.CID = CUST.CID
INNER JOIN PRODUCT
ON PRODUCT.PID = ORDERS.PID);

SELECT * FROM BILL;    -- query to display the bill 






---- STORED PROCEDURES ----

-- Use of procedure to add new records into respective tables:
 
-- 1. ADDSUPPLIER - Add a new record in the supplier table and display the details of the new supplier added,
--                  without automatic ID generation

  
CREATE PROCEDURE ADDSUPPLIER  @I AS CHAR(5),@N AS VARCHAR(30),@A AS VARCHAR(50),@C AS VARCHAR(30),@P AS CHAR(15),@E AS VARCHAR(50)
AS 
BEGIN
     set nocount on;    -- message stating number of records affected won't be displayed to the users 
	 INSERT INTO SUPPLIER
	 VALUES (@I, @N, @A, @C, @P, @E);

	 SELECT * FROM SUPPLIER WHERE SID = @I;

END;

-- Adding new supplier details:
ADDSUPPLIER 'S0011', 'ALINA B.', 'NEAR AIRPORT ROAD', 'BENGALURU', '+912233198762', 'alin@gmail.com' 


-- 2. ADDPRO - Add a new record in the PRODUCT table and display the details of the new product added,
--                  without automatic ID generation

CREATE PROCEDURE ADDPRO  @I AS CHAR(5), @PD AS VARCHAR(50), @P AS INT, @C AS VARCHAR(20), @SI AS CHAR(5)
AS 
BEGIN
     set nocount on;
	 INSERT INTO PRODUCT
	 VALUES (@I, @PD, @P, @C, @SI);

	 SELECT * FROM PRODUCT WHERE PID = @I;

END;

-- Adding new product details:
ADDPRO 'P0021', 'LG CPU 8-OCTA CORE', 5000, 'IT', 'S0003';



-- 3. ADDCUST - Add a new record in the CUST table and display the details of the new customer added,
--                  without automatic ID generation

CREATE PROCEDURE ADDCUST  @I AS CHAR(5),@N AS VARCHAR(30),@A AS VARCHAR(50),@C AS VARCHAR(30),@P AS CHAR(15),@E AS VARCHAR(50),@DB AS DATE
AS 
BEGIN
     set nocount on;
	 INSERT INTO CUST
	 VALUES (@I, @N, @A, @C, @P, @E, @DB);

	 SELECT * FROM CUST WHERE CID = @I;

END;


-- Adding new customer details:
ADDCUST 'C0011', 'SHREYA ADHIKARI', 'OPPOSITE HONDA MOTORS', 'KOLKATA', '+914335238765', 'shreya@gmail.com' ,'03-NOV-1995';



-- 4. ADDORDER - Add a new record in the ORDERS table and display the details of the new order added,
--                  without automatic ID generation

CREATE PROCEDURE ADDORDER @I AS CHAR(5), @CI AS CHAR(5), @PI AS CHAR(5), @OQ AS INT
AS
BEGIN 
       set nocount on;
	   INSERT INTO ORDERS
	   VALUES (@I, FORMAT(GETDATE(), 'd'), @CI, @PI, @OQ);

	   SELECT * FROM ORDERS WHERE OID = @I;

END;


-- Adding new order details:
ADDORDER  'O0011','C0001', 'P0004', 20; 



-- Function to generate IDs of all the entries of respective tables automatically

DROP FUNCTION AUTOGEN_ID;  -- query to drop the function

CREATE FUNCTION AUTOGEN_ID (@C AS CHAR(1), @X AS INT)   -- here, @c is a char which is user-defined, according to user's requirements
RETURNS CHAR(5)
AS 
BEGIN
      DECLARE @ID AS CHAR(5);
	  SELECT @ID  = CASE
	                    WHEN @X < 10 THEN CONCAT(@C, '000', @X)
						WHEN @X < 100 THEN CONCAT(@C, '00', @X)
						WHEN @X < 1000 THEN CONCAT(@C, '0', @X)
						WHEN @X < 10000 THEN CONCAT(@C, @X)
						ELSE 
						'NULL'

      END;
      RETURN @ID;

END;
 





------- Using SEQUENCE and PROCEDURE to generate IDs automatically ---------
 

-- 1. For PRODUCT table:

drop SEQUENCE MYSEQ1;   -- query to drop sequence
drop PROCEDURE INPROD;  -- query to drop procedure


-- Creating sequence for PRODUCT table:
CREATE SEQUENCE MYSEQ1
AS INT
START WITH 22
INCREMENT BY 1;


-- Creating procedure for PRODUCT table:
CREATE PROCEDURE INPROD  @PD AS VARCHAR(50), @P AS INT, @C AS VARCHAR(20), @SI AS CHAR(5)
AS
BEGIN
       DECLARE @I AS INT;
	   DECLARE @NO AS CHAR(5);

	   SET @I = (NEXT VALUE FOR MYSEQ1);
	   SET @NO = DBO.AUTOGEN_ID('P', @I);

	   INSERT INTO PRODUCT
	   VALUES(@NO, @PD, @P, @C, @SI);

	   SELECT * FROM PRODUCT;
END;

-- Adding a new product without PID:
INPROD 'TATA SWACH WATER PURIFIER', 6000, 'HA', 'S0010';




-- 2. For SUPPLIER table:

DROP SEQUENCE MYSEQ2;
DROP PROCEDURE INSUPP;

-- Creating sequence for SUPPLIER table:
CREATE SEQUENCE MYSEQ2
AS INT
START WITH 12
INCREMENT BY 1;


-- Creating procedure for SUPPLIER table:
CREATE PROCEDURE INSUPP @N AS VARCHAR(30),@A AS VARCHAR(50),@C AS VARCHAR(30),@P AS CHAR(15),@E AS VARCHAR(50)
AS
BEGIN
       DECLARE @I AS INT;
	   DECLARE @NO AS CHAR(5);

	   SET @I = (NEXT VALUE FOR MYSEQ2);
	   SET @NO = DBO.AUTOGEN_ID('S', @I);

	   INSERT INTO SUPPLIER
	   VALUES(@NO, @N, @A, @C, @P, @E);

	   SELECT * FROM SUPPLIER;
END;


-- Adding a new supplier without SID:
INSUPP 'JASMINE GOGOI', 'NEAR J.B. COLLEGE', 'HYDERABAD', '+912345645876', 'jas@outlook.com';




-- 3. For CUST table:

DROP SEQUENCE MYSEQ3;
DROP PROCEDURE INCUST;


-- Creating sequence for CUST table:
CREATE SEQUENCE MYSEQ3
AS INT
START WITH 12
INCREMENT BY 1;


-- Creating procedure for CUST table:
CREATE PROCEDURE INCUST @N AS VARCHAR(30),@A AS VARCHAR(50),@C AS VARCHAR(30),@P AS CHAR(15),@E AS VARCHAR(50),@DB AS DATE
AS
BEGIN
       DECLARE @I AS INT;
	   DECLARE @NO AS CHAR(5);

	   SET @I = (NEXT VALUE FOR MYSEQ3);
	   SET @NO = DBO.AUTOGEN_ID('C', @I);

	   INSERT INTO CUST
	   VALUES(@NO, @N, @A, @C, @P, @E, @DB);

	   SELECT * FROM CUST;
END;


-- Adding a new customer without CID:
INCUST 'KANIKA SHARMA', 'OPPOSITE OUTER RING ROAD', 'DELHI', '+915674328976', 'kanish@gmail.com', '15-OCT-1996';




-- 4. For ORDERS table:

DROP SEQUENCE MYSEQ4;
DROP PROCEDURE INORDER;

-- Creating sequence for ORDERS table:
CREATE SEQUENCE MYSEQ4
AS INT
START WITH 12
INCREMENT BY 1;


-- Creating procedure for ORDERS table:
CREATE PROCEDURE INORDER  @CI AS CHAR(5), @PI AS CHAR(5), @OQ AS INT
AS
BEGIN
       DECLARE @I AS INT;
	   DECLARE @NO AS CHAR(5);

	   SET @I = (NEXT VALUE FOR MYSEQ4);
	   SET @NO = DBO.AUTOGEN_ID('O', @I);

	   INSERT INTO ORDERS
	   VALUES(@NO, FORMAT(GETDATE(), 'd'), @CI, @PI, @OQ);

	   SELECT * FROM ORDERS;
END;


-- Adding a new order without OID:
INORDER 'C0011', 'P0009', 50;



-------- TRIGGERS TO UPDATE STOCK, PRODUCT AND ORDERS TABLES --------


-- 1. Trigger to update the stock when the product is sold:

CREATE TRIGGER TR_IN_ORD
ON ORDERS
FOR INSERT
AS
BEGIN
      SET NOCOUNT ON;  
      UPDATE STOCK
	  SET SQTY = SQTY - (SELECT OQTY FROM INSERTED)
	  WHERE PID = (SELECT PID FROM INSERTED);
END;

-- Query to UPDATE orders:
UPDATE ORDERS SET OQTY = 40
WHERE OID = 'O0004';


-- 2. Trigger to delete the order if the product is deleted from the inventory(DB):
 
DROP TRIGGER TR_DELL_PRO;
CREATE TRIGGER TR_DELL_PRO 
ON PRODUCT
FOR DELETE
AS
BEGIN
      DELETE FROM STOCK
	  WHERE PID = (SELECT PID FROM DELETED);
END;


-- Query to DELETE product:
DELETE FROM PRODUCT
WHERE PID = 'P0002';


-- 3. Trigger to UPDATE the stock when the order quantity has been updated.
Create trigger TR_UP_STK
ON ORDERS
FOR UPDATE
AS
BEGIN
      DECLARE @NQ AS INT;
	  DECLARE @OQ AS INT;

	  SET @NQ = (SELECT OQTY FROM INSERTED);
	  SET @OQ = (SELECT OQTY FROM DELETED);
	   
      UPDATE STOCK SET SQTY = SQTY + @OQ - @NQ
	  WHERE PID = (SELECT PID FROM INSERTED);
END;


-- checking if the above query is working or not:
UPDATE ORDERS SET OQTY = 200
WHERE OID = 'O0001';


-- 4. Trigger to check and update the stock when the order is placed:

DROP TRIGGER TR_IN_ORD;
CREATE TRIGGER TR_IN_ORD
ON ORDERS
FOR INSERT
AS
BEGIN
      Declare @QR AS INT;
	  DECLARE @QS AS INT;

	  SET @QR = (SELECT OQTY FROM INSERTED);
	  SET @QS = (SELECT SQTY FROM STOCK
	             WHERE PID = (SELECT PID FROM INSERTED));
      
	  IF @QS >= @QR
	       BEGIN
		        UPDATE STOCK SET SQTY = SQTY - @QR
				WHERE PID = (SELECT PID FROM INSERTED);

				COMMIT;
				PRINT('ORDER ACCEPTED');
            END;
			ELSE
			    BEGIN 
			          ROLLBACK;
				       PRINT('INSUFFICIENT QUANTITY: ORDER REJECTED');
				END;
END;


-- Adding values to check if the above trigger is working or not:
INORDER 'C0007', 'P0004', 900;