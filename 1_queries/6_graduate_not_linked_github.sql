-- \i 1_queries/6_graduate_not_linked_github.sql
SELECT
  name,
  email,
  phone
FROM
  students
WHERE
  github IS NULL
  AND end_date IS NOT NULL