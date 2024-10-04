SELECT 
    id,
    name,
    case 
        when person.age >= 10 and person.age <= 20 then 'interval #1'
        when person.age > 20 and person.age < 24 then 'interval #2'
        else 'interval #3'
    end as interval_info 
FROM person
ORDER BY interval_info 
;
