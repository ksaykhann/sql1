SELECT 
    * FROM person
CROSS JOIN pizzeria
WHERE person <> pizzeria
ORDER BY
    person.id ASC,
    pizzeria.id ASC
 ;