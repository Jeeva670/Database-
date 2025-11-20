CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE scores (
    score_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    subject VARCHAR(50),
    score INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

INSERT INTO students (student_id, name)
VALUES 
(1, 'Arun'),
(2, 'Meena'),
(3, 'Vijay'),
(4, 'Priya');

INSERT INTO scores (student_id, subject, score)
VALUES
(1, 'Math', 78), (1, 'Science', 60), (1, 'English', 55),
(2, 'Math', 35), (2, 'Science', 45), (2, 'English', 50),
(3, 'Math', 90), (3, 'Science', 88), (3, 'English', 92),
(4, 'Math', 40), (4, 'Science', 30), (4, 'English', 45);


CREATE VIEW student_scores AS
SELECT s.student_id, s.name, sc.subject, sc.score
FROM students s
JOIN scores sc ON s.student_id = sc.student_id;

SELECT * FROM student_scores;

CREATE VIEW passed_students AS
SELECT student_id, name
FROM students
WHERE student_id NOT IN (
    SELECT student_id FROM scores WHERE score < 40
);


SELECT * FROM passed_students;
