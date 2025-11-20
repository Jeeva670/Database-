SQL Views for Student Score Analysis
Overview

This project focuses on creating SQL views to simplify student performance analysis. By abstracting complex queries into reusable views, data retrieval becomes more efficient, consistent, and easier to maintain.

Features

Consolidation of student and score data using JOIN operations.

Creation of a student_scores view for simplified access to subject-wise marks.

Creation of a passed_students view using subqueries to filter students who passed all subjects.

Improved query readability and optimized database performance.

SQL Objects Created
1. student_scores View

A view that joins the students and scores tables to provide a combined dataset of student information and their subject-wise scores.

2. passed_students View

A view that identifies students who scored above the passing threshold in all subjects by filtering out records with scores below 40.

How to Use

Run the table creation and data insertion commands.

Create the two views using the provided SQL scripts.

Query the views using:

SELECT * FROM student_scores;
SELECT * FROM passed_students;

Learning Outcomes

Understanding the purpose and advantages of SQL views.

Applying JOIN operations for effective relational data handling.

Using subqueries to filter data based on specific conditions.

Enhancing database efficiency through abstraction and reusable query logic.

Conclusion

This task demonstrates the role of SQL views in simplifying analysis, reducing redundancy, and improving database performance by encapsulating complex operations into manageable virtual tables.
