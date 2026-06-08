--CTE
WITH city_salary AS (
    SELECT
        location,
        AVG(avg_salary) AS avg_sal
    FROM jobs
    GROUP BY location
)
SELECT *
FROM city_salary
ORDER BY avg_sal DESC;
--Window Function
SELECT
    companyname,
    ROUND(AVG(avg_salary),2) AS avg_salary,
    RANK() OVER(
        ORDER BY AVG(avg_salary) DESC
    ) AS salary_rank
FROM jobs
GROUP BY companyname;
--Dense Rank
SELECT
    location,
    ROUND(AVG(avg_salary),2) AS avg_salary,
    DENSE_RANK() OVER(
        ORDER BY AVG(avg_salary) DESC
    ) AS city_rank
FROM jobs
GROUP BY location;
--Above Average Salary Jobs
SELECT
    title,
    companyname,
    avg_salary
FROM jobs
WHERE avg_salary >
(
    SELECT AVG(avg_salary)
    FROM jobs
);