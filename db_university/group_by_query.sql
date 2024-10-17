-- Count how many enrollments there have been each year
SELECT YEAR(`enrolment_date`) as `year`, COUNT(`enrolment_date`) as `ernolment_sum`
FROM `students` 
GROUP BY  YEAR(`enrolment_date`) ORDER BY YEAR ASC

-- Count how many teachers have an office in the same building
SELECT `office_address` as `office_building`, COUNT(`office_address`) as `teacher_nr`
FROM `teachers`
GROUP BY `office_address` ORDER BY `office_address` ASC;