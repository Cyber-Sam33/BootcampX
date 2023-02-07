-- \i 3_queries_group-by/3_cohorts_eiteenplus_students.sql
SELECT
  cohorts.name as cohort_name,
  count(students.*) AS student_count
FROM
  cohorts
  JOIN students ON cohorts.id = cohort_id
GROUP BY
  cohort_name
HAVING
  count(students.*) >= 18
ORDER BY
  student_count;

-- first attemp
-- SELECT
--   cohorts.name as cohort_name,
--   count(students.cohort_id) as student_count
-- FROM
--   cohorts
--   JOIN students ON students.cohort_id = cohorts.id
-- GROUP BY
--   cohort_name
-- HAVING
--   count(students.cohort_id) >= 18
-- ORDER BY
--   student_count;