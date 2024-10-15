SELECT 
    person.address,
    ROUND(MAX(age::numeric) - (MIN(age::numeric) / MAX(age::numeric)), 2) AS formula,
    ROUND(AVG(age::numeric), 2) AS average,
    (CASE WHEN (ROUND(MAX(age::numeric) - (MIN(age::numeric) / MAX(age::numeric)), 2)) > (ROUND(AVG(age::numeric), 2)) THEN 'TRUE'
    ELSE 'FALSE'
    END) AS comprasion
FROM person
GROUP BY 
    person.address
ORDER BY 
    person.address

;