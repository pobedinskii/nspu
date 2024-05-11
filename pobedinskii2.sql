SELECT * FROM `groups` WHERE code IN ('09.03.02', '44.03.05');
SELECT * FROM students WHERE birth_date BETWEEN '1999-11-05' AND '2000-12-04';
SELECT * FROM students WHERE birth_date BETWEEN '2000-01-01' AND '2000-12-31' AND birth_date NOT IN ('2000-01-01', '2000-12-04');
SELECT * FROM students WHERE `name` LIKE '%иван%';
SELECT * FROM students WHERE `name` REGEXP '[я]';
SELECT * FROM students WHERE `name` LIKE '%$$$%%' ESCAPE '$';
SELECT * FROM students WHERE group_id IS NULL;
SELECT * FROM students WHERE group_id IS NOT NULL;
SELECT * FROM students WHERE group_id IS NULL OR group_id = 1;
SELECT * FROM students WHERE group_id IS NULL AND has_docs = 1;
SELECT COUNT(group_id) FROM students;
SELECT COUNT(*) FROM students WHERE has_docs = 0;
SELECT SUM(hours / 36) FROM disciplines;
SELECT AVG(hours) FROM disciplines;
SELECT MAX(hours) FROM disciplines;
SELECT MIN(hours) FROM disciplines;
SELECT week_day, COUNT(group_id) FROM `schedule` GROUP BY week_day;
SELECT `name`, AVG(hours) FROM disciplines GROUP BY `name`;
SELECT week_day, group_id, COUNT(discipline_id) FROM `schedule` GROUP BY week_day, group_id;
/*
Кол-во занятий в каждой аудитории по дням недели
*/
SELECT week_day, classroom, COUNT(*) FROM `schedule` GROUP BY week_day, classroom;