-- \i 4_queries/12_teacher_name_assist.sql
SELECT
  DISTINCT teachers.name as teacher,
  cohorts.name as cohort
FROM
  teachers
  JOIN assistance_requests ON teacher_id = teachers.id
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id
WHERE
  cohorts.name = 'JUL02'
ORDER BY
  teacher;

-- First attempt
-- SELECT
--   teachers.name,
--   cohorts.name as cohort
-- FROM
--   teachers
--   JOIN assistance_requests ON teachers.id = teacher_id
--   JOIN students ON students.id = student_id
--   JOIN cohorts on cohorts.id = cohort_id
-- WHERE
--   cohorts.name = 'JUL02'
-- ORDER BY
--   teachers.name
-- LIMIT
--   1;