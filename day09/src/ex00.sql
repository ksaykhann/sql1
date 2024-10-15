UPDATE pizzeria 
SET rating = 4
WHERE name = 'Pizza Hut'
;
COMMIT;
SELECT * from pizzeria where name = 'Pizza Hut';
