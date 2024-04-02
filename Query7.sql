WITH AgeGroupPopulations AS (
    SELECT 
        CONCAT(minimum_age, '-', maximum_age) AS age_group,
        SUM(CASE WHEN gender = 'male' THEN population ELSE 0 END) AS male_population,
        SUM(CASE WHEN gender = 'female' THEN population ELSE 0 END) AS female_population,
        SUM(population) AS total_population
    FROM 
        `bigquery-public-data.census_bureau_usa.population_by_zip_2010`
    GROUP BY 
        age_group
    ORDER BY 
        total_population DESC
)
SELECT 
    age_group,
    male_population,
    female_population
FROM 
    AgeGroupPopulations
LIMIT 5;
