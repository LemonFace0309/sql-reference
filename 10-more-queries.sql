SELECT * FROM users
WHERE first_name LIKE 'Ma%';

SELECT COUNT(id) FROM locations;
SELECT MIN(id) FROM locations;
SELECT MAX(id) FROM locations;
SELECT SUM(id) FROM locations;
SELECT AVG(id) FROM locations;

SELECT cities.name, COUNT(locations.id) FROM cities
LEFT JOIN locations ON locations.city_name = cities.name
GROUP BY cities.name;

SELECT cities.name, locations.street, COUNT(locations.id) FROM cities
LEFT JOIN locations ON locations.city_name = cities.name
GROUP BY cities.name, locations.street
ORDER BY cities.name;

SELECT cities.name, COUNT(locations.id) FROM cities
LEFT JOIN locations ON locations.city_name = cities.name
GROUP BY cities.name
HAVING COUNT(locations.id) > 1; -- HAVING is for filtering with aggregation functions (like how WHERE is used for raw data)
