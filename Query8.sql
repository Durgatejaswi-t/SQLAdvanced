SELECT 
    zipcode,
    SUM(CASE WHEN gender = 'female' THEN population ELSE 0 END) AS female_population
FROM 
    `bigquery-public-data.census_bureau_usa.population_by_zip_2010`
GROUP BY 
    zipcode
ORDER BY 
    female_population DESC
LIMIT 5;
