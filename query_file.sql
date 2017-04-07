-- The is a SQL script
-- To execute:
-- mysql -u testuser -p < query_file.sql > results_file, then enter the password
use testdb
INSERT INTO states (id, state, population) VALUES (NULL, 'new', '731449');
SELECT * FROM states;
SELECT state, population FROM states ORDER BY population DESC;
