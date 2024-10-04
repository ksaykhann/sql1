SELECT (select name from person where person_id = id) as name, menu_id, order_date 
FROM person_order WHERE order_date = '2022-01-07' and (menu_id = 13 or menu_id = 14 or menu_id = 18);