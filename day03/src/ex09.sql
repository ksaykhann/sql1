SELECT DISTINCT
    person.name
FROM person
JOIN person_order ON person_order.person_id = person.id
JOIN menu ON menu.id = person_order.menu_id
WHERE (menu.pizza_name = 'pepperoni pizza')
AND (person.gender = 'female')
INTERSECT
SELECT DISTINCT
    person.name
FROM person
JOIN person_order ON person_order.person_id = person.id
JOIN menu ON menu.id = person_order.menu_id
WHERE (menu.pizza_name = 'cheese pizza')
AND (person.gender = 'female')
ORDER BY
    name
;

SELECT 
    person.name,
    menu.pizza_name
FROM person
JOIN person_order as po ON po.person_id = person.id
JOIN menu ON menu.id = po.menu_id
WHERE person.gender = 'female'
AND menu.pizza_name = 'pepperoni pizza'
AND EXISTS (SELECT 
        1
    FROM person_order spo
    JOIN menu sm ON sm.id = spo.menu_id
    WHERE sm.pizza_name = 'cheese pizza'
    AND spo.person_id = po.person_id)
;