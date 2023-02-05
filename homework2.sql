SELECT COUNT(DISTINCT iatacode)
FROM airport;
			 			 
SELECT code
FROM country
WHERE LENGTH(code) = (SELECT MAX(LENGTH(code)) FROM country);

SELECT Max(CHAR_LENGTH(code)) FROM country;


SELECT code, LENGTH(code) AS code_length
FROM country
ORDER BY code_length DESC
LIMIT 1;


SELECT 
    country, 
    COUNT(*) AS num_airports 
FROM 
    airport 
GROUP BY 
    country 
ORDER BY 
    num_airports DESC 
LIMIT 1;


SELECT country.name, SUM(island.area) AS total_area
FROM country, island, geo_island
WHERE island.name = geo_island.island AND geo_island.country = country.code
GROUP BY country.name
ORDER BY total_area DESC
LIMIT 1;


SELECT name FROM country
WHERE 79426450 < population and population < 794264508


 
