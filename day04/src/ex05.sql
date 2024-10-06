SELECT
    pv.pizzeria_id
FROM person_visits pv
JOIN person p ON pv.person_id = p.id AND p.name = 'Andrey'
WHERE
NOT EXISTS (
    SELECT
        1
    FROM person_order po2
    JOIN menu m2 on m2.id = po2.menu_id
    where po2.person_id = p.id and m2.pizzeria_id = pv.pizzeria_id
)
ORDER BY 
    name
;


SELECT
    pv.pizzeria_id
FROM person_visits pv
JOIN person p ON p.id = pv.person_id 
WHERE p.name = 'Andrey'
EXCEPT 
SELECT
    m.pizzeria_id
FROM menu m
JOIN person_order po ON po.menu_id = m.id
JOIN person p ON p.id = po.person_id
WHERE p.name = 'Andrey'
;