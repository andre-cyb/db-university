1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.`degree_id`AS`id-corso`, `students`.`id`AS`id-studente`, `degrees`.`name`AS`corso`
FROM `students` 
INNER JOIN `degrees`
ON `students`.`degree_id`=`degrees`.`id`
WHERE `degrees`.`name`LIKE"%laurea in economia%"

2. Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT `degrees`.`department_id`AS`id-dipartimento-del-corso`, `degrees`.`id`, `degrees`.`name`AS`nome-del-corso`, `departments`.`name`AS`dipartimento`
FROM `degrees`
INNER JOIN `departments`
ON `degrees`.`department_id`= `departments`.`id`
WHERE `departments`.`name`LIKE"%di neuroscienze%"

3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT  `courses`.`id`AS `id-corso`, `courses`.`name` AS`nome-corso`, `teachers`.`id`AS `id-insegnante`, `teachers`.`name`,  `teachers`.`surname`
FROM `courses`
INNER JOIN `course_teacher` ON `courses`.`id`= `course_teacher`.`course_id`
INNER JOIN `teachers` ON `teachers`.`id` = `course_teacher`.`teacher_id`
WHERE `teachers`.`name`= "fulvio" AND `teachers`.`surname`= "amato"

4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il
relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT  *
FROM `students` 
LEFT JOIN `degrees`ON `students`.`degree_id`=`degrees`.`id`
LEFT JOIN `departments` ON `degrees`.`department_id`=`departments`.`id`  
ORDER BY `students`.`name` ASC, `students`.`surname` ASC

5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT * 
FROM `courses`
LEFT JOIN `degrees` ON `courses`.`degree_id`=`degrees`.`id`
LEFT JOIN `course_teacher` on `course_teacher`.`teacher_id`=`courses`.`id`
LEFT JOIN `teachers` ON `teachers`.`id`= `course_teacher`.`teacher_id`

6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica
SELECT `departments`.`name`, `course_teacher`.`teacher_id`, `teachers`.`name`, `teachers`.`surname`
FROM `courses`
LEFT JOIN `degrees` ON `courses`.`degree_id`=`degrees`.`id`
LEFT JOIN `departments` ON `degrees`.`department_id`=`departments`.`id`
LEFT JOIN `course_teacher`ON `courses`.`id`=`course_teacher`.`course_id`
LEFT JOIN `teachers` ON `teachers`.`id`=`course_teacher`.`teacher_id`
WHERE `departments`.`name` LIKE "%di matematica"


7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per
superare ciascuno dei suoi esami



