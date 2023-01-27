CREATE TABLE contacts (
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE
);

INSERT INTO contacts (name, phone)
VALUES ('billybob', '8781213455');
 
-- error
INSERT INTO contacts (name, phone)
VALUES ('billybob', '8781213455');