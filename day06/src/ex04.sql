CREATE UNIQUE INDEX idx_menu_unique ON menu (pizzeria_id, pizza_name);




SET enable_indexscan = ON;
SET enable_bitmapscan = ON;
SET enable_seqscan = OFF;

EXPLAIN ANALYSE
SELECT 
    pizzeria_id,
    pizza_name
FROM menu
