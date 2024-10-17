-- Select all students enrolled in the 'Corso di Laurea in Economia'
SELECT `students`.`id` as `id`, 
        `students`.`name` as 
        `first_name`,`students`.
        `surname` as `last_name`,
        `degrees`.`name` as `course`
FROM `students` 
JOIN `degrees` 
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = "Corso di Laurea in Economia"
ORDER BY `students`.`name` ASC

-- Select all 'Corsi di Laurea Magistrale' in Neuroscienze department.
SELECT `degrees`.`name` as `all_course`, 
       `departments`.`name` as `department` 
FROM `departments`
JOIN `degrees` 
ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze'

-- Select all courses taught by Fulvio Amato (id=44)
SELECT `teachers`.`id` as `id`, 
       `teachers`.`name` as `FirstName`, 
       `teachers`.`surname` as `LastName`, 
       `courses`.`name` as `Course`
FROM `teachers`
JOIN `course_teacher` 
ON `teachers`.`id` = `course_teacher`.`teacher_id`
JOIN `courses` 
ON `courses`.`id` = `course_teacher`.`course_id`
WHERE `teachers`.`id` = 44

-- Select all students with data on the degree program they are enrolled in and the corresponding department, ordered alphabetically by last name and first name
SELECT `students`.`surname` as `Last Name`, 
        `students`.`name` as `First Name`, 
        `degrees`.`name` as `Course`, 
        `departments`.`name` as `Department`
FROM `students` 
LEFT JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
LEFT JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
ORDER BY `students`.`surname` ASC;

-- Select all degree programs with their respective courses and teachers
SELECT `teachers`.`id` as `id`, `teachers`.
       `name` as `First Name`, 
       `teachers`.`surname` as `Last Name`, 
       `degrees`.`name` as `Degree`, 
       `courses`.`name` as `Course`
FROM `courses`
LEFT JOIN `course_teacher` 
ON `courses`.`id` = `course_teacher`.`course_id`
LEFT JOIN `teachers`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
LEFT JOIN `degrees`
ON `degrees`.`id` = `courses`.`degree_id`
ORDER BY `teachers`.`name` ASC;
