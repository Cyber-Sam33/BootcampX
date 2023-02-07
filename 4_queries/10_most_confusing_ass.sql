-- \i 4_queries/10_most_confusing_ass.sql
SELECT
  assignments.id,
  name,
  day,
  chapter,
  count(assistance_requests) as total_requests
FROM
  assignments
  JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY
  assignments.id
ORDER BY
  total_requests DESC;

--   Order ID	Customer  ID	Product	Quantity
--     1	      101	           Apple	  5
--     2	      102	          Banana	  3
--     3	      101	          Orange	  2
--     4	      103	          Apple	    1
-- 5	102	Orange	4 
-- first att
-- SELECT
--   assignments.id,
--   assignments.name,
--   assignments.day,
--   assignments.chapter,
--   count(assistance_requests.*) as total_requests
-- FROM
--   assignments
--   JOIN assistance_requests ON assignments.id = assignment_id
-- GROUP BY
--   total_requests