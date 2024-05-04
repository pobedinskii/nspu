SELECT * FROM disciplines;
SELECT DISTINCT direction FROM `groups`;
SELECT * FROM disciplines WHERE short_name = 'ЭП';
SELECT * FROM students WHERE group_id IS NULL;
SELECT * FROM students WHERE group_id = 1 OR group_id = 2;
SELECT * FROM schedule WHERE (lesson_number = 2 AND week_day = 'Понедельник') OR (lesson_number = 3 AND week_day = 'Суббота');
/*
Ищем расписание, где 2 пара в понедельник или 3 пара в субботу
*/