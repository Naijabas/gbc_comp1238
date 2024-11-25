-- Display the title and due_date of assignments for the course COMP1234
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';

-- Find the earliest assignment due date in the assignments table
SELECT MIN(due_date) AS earliest_due_date
FROM assignments;


-- Find the latest assignment due date in the assignments table
SELECT MAX(due_date) AS latest_due_date
FROM assignments;


-- Find the title and course_id of assignments due on 2024-10-08
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';


-- Display the title and due_date of assignments due in October 2024
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';


-- Find the most recent due_date of assignments with a status of "Completed"
SELECT MAX(due_date) AS most_recent_completed_date
FROM assignments
WHERE status = 'Completed';



-- Find the total number of assignments with a status of "Not Started"
SELECT COUNT(*) AS not_started_count
FROM assignments
WHERE status = 'Not Started';


-- Find the course_id and course_name of courses that have lab sessions on Tuesday
SELECT course_id, course_name
FROM courses
WHERE lab_time LIKE 'Tue%';


-- Join the courses table with the assignments table on course_id
SELECT c.course_id, c.course_name, a.title, a.due_date
FROM courses c
JOIN assignments a
  ON c.course_id = a.course_id;
  
  
  
  
  
 -- Some comment that is ignored by the DB
SELECT * 
FROM courses;