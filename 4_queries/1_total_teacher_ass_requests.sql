-- \i 4_queries/1_total_teacher_ass_requests.sql
SELECT
  count(assistance_requests.*) as total_assistances,
  teachers.name
FROM
  assistance_requests
  JOIN teachers ON teachers.id = teacher_id
WHERE
  name = 'Waylon Boehm'
GROUP BY
  teachers.name;

-- first attempt
-- SELECT
--   assistance_requests as total_assistances,
--   teachers.name as name
-- FROM
--   assistance_requests
--   JOIN teachers.id = teacher_id
-- WHERE
--   name IN ('Waylon Boehm')