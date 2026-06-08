--Top 10 Hiring Companies
SELECT
    companyname,
    COUNT(*) AS total_jobs
FROM jobs
GROUP BY companyname
ORDER BY total_jobs DESC
LIMIT 10;
---------------------------------------------------------------
--Top 10 Hiring Cities
SELECT
    location,
    COUNT(*) AS total_jobs
FROM jobs
GROUP BY location
ORDER BY total_jobs DESC
LIMIT 10;
----------------------------------------------------------------
--Jobs by Experience Level
SELECT
    experience,
    COUNT(*) AS total_jobs
FROM jobs
GROUP BY experience
ORDER BY total_jobs DESC;