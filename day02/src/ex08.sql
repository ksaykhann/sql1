SELECT 
    order_date,
    person.name || '(age:' || person.age || ')' as person_info
FROM person_order 
NATURAL JOIN (SELECT
                person.id as person_id,
                person.age,
                person.name FROM person) as person
ORDER BY
    order_date,
    person_info
;

