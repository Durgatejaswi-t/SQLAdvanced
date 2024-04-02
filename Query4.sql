SELECT 
    CONCAT(minimum_age, '-', maximum_age) AS age_group,
    SUM(population) AS male_population
FROM 
    `bigquery-public-data.census_bureau_usa.population_by_zip_2010`
WHERE 
    zipcode = '94085' AND gender = 'male'
GROUP BY 
    age_group
ORDER BY 
    male_population DESC
LIMIT 1;
