SELECT
    CASE 
        WHEN person.name IS NULL THEN '-'
        ELSE person.name
    END as person_name,
    person_visits.visit_date,
    CASE 
        WHEN pizzeria.name IS NULL THEN '-'
        ELSE pizzeria.name
    END as pizzeria_name
FROM person
LEFT JOIN person_visits ON person_visits.person_id = person.id 
AND person_visits.visit_date BETWEEN '2022-01-01' AND '2022-01-03'
FULL JOIN pizzeria ON pizzeria.id = person_visits.pizzeria_id 
AND person_visits.visit_date BETWEEN '2022-01-01' AND '2022-01-03'
ORDER BY
    person_name,
    visit_date,
    pizzeria_name 
    

;

