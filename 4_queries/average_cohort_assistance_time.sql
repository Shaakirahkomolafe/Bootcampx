SELECT cohorts.name as name, avg(completed_at - started_at) as average_assistance_duration
FROM  assistance_requests
JOIN students ON  student_id = assistance_requests.student_id 
JOIN cohorts ON  cohorts_id = cohorts.id
ORDER BY name;