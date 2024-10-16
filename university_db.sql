-- 1. Select all students birth on 1990
SELECT *
FROM `students`
WHERE `date_of_birth` >= "1990-01-01"
and `date_of_birth` <= "1990-12-31"

-- 2. Select all courses worth more than 10 credits (479)
SELECT * 
FROM `courses` 
WHERE `cfu` > 10

-- 3. Select all students over than 30 years old
SELECT *
FROM `students`
WHERE `date_of_birth` > "1994-10-16"