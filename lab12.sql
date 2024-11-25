-- List all courses, concatenating course_name and semester with a hyphen
SELECT course_name || ' - ' || semester AS course_and_semester
FROM courses;

-- Find all courses with a lab session on Friday, showing course_id, course_name, and lab_time
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE 'Fri%';


-- List all assignments with a due date after the current date
SELECT *
FROM assignments
WHERE due_date > DATE('now');


-- Count the number of assignments for each status
SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;


-- Find the course with the longest course_name
SELECT course_name, LENGTH(course_name) AS name_length
FROM courses
ORDER BY LENGTH(course_name) DESC
LIMIT 1;


-- Return a list of all course names in uppercase
SELECT UPPER(course_name) AS uppercase_course_name
FROM courses;


-- List the titles of all assignments due in September, regardless of year
SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%';



-- Find all assignments with NULL due_date
SELECT *
FROM assignments
WHERE due_date IS NULL;


-- List each course_id along with the total number of assignments associated with it
SELECT c.course_id, c.course_name, COUNT(a.id) AS total_assignments
FROM courses c
LEFT JOIN assignments a ON c.course_id = a.course_id
GROUP BY c.course_id, c.course_name;



-- Find all courses that do not have any assignments
SELECT c.course_id, c.course_name
FROM courses c
LEFT JOIN assignments a ON c.course_id = a.course_id
WHERE a.id IS NULL;



