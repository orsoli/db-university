-- Count how many enrollments there have been each year
SELECT YEAR(`enrolment_date`) as `year`, COUNT(`enrolment_date`) as `ernolment_sum`
FROM `students` 
GROUP BY  YEAR(`enrolment_date`) ORDER BY YEAR ASC

-- Count how many teachers have an office in the same building
SELECT `office_address` as `office_building`, COUNT(`office_address`) as `teacher_nr`
FROM `teachers`
GROUP BY `office_address` ORDER BY `office_address` ASC;

-- Calculate the average grades for each exam session
SELECT `exam_id` as `exam`, AVG(`vote`) as `avg_vote` 
FROM `exam_student`
GROUP BY `exam_id`
ORDER BY `exam_id` ASC

-- Count how many degree programs there are for each department
SELECT `department_id` as `id_depart`, COUNT(`department_id`) as `degree_program` 
FROM `degrees`
GROUP BY `department_id`
ORDER BY `department_id` ASC