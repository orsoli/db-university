-- 1. Select all students birth on 1990
SELECT *
FROM `students`
WHERE `date_of_birth` >= "1990-01-01"
AND `date_of_birth` <= "1990-12-31"

-- 2. Select all courses worth more than 10 credits
SELECT * 
FROM `courses` 
WHERE `cfu` > 10

-- 3. Select all students over than 30 years old
SELECT *
FROM `students`
WHERE `date_of_birth` <= "1994-10-16"

-- 4. Select all first semester-courses in the first year of any deegre program
SELECT * 
FROM `courses` 
WHERE `period` = "I semestre"
AND `year` = 1

-- 5. Select all exams that take place  (after 14:00) on 2020-06-20
SELECT * 
FROM `exams`
WHERE `date` = "2020-06-20" 
AND `hour` > "14:00:00";

-- 6. Select all master's degree programs
SELECT *
FROM `degrees` 
WHERE `level` = "magistrale"

-- 7. How many departments make up university
SELECT COUNT(*)
FROM `departments`

-- 8. How many teachers do not have phone nr
SELECT COUNT(*)
FROM `teachers`
WHERE `phone` is NULL

-- 9. Insert a new record into the students' table with your own data (for the degree_id field, enter a random value)
INSERT INTO `students`(
    `id`,
    `degree_id`, 
    `name`, 
    `surname`, 
    `date_of_birth`, 
    `fiscal_code`, 
    `enrolment_date`, 
    `registration_number`, 
    `email`
    )
VALUES (
    18569, 
    1, 
    "Orsol", 
    "Filaj", 
    "1988-11-24", 
    "ORSFLJ34B200Z100", 
    "2008-10-10", 
    234, 
    "filajorsol@gmail.com"
    )

-- 10. Change Professor Pietro Rizzo's office number to 126
UPDATE `teachers` 
SET `office_number` = 126
WHERE `name` = "Pietro"
AND `surname` = "Rizzo"

-- 11. Delete the student record created in point 9 from the students' table
DELETE FROM `students`
WHERE `id` = 18569
