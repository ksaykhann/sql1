SELECT 
    gd.generated_date as missing_date
FROM v_generated_dates as gd
LEFT JOIN person_visits as pv ON pv.visit_date = gd.generated_date
WHERE pv.visit_date IS NULL
;
