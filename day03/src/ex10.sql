SELECT
    pers1.name as first_person_name,
    pers2.name as sec_person_name,
    pers1.address
FROM person as pers1
JOIN person as pers2 ON pers2.address = pers1.address AND pers1.id > pers2.id
WHERE pers1.id != pers2.id
ORDER BY 
    pers1.name,
    pers2.name,
    address

;