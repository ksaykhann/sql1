CREATE INDEX idx_person_name ON person (upper(name))
;

SET enable_indexscan = ON;

SET enable_bitmapscan = ON;

SET enable_seqscan = OFF;


EXPLAIN ANALYZE 
SELECT name FROM person WHERE upper(name) = 'ANDREY'