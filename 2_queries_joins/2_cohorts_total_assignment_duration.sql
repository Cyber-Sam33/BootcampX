-- \i 2_queries_joins/2_cohorts_total_assignment_duration.sql
SELECT
  sum(assignment_submissions.duration) as total_duration
FROM
  assignment_submissions
  JOIN students ON students.id = student_id
  JOIN cohorts ON cohorts.id = cohort_id
WHERE
  cohorts.name = 'FEB12';

-- first attempt
-- SELECT
--   sum(assignments.duration) as total_duration
-- FROM
--   assignments
--   JOIN assignments ON students.cohort_id = assignments.name
-- WHERE
--   students.cohort_id = 'FEB12';