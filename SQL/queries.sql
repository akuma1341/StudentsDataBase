# 4. Запрос на вывод всех студентов с предметами и отметками.
SELECT first_name, last_name, birth_date, name, mark
FROM students,
     subjects,
     exam_marks
WHERE exam_marks.id_student = students.id_student
  AND exam_marks.id_subject = subjects.id_subject
ORDER BY first_name;

# 5. Вывод всех студентов, сдававших предметы с буквой М в названии.
SELECT first_name, last_name, name
FROM students
         JOIN exam_marks em ON students.id_student = em.id_student
         JOIN subjects s ON s.id_subject = em.id_subject
WHERE name LIKE '%m%';

# 6. Запрос на обновление фамилии студента, если он сдал 5 экзаменов выше 5.
UPDATE students
SET last_name = 'Changed'
WHERE id_student IN (
    SELECT id_student
    FROM exam_marks
    WHERE mark > 5
    GROUP BY id_student
    HAVING COUNT(id_student) = 5);

# 7. Запрос на удаление предмета, если 10 студентов получили отметки ниже 3.
DELETE
FROM subjects
WHERE id_subject IN (
    SELECT id_subject
    FROM exam_marks
    WHERE mark < 3
    GROUP BY id_subject
    HAVING COUNT(id_subject) = 10);

# 9. Запрос на вывод студентов, которые старше 17 лет и сдали больше 5 предметов с отметками выше 7, вывести по алфавиту по фамилии.
SELECT *
FROM students
WHERE id_student IN (
    SELECT id_student
    FROM exam_marks
    WHERE mark > 7
    GROUP BY id_student
    HAVING COUNT(id_subject) > 5)
HAVING DATEDIFF(CURDATE(), birth_date) DIV 365 > 17
ORDER BY last_name;

# 10. Если предмет кто-то сдал хотя бы один раз на любую отметку, продублировать данный предмет, изменив название.
INSERT INTO subjects (name)
SELECT CONCAT(name, '_added') AS name
FROM subjects
WHERE id_subject IN (
    SELECT id_subject
    FROM exam_marks
    GROUP BY id_subject
    HAVING COUNT(id_subject) >= 1);

# Union query
SELECT first_name AS name
FROM students
UNION
SELECT name
FROM subjects
ORDER BY name;

# Limit
SELECT first_name, last_name, birth_date, name, mark
FROM exam_marks
         JOIN students s ON s.id_student = exam_marks.id_student
         JOIN subjects s2 ON s2.id_subject = exam_marks.id_subject
LIMIT 4, 15