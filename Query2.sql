SELECT 
    SUM(CASE WHEN gender = 'male' THEN population ELSE 0 END) AS male_headcount,
    SUM(CASE WHEN gender = 'female' THEN population ELSE 0 END) AS female_headcount
FROM 
    `bigquery-public-data.census_bureau_usa.population_by_zip_2010`
WHERE 
    zipcode = '94085';

