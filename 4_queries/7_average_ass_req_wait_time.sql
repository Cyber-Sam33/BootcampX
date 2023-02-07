-- \i 4_queries/7_average_ass_req_wait_time.sql
SELECT
  AVG(started_at - created_at) as average_wait_time
FROM
  assistance_requests;