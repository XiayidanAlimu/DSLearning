-- Task 0: Drop the table INSTRUCTOR from the database in case it already exists, so that we start from a clean state.
DROP TABLE INSTRUCTOR;

-- Task 1: Create the INSTRUCTOR table as defined above. Have the ins_id be the primary key, and ensure the lastname and firstname are not null.
-- (Hint: ins_id is of type INTEGER, country of type CHAR(2), and rest of the fields VARCHAR)
CREATE TABLE INSTRUCTOR
(
ins_id INTEGER PRIMARY KEY NOT NULL,
lastname VARCHAR(15) NOT NULL,
firstname VARCHAR(15) NOT NULL,
city VARCHAR(40),
country CHAR(2)
);

-- Task 2A: Insert one row into the INSTRUCTOR table for the the instructor Rav Ahuja.
-- (Hint: values for the character fields require a singe quotation mark (') before and after each value)
INSERT INTO INSTRUCTOR
(ins_id, lastname, firstname, city, country) VALUES ('1', 'Ahuja', 'Rav', 'Toronto', 'CA');

-- Task 2B: Insert two rows at once in the INSTRUCTOR table for instructors Raul Chong and Hima Vasudevan.
-- (Hint: list the values for the second row after the first row)
INSERT INTO INSTRUCTOR
(ins_id, lastname, firstname, city, country) VALUES 
('2', 'Chong', 'Raul', 'Toronto', 'CA'),
('3', 'Vasudevan', 'Hima', 'Toronto', 'CA');

-- Task 3: Select all rows from the INSTRUCTOR table.
select * from INSTRUCTOR;

-- Task 3B: Select the firstname, lastname and country where the city is Toronto
select firstname, lastname from INSTRUCTOR where city = 'Toronto';

-- Task 4: Update the row for Rav Ahuja and change his city to Markham.
UPDATE INSTRUCTOR SET city = 'Markham' where firstname = 'Rav' and lastname = 'Ahuja';

-- Task 5: Delete the row for Raul Chong from the table.
DELETE from INSTRUCTOR where firstname = 'Raul' and lastname = 'Chong';

-- Task 5B: Retrieve all rows in the INSTRUCTOR table
select * from INSTRUCTOR;