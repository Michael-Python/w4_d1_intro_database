DROP TABLE characters;

CREATE TABLE characters (
    id  SERIAL,
    name VARCHAR(255),
    darkside BOOLEAN,
    age INT
);

-- CREATE

INSERT INTO characters (name, darkside, age) VALUES ('Obi-Wan Kenobi', false, 27);
INSERT INTO characters (name, darkside, age) VALUES ('Anakin Skywalker', false, 19);
INSERT INTO characters (name, darkside, age) VALUES ('Darth Maul', true, 32);
INSERT INTO characters (name, darkside, age) VALUES ('Yoda', false, NULL);
-- same as INSERT INTO characters (name, darkside) VALUES ('Yoda', false);

-- READ specific things
-- SELECT name, age FROM characters;

-- READ number of items
-- SELECT COUNT(*) FROM characters;


-- READ for all with conditions returned
-- SELECT * FROM characters WHERE darkside = false;

-- UPDATE affects all when there is no WHERE, WHERE needs a condition
-- this can update more than one thing via the () notation
-- make sure that the 'WHERE' column value is unique
-- UPDATE characters SET (name, darkside) = ('Darth Vader', true) WHERE age = 19;

INSERT INTO characters (name, darkside, age) VALUES ('Luke Skywalker', false, 17);
UPDATE characters SET age = 65 WHERE name = 'Obi-Wan Kenobi';

-- DELETE everything
-- DELETE * FROM characters 

-- DELETE with conditions
DELETE FROM characters WHERE name = 'Darth Maul';

INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);

-- READ for all SELECT * FROM characters;
SELECT * FROM characters