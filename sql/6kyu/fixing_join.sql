SELECT
  j.job_title,
  (ROUND(AVG(j.salary),2))::float as average_salary,
  COUNT(p.id) as total_people,
  (ROUND(SUM(j.salary),2))::float as total_salary
  FROM job AS j
     INNER JOIN people AS p ON p.id = j.people_id
  GROUP BY j.job_title
  ORDER BY average_salary DESC
  LIMIT 100;
