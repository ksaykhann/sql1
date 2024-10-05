WITH dates AS (
    SELECT missing_date::date
    FROM generate_series('2022-01-01'::date, '2022-01-10'::date, '1 DAY') as missing_date
)
SELECT dates.missing_date FROM dates
LEFT JOIN person_visits ON (person_visits.person_id = 1 OR person_visits.person_id = 2) 
AND person_visits.visit_date = missing_date 
WHERE person_visits.visit_date IS NULL
;