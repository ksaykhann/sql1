BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

SELECT * from pizzeria where name = 'Pizza Hut';
SELECT * from pizzeria where name = 'Pizza Hut';
COMMIT;
SELECT * from pizzeria where name = 'Pizza Hut';

BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
UPDATE pizzeria 
SET rating = 3.6
WHERE name = 'Pizza Hut'
;
COMMIT;
SELECT * from pizzeria where name = 'Pizza Hut';
