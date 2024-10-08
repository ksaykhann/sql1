SET enable_indexscan = ON;
SET enable_bitmapscan = ON;
SET enable_seqscan = OFF;

EXPLAIN ANALYZE 
SELECT 
    menu.pizza_name,
    pizzeria.name
FROM menu
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id;

SELECT 
    menu.pizza_name,
    pizzeria.name
FROM menu
JOIN pizzeria ON pizzeria.id = menu.pizzeria_id;
