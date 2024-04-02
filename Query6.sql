SELECT 
    zipcode,
    SUM(CASE WHEN gender = 'male' THEN population ELSE 0 END) AS male_population,
    SUM(CASE WHEN gender = 'female' THEN population ELSE 0 END) AS female_population,
    SUM(population) AS total_population
FROM 
    `bigquery-public-data.census_bureau_usa.population_by_zip_2010`
GROUP BY 
    zipcode
ORDER BY 
    total_population DESC
LIMIT 1;
