WITH pizza_orders_table AS (
SELECT
    person_id,
    person.name,
    menu.pizza_name,
    price,
    pizzeria_id,
    pizzeria.name AS pizzeria_name
FROM person_order
JOIN menu ON menu.id = person_order.menu_id
JOIN person ON person.id = person_order.person_id
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id
)


SELECT
    pizza_orders_table.name,
    pizza_orders_table.pizza_name,
    pizza_orders_table.price,
    (price - price * (person_discounts.discount / 100)) AS discount_price,
    pizza_orders_table.pizzeria_name
FROM person_discounts
JOIN pizza_orders_table ON person_discounts.person_id = pizza_orders_table.person_id
    AND person_discounts.pizzeria_id = pizza_orders_table.pizzeria_id
ORDER BY 
    name,
    pizza_name
    

;