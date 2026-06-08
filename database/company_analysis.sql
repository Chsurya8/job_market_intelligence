-- Highest Rated Companies
SELECT
    companyname,
    AVG(aggregaterating)
FROM jobs
GROUP BY companyname
ORDER BY AVG(aggregaterating) DESC;

-- Most Reviewed Companies
SELECT
    companyname,
    SUM(reviewscount)
FROM jobs
GROUP BY companyname
ORDER BY SUM(reviewscount) DESC;