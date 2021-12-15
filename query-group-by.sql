1. Contare quanti iscritti ci sono stati ogni anno
SELECT count(`id`), YEAR(`enrolment_date`) as `anno-di-iscrizione`
FROM `students`  
GROUP BY YEAR(`enrolment_date`)

2. Contare gli insegnanti che hanno l ufficio nello stesso edificio
SELECT COUNT(`id`),`office_address` as `indirizzo-di-lavoro`
FROM `teachers`
GROUP BY `office_address`

3. Calcolare la media dei voti di ogni appello d esame
SELECT `exam_id` AS `id-appello`, AVG(`vote`) AS `media-voti`
FROM `exam_student`
GROUP BY `exam_id`

4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT `department_id`, COUNT(`name`) AS `corsi`
FROM `degrees`
GROUP BY `department_id`
