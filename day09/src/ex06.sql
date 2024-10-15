BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

SELECT SUM(rating) from pizzeria where name = 'Pizza Hut';
SELECT SUM(rating) from pizzeria where name = 'Pizza Hut';
COMMIT;
SELECT SUM(rating) from pizzeria where name = 'Pizza Hut';

BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
UPDATE pizzeria 
SET rating = 1
WHERE name = 'Pizza Hut'
;
COMMIT;
SELECT SUM(rating) from pizzeria where name = 'Pizza Hut';
