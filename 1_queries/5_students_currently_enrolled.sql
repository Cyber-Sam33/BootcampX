-- \i 1_queries/5_students_currently_enrolled.sql
SELECT
  name,
  id,
  cohort_id
FROM
  students
WHERE
  end_date IS NULL
ORDER BY
  cohort_id;