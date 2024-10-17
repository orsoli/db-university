-- Count how many enrollments there have been each year
SELECT YEAR(`enrolment_date`) as `year`, COUNT(`enrolment_date`) as `ernolment_sum`
FROM `students` 
GROUP BY  YEAR(`enrolment_date`) ORDER BY YEAR ASC