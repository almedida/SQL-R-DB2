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
  FROM PETRESCUE
  WHERE ANIMAL ='Dog';

--the rounded cost of each rescue
SELECT ROUND(COST) "ROUNDED_COST"
  FROM PETRESCUE;

--the length of each animal name
SELECT ANIMAL, LENGTH(ANIMAL) "LENGTH_OF_NAME"
  FROM PETRESCUE;

--the animal name in each rescue in uppercase
SELECT UPPER(ANIMAL)
  FROM PETRESCUE;

--the animal name in each rescue in uppercase without duplications
SELECT DISTINCT(UPPER(ANIMAL)) AS "ANIMAL"
  FROM PETRESCUE;

--all the columns from the PETRESCUE table, where the animal(s) 
--rescued are cats. Use cat in lower case in the query
SELECT *
  FROM PETRESCUE
  WHERE LOWER(ANIMAL) LIKE LOWER('%CAT%');

--the day of the month when cats have been rescued.
SELECT ANIMAL, DAY(RESCUEDATE) AS "DAY_RESCUED"
  FROM PETRESCUE
  WHERE UPPER(ANIMAL) LIKE UPPER('%cat%');

--the number of rescues on the 5th month
SELECT SUM(QUANTITY) AS "TOTAL_RESCUE_ON_5TH_MONTH"
  FROM PETRESCUE
  WHERE MONTH(RESCUEDATE) = '05';

-- the number of rescues on the 14th day of the month.
SELECT SUM(QUANTITY) AS "TOTAL_RESCUED ON 14TH DAY"
  FROM PETRESCUE
  WHERE DAY(RESCUEDATE) = '14';

--the third day from each rescue.
SELECT RESCUEDATE + 3
  FROM PETRESCUE;

--the length of time the animals have been rescued
SELECT (CURRENT_DATE - RESCUEDATE) AS "RESCUE_LENGTH (YMMDD)"
  FROM PETRESCUE;
