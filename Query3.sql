WITH MalePopulationRank AS (
    SELECT 
        zipcode,
        SUM(CASE WHEN gender = 'male' THEN population ELSE 0 END) AS male_population,
        ROW_NUMBER() OVER (ORDER BY SUM(CASE WHEN gender = 'male' THEN population ELSE 0 END) ASC) AS row_num
    FROM 
        `bigquery-public-data.census_bureau_usa.population_by_zip_2010`
    GROUP BY 
        zipcode
)
SELECT 
    zipcode,
    male_population
FROM 
    MalePopulationRank
WHERE 
    row_num <= 10;



