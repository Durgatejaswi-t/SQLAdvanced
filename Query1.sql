SELECT 
    SUM(population) AS total_population
FROM 
    `bigquery-public-data.census_bureau_usa.population_by_zip_2010`
WHERE 
    zipcode = '94085';
