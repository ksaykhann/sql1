SELECT 
    pizzeria.name
FROM pizzeria
FULL JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
WHERE NOT EXISTS (SELECT 
    id
    FROM pizzeria
    WHERE person_visits.pizzeria_id = pizzeria.id)

;

SELECT 
    pizzeria.name
FROM pizzeria
FULL JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
WHERE pizzeria.id  NOT IN (SELECT 
                            pizzeria_id
                            FROM person_visits)
;
