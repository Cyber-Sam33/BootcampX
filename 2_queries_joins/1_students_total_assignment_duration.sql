-- \i 2_queries_joins/1_students_total_assignment_duration.sql
SELECT
  sum(assignment_submissions.duration) as total_duration
FROM
  assignment_submissions
  JOIN students ON students.id = student_id
WHERE
  students.name = 'Ibrahim Schimmel';

-- first attempt
-- SELECT
--   SUM(assignment_submissions.duration) as total_duration
-- WHERE
--   student.name = 'Ibrahim Schimmel'
-- FROM
--   students
--   JOIN assignment_submissions