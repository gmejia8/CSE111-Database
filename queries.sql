/* Create The Table */ 
CREATE TABLE calendar (
    cal_id   INT,
    cal_date DATE
);

CREATE TABLE events (
    e_id   INTEGER,
    e_name STRING,
    e_date DATE
);

CREATE TABLE notifications (
    n_id   DOUBLE,
    n_type STRING,
    n_date DATE
);

CREATE TABLE organizations (
    o_id       INTEGER,
    o_name     STRING,
    o_password STRING
);

CREATE TABLE store (
    item_id       INTEGER,
    item_quantity INTEGER,
    item_cost     INTEGER,
    item_name     STRING,
    item_desc     INTEGER
);

CREATE TABLE students (
    s_id       INTEGER,
    s_name     STRING,
    s_password STRING
);
/***********************1******************************/
/*How many events happened/name in "California Room" */ 
SELECT COUNT(e_name)
FROM events 
WHERE e_name LIKE "California%" 

/***********************2******************************/
/*Add an event ("Half Dome") to a student calendar*/

UPDATE calendar 
SET cal_id = (SELECT e_id FROM events WHERE e_name LIKE 'Half%'),
    cal_date = (SELECT e_date FROM events WHERE e_name LIKE 'Half%')
    
