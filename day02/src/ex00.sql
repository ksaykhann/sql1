SELECT
    id as object_id, pizza_name as object_name from menu
UNION ALL
SELECT 
    id as obfect_id, name as object_name from person
ORDER BY 
    object_id ,
    object_name 
;
