SELECT 
    (select name from person where person.id = po.person_id) as name,
    menu_id,
    order_date,
    (select 
    CASE 
        WHEN name = 'Denis' THEN true
        ELSE false
    end as check_name from person where person.id = po.person_id)
FROM person_order as po
WHERE order_date = '2022-01-07' 
and (menu_id = 13 or menu_id = 14 or menu_id = 18) 

;