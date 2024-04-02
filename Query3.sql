SELECT 
    CONCAT(minimum_age, '-', maximum_age) AS age_group,
    SUM(population) AS total_population
FROM 
    `bigquery-public-data.census_bureau_usa.population_by_zip_2010`
WHERE 
    zipcode = '94085'
GROUP BY 
    age_group
ORDER BY 
    total_population DESC
LIMIT 1;


