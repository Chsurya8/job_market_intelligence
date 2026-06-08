-- Average Salary
SELECT AVG(avg_salary)
FROM jobs;

-- Highest Paying Cities
SELECT
    location,
    AVG(avg_salary)
FROM jobs
GROUP BY location
ORDER BY AVG(avg_salary) DESC;
--Highest Paying Companies
SELECT
    companyname,
    ROUND(AVG(avg_salary),2) AS avg_salary
FROM jobs
GROUP BY companyname
HAVING COUNT(*) > 5
ORDER BY avg_salary DESC
LIMIT 10;