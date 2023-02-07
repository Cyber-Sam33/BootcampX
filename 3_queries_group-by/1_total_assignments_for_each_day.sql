-- \i 3_queries_group-by/1_total_assignments_for_each_day.sql
SELECT
  day,
  count(*) as total_assignments
FROM
  assignments
GROUP BY
  day
ORDER BY
  day;

-- /first attempt
-- SELECT
--   COUNT(assignments.id) as total_assignments,
--   assignments.day
-- FROM
--   assignments
-- GROUP BY
--   assignments.day