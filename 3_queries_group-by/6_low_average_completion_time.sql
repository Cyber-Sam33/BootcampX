-- \i 3_queries_group-by/6_low_average_completion_time.sql
SELECT
  students.name as student,
  avg(assignment_submissions.duration) as average_assignment_duration,
  avg(assignments.duration) as average_estimated_duration
FROM
  students
  JOIN assignment_submissions ON student_id = students.id
  JOIN assignments ON assignments.id = assignment_id
WHERE
  end_date IS NULL
GROUP BY
  student
HAVING
  avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY
  average_assignment_duration;

-- first attempt
-- SELECT
--   students.name as student,
--   AVG(assignment_submissions.duration) as average_assignment_duration,
--   AVG(assignment_submissions.duration) as average_estimated_duration
-- FROM
--   assignment_submissions
--   JOIN students ON students.id = student_id
--   JOIN cohorts ON cohorts.id = cohort_id
-- WHERE
--   end_date IS NULL
-- GROUP BY
--   student
-- ORDER BY
--   average_assignment_duration;