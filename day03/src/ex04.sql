SELECT
    menu.pizza_name,
    pizzeria.name as pizzeria_name,
    menu.price
FROM menu
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id 
WHERE menu.pizza_name IN ('pepperoni pizza', 'mushroom pizza')
ORDER BY 
    pizza_name,
    pizzeria_name
;