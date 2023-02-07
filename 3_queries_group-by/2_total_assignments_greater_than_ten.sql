-- \i 3_queries_group-by/2_total_assignments_greater_than_ten.sql
SELECT
  day,
  count(*) as total_assignments
FROM
  assignments
GROUP BY
  day
HAVING
  count(*) >= 10
ORDER BY
  day;

-- First attempt
-- SELECT
--   day,
--   count(* >= 10) as total_assignments
-- FROM
--   assignments
-- GROUP BY
--   day
-- ORDER BY
--   day;