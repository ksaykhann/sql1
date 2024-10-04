(SELECT
    name as object_name from person
ORDER BY object_name)
UNION ALL
(SELECT 
    pizza_name as object_name from menu
ORDER BY object_name)
;
