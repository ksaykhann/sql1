CREATE VIEW v_price_with_discount AS
SELECT
    person.name as name,
    menu.pizza_name as pizza_name,
    menu.price,
    round(menu.price - menu.price * 0.1) as discount_price
FROM person
LEFT JOIN person_order ON person_order.person_id = person.id
LEFT JOIN menu ON menu.id = person_order.menu_id

ORDER BY
    name,
    pizza_name
;