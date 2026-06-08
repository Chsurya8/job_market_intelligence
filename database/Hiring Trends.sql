-- Top Hiring Companies
SELECT
    companyname,
    COUNT(*) AS total_jobs
FROM jobs
GROUP BY companyname
ORDER BY total_jobs DESC
LIMIT 10;

-- Top Hiring Locations
SELECT
    location,
    COUNT(*) AS total_jobs
FROM jobs
GROUP BY location
ORDER BY total_jobs DESC
LIMIT 10;