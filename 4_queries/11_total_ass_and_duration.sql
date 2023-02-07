-- \i 4_queries/11_total_ass_and_duration.sql
SELECT
  day,
  count(*) as number_of_assignments,
  sum(duration) as duration
FROM
  assignments
GROUP BY
  day
ORDER BY
  day;

-- first attempt
-- SELECT
--   assignments.day,
--   Count(assignments) as number_of_assisgnemnts,
--   Count(assignments.duration) as duration
-- FROM
--   assignments
--   JOIN assistance_requests ON assignments.id = assignment_id
-- GROUP BY
--   assignments.id
-- ORDER BY
--   assignments.day;