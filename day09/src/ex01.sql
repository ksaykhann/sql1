SELECT * from pizzeria where name = 'Pizza Hut';
UPDATE pizzeria 
SET rating = 4
WHERE name = 'Pizza Hut'
;
COMMIT;
SELECT * from pizzeria where name = 'Pizza Hut';

SELECT * from pizzeria where name = 'Pizza Hut';
UPDATE pizzeria 
SET rating = 3.6
WHERE name = 'Pizza Hut'
;
COMMIT;
SELECT * from pizzeria where name = 'Pizza Hut';
