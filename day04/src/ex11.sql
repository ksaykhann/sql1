UPDATE menu
SET price = (
    SELECT menu.price * 0.9
    FROM menu
    WHERE menu.pizza_name = 'greek pizza')
WHERE menu.pizza_name = 'greek pizza'
;
