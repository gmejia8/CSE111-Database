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
/***********************3******************************/
/*Orgs remove events */
DELETE FROM events
    WHERE e_id = 29082
/***********************4******************************/
/*Orgs push nofications */
UPDATE notifications
    SET
    (n_id, n_type) = (SELECT o_id, o_name FROM organizations WHERE o_id = 48 )
WHERE EXISTS(
    SELECT *
    FROM organizations AS T1, notifications as T2
    WHERE T1.o_id = T2.n_id
)
/*********************5***************************/
/*Organizations stock the store */ 

INSERT INTO store (
                      item_desc,
                      item_name,
                      item_cost,
                      item_quantity,
                      item_id
                  )
                  VALUES (
                      (SELECT o_name 
FROM organizations 
WHERE o_name LIKE 'Basic%' ),
                      'Flask',
                      20,
                      10,
                      1
                  );
/***********************6***********************/
/*Find the number of items in the inventory of Bobcat Pantry*/ 
SELECT SUM(item_quantity)
FROM store
WHERE item_desc LIKE 'Bobcat Pantry%';

/***********************7***********************/
/*Student purchases item by filtering */
SELECT item_name , item_desc
FROM store 
WHERE item_name LIKE 'Shirt%' 
<<<<<<< HEAD
/***********************7***********************/
/*Student purchases item by filtering */
=======

/**********************8************************/
/*orgs remove items from the store*/
DELETE FROM store
    WHERE item_id = 2
	
/***********************9***********************/
/*students purchase items*/
UPDATE store
set item_quantity = (Select item_quantity
					WHERE item_id = 3
					item_quantity - 1)
					
/***********************10***********************/
>>>>>>> 824afb4344d8dde69a3e9b7c644c5fb6363d9e30
/***********************20**************/
/***FInd the number of items in the store uploaded by Bobcat Pantry **/
SELECT COUNT(item_desc)
FROM store 
WHERE item_desc LIKE 'Bobcat Pantry'
/***********************20**************/
/***FInd the number of items in the store uploaded by Bobcat Pantry **/
SELECT COUNT(item_desc)
FROM store 
WHERE item_desc LIKE 'Bobcat Pantry'