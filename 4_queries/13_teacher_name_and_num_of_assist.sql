-- \i 4_queries/13_teacher_name_and_num_of_assist.sql
SELECT
  teachers.name as teacher,
  cohorts.name as cohort,
  count(assistance_requests) as total_assistances
FROM
  teachers
  JOIN assistance_requests ON teacher_id = teachers.id
  JOIN students ON student_id = students.id
  JOIN cohorts ON cohort_id = cohorts.id
WHERE
  cohorts.name = 'JUL02'
GROUP BY
  teachers.name,
  cohorts.name
ORDER BY
  teacher;

-- first attemp
-- SELECT
--   DISTINCT teachers.name as teacher,
--   cohorts.name as cohort,
--   sum(assistance_requests) as total_assistances
-- FROM
--   teachers
--   JOIN assistance_requests ON teacher_id = teachers.id
--   JOIN students ON student_id = students.id
--   JOIN cohorts ON cohort_id = cohorts.id
-- WHERE
--   cohorts.name = 'JUL02'
-- ORDER BY
--   teacher;