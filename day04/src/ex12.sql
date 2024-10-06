INSERT INTO person_order
SELECT 
    generate_series(
        (SELECT MAX(id) + 1 FROM person_order),
        (SELECT MAX(id) FROM person_order) + (SELECT count(*) FROM person)) as id,
    generate_series(
        1,
        (SELECT MAX(id) FROM person)) as person_id,
    (SELECT menu.id FROm menu WHERE menu.pizza_name = 'greek pizza') as menu_id,
    '2022-02-25' as order_date
    

;
