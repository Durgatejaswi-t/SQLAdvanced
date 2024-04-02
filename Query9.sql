SELECT 
    zipcode,
    SUM(CASE WHEN gender = 'male' THEN population ELSE 0 END) AS male_population
FROM 
    `bigquery-public-data.census_bureau_usa.population_by_zip_2010`
GROUP BY 
    zipcode
ORDER BY 
    male_population ASC
LIMIT 10;
