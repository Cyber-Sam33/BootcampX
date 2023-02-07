-- \i 4_queries/8_tot_cohort_ass_duration.sql
SELECT
  cohorts.name as cohort,
  sum(completed_at - started_at) as total_duration
FROM
  assistance_requests
  JOIN students ON students.id = student_id
  JOIN cohorts on cohorts.id = cohort_id
GROUP BY
  cohorts.name
ORDER BY
  total_duration;

-- first attempt
-- SELECT
--   cohorts.name as cohort,
--   (started_at - created_at) + (completed_at - started_at) as total_duration
-- FROM
--   assistance_requests
--   JOIN students ON students.id = assistance_requests.student_id
--   JOIN cohorts ON cohorts.id = cohort_id
-- GROUP BY
--   cohorts.name
-- ORDER BY
--   total_duration;