-- \i 1_queries/3_students_no-email_no-cell.sql
SELECT
  name,
  id,
  cohort_id
FROM
  students
WHERE
  email IS NULL
  OR phone IS NULL;