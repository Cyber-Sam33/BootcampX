-- \i 1_queries/4_students_without_gmail.sql
SELECT
  name,
  email,
  id,
  cohort_id
FROM
  students
WHERE
  email NOT IN ('gmail.com')
  AND phone IS NULL