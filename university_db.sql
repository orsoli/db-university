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