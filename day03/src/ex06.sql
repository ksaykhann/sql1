SELECT DISTINCT
    menu.pizza_name as pizza_name,
    pizzeria.name as pizzeria_name
FROM menu
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
JOIN person_order ON person_order.menu_id = menu.id
JOIN person ON person.id = person_order.person_id 
WHERE person.name IN ('Denis', 'Anna')
ORDER BY
    pizza_name,
    pizzeria_name
;


