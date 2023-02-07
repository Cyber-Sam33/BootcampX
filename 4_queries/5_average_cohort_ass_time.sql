-- \i 4_queries/5_average_cohort_ass_time.sql
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
  average_assistance_time;

-- SELECT
--   cohorts.name as name,
--   AVG(completed_at - started_at) as average_assistance_time
-- FROM
--   assistance_requests;
-- JOIN students ON students.id = student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- ORDER BY
--   cohorts.name