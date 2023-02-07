-- \i 4_queries/6_cohort_longest_assistance.sql
SELECT
  cohorts.name,
  avg(completed_at - started_at) as average_assistance_time
FROM
  assistance_requests
  JOIN students ON students.id = assistance_requests.student_id
  JOIN cohorts ON cohorts.id = cohort_id
GROUP BY
  cohorts.name
ORDER BY
  average_assistance_time DESC
LIMIT
  1;

-- First att
-- SELECT
--   cohorts.name,
--   avg(completed_at - started_at) as average_assistance_time
-- FROM
--   assistance_requests
--   JOIN students ON students.id = assistance_requests.student_id
--   JOIN cohorts ON cohorts.id = cohort_id
-- GROUP BY
--   cohorts.name
-- ORDER BY
--   MAX(average_assistance_time);