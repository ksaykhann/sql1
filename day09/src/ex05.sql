BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

SELECT SUM(rating) from pizzeria where name = 'Pizza Hut';
SELECT SUM(rating) from pizzeria where name = 'Pizza Hut';
COMMIT;
SELECT SUM(rating) from pizzeria where name = 'Pizza Hut';

BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
UPDATE pizzeria 
SET rating = 1
WHERE name = 'Pizza Hut'
;
COMMIT;
SELECT SUM(rating) from pizzeria where name = 'Pizza Hut';
