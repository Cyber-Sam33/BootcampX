-- \i 3_queries_group-by/4_total_assignment_each_cohort.sql
SELECT
  cohorts.name as cohort,
  count(assignment_submissions.*) as total_submissions
FROM
  assignment_submissions
  JOIN students ON students.id = student_id
  JOIN cohorts ON cohorts.id = cohort_id
GROUP BY
  cohorts.name
ORDER BY
  total_submissions DESC;

-- First attempt
-- SELECT
--   cohorts.name as cohort,
--   count(assignment_submissions.*) as total_submissions
-- FROM
--   cohorts,
--   assignment_submissions
--   JOIN students ON cohorts.id = cohort_id
--   JOIN assignment_submissions ON students.id = student_id
-- GROUP BY
--   cohort
-- ORDER BY
--   total_submissions;