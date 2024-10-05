SELECT 
    order_date as action_date,
    person.name
FROM person_order
JOIN person ON person.id = person_order.person_id
INTERSECT
SELECT
    visit_date as action_date,
    person.name
FROM person_visits
JOIN person ON person.id = person_visits.person_id
ORDER BY
    action_date ASC,
    name DESC
;

