SELECT *
FROM owners o
FULL OUTER JOIN vehicles v
ON o.id = v.owner_id;

SELECT o.first_name, o.last_name, COUNT(v.id) AS vehicle_count
FROM owners o
LEFT JOIN vehicles v
ON o.id = v.owner_id
GROUP BY o.first_name, o.last_name
ORDER BY vehicle_count;

SELECT o.first_name, o.last_name, ROUND(AVG(v.price)) AS average_price, COUNT(v.id) AS vehicle_count
FROM owners o
JOIN vehicles v
ON o.id = v.owner_id
GROUP BY o.first_name, o.last_name
HAVING COUNT(v.id) > 1 AND ROUND(AVG(v.price)) > 10000
ORDER BY vehicle_count DESC;