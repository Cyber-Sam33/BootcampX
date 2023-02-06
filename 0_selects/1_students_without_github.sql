-- \i 0_selects/1_students_without_github.sql
SELECT
  id,
  name,
  email,
  cohort_id
FROM
  Students
WHERE
  github IS NULL
ORDER BY
  cohort_id;