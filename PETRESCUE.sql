-- Drop the PETRESCUE table in case it exists
DROP TABLE PETRESCUE;

-- Create the PETRESCUE table 
CREATE TABLE PETRESCUE (
    ID INTEGER NOT NULL,
    ANIMAL VARCHAR(20),
    QUANTITY INTEGER,
    COST DECIMAL(6,2),
    RESCUEDATE DATE,
    PRIMARY KEY (ID)
  );
	
-- Insert sample data into PETRESCUE table
INSERT
  INTO PETRESCUE
  VALUES 
	(1,'Cat',9,450.09,'2018-05-29') ,
	(2,'Dog',3,666.66,'2018-06-01'),
	(3,'Dog',1,100.00,'2018-06-04'),
	(4,'Parrot',2,50.00,'2018-06-04'),
	(5,'Dog',1,75.75,'2018-06-10'),
	(6,'Hamster',6,60.60,'2018-06-11'),
	(7,'Cat',1,44.44,'2018-06-11'),
	(8,'Goldfish',24,48.48,'2018-06-14'),
	(9,'Dog',2,222.22,'2018-06-15');
	
-- Retrieve all data from RESCUE table
SELECT *
  FROM PETRESCUE;
  
--Calculate the total numer of all animals in the RESCUE table
SELECT SUM(QUANTITY) 
AS "TOTAL_NO_OF_ANIMALS"
  FROM PETRESCUE;
  
--the total cost of all animal rescues in the PETRESCUE table
SELECT SUM(COST) AS "TOTAL_COST_OF ANIMALS"
FROM PETRESCUE;

--the maximum quantity of animals rescued
SELECT MAX(QUANTITY) AS "MAX_QTY_OF_ANIMALS_RESCUED"
FROM PETRESCUE;

-- the average cost of animals rescued
SELECT AVG(COST) AS "AVG_COST"
FROM PETRESCUE;

--the average cost of rescuing a dog
SELECT AVG(COST/QUANTITY) AS "AVG_COST_PER DOG"
FROM PETRESCUE WHERE ANIMAL ='Dog';
