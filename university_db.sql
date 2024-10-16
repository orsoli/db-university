-- 1. Select all students birth on 1990
SELECT *
FROM `students`
WHERE `date_of_birth` >= "1990-01-01"
and `date_of_birth` <= "1990-12-31"