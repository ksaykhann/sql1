SELECT 
    person.name as person_name,
    menu.pizza_name,
    pizzeria.name as pizzeria_name
FROM person
JOIN person_order ON person_order.person_id = person.id
JOIN menu ON menu.id = person_order.menu_id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
WHERE person_order.person_id = person.id
ORDER BY 
    person_name,
    pizza_name,
    pizzeria_name
;

