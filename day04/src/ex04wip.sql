WITH
    male as (
        SELECT pz.name as pizzeria_name
        FROM person_order po
        JOIN person p
            ON p.id = po.person_id 
        JOIN menu m
            ON m.id = po.menu_id
        JOIN pizzeria pz
            ON pz.id = m.pizzeria_id
        
        WHERE gender = 'male'
    ),

    female as (
        SELECT pz.name as pizzeria_name
        FROM person_order po
        JOIN person p
            ON p.id = po.person_id 
        JOIN menu m
            ON m.id = po.menu_id
        JOIN pizzeria pz
            ON pz.id = m.pizzeria_id
        WHERE gender = 'female'
    ),

    male_only as (
        SELECT * FROM male
        EXCEPT 
        SELECT * FROM female
    ),

    female_only as (
        SELECT * FROM female
        EXCEPT 
        SELECT * FROM male
    )

SELECT *
FROM male_only
UNION
SELECT *
FROM female_only
ORDER BY 1

;
