SELECT DISTINCT
    m1.pizza_name,
    p1.name AS pizzeria_name_1,
    p2.name AS pizzeria_name_2,
    m1.price
FROM menu as m1
JOIN menu as m2 ON m2.pizza_name = m1.pizza_name 
AND m2.pizzeria_id < m1.pizzeria_id AND m1.price = m2.price 
JOIN pizzeria as p1 ON p1.id = m1.pizzeria_id
JOIN pizzeria as p2 ON p2.id = m2.pizzeria_id
ORDER BY
    pizza_name

;
