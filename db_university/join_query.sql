-- Select all students enrolled in the 'Corso di Laurea in Economia'
SELECT `students`.`id` as `id`, `students`.`name` as `first_name`,`students`.`surname` as `last_name`,`degrees`.`name` as `course`
FROM `students` 
JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = "Corso di Laurea in Economia"
ORDER BY `students`.`name` ASC

-- Select all 'Corsi di Laurea Magistrale' in Neuroscienze department.
SELECT `degrees`.`name` as `all_course`, `departments`.`name` as `department` 
FROM `departments`
JOIN `degrees` 
ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze'

