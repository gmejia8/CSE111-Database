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
/******Adding Data*****/
INSERT INTO calendar (
                         cal_date,
                         cal_id
                     )
                     VALUES (
                         '2019-09-24',
                         29289
                     ),
                     (
                         '2019-09-23',
                         29223
                     ),
                     (
                         '2019-10-01',
                         26793
                     ),
                     (
                         '2019-10-01',
                         26789
                     ),
                     (
                         '2019-09-25',
                         26000
                     );
INSERT INTO events (
                       e_date,
                       e_name,
                       e_id
                   )
                   VALUES (
                       '2019-09-11',
                       'ACS 120',
                       29082
                   ),
                   (
                       '2019-09-16',
                       'Private Dining',
                       29058
                   ),
                   (
                       '2019-09-17',
                       'California Room',
                       29068
                   ),
                   (
                       '2019-09-18',
                       'Private Dining',
                       29125
                   ),
                   (
                       '2019-09-18',
                       'California Room',
                       29149
                   ),
                   (
                       '2019-09-20',
                       'California Room',
                       29013
                   ),
                   (
                       '2019-09-23',
                       'Half Dome',
                       29223
                   ),
                   (
                       '2019-09-21',
                       'California Room',
                       29013
                   ),
                   (
                       '2019-10-01',
                       'SAAC',
                       29082
                   ),
                   (
                       '2019-09-28',
                       'Courtyard',
                       28916
                   ),
                   (
                       '2019-09-23',
                       'California Room',
                       29216
                   ),
                   (
                       '2019-10-16',
                       'SSB 130',
                       29089
                   ),
                   (
                       '2019-10-10',
                       'Lake Yosemite',
                       29158
                   ),
                   (
                       '2019-10-10',
                       'SAAC-207',
                       30337
                   ),
                   (
                       '2019-10-09',
                       'SSB',
                       29088
                   ),
                   (
                       '2019-10-07',
                       'Quad',
                       30317
                   ),
                   (
                       '2019-10-16',
                       'KL 390',
                       29247
                   ),
                   (
                       '2019-10-07',
                       'COB2 Quad',
                       30317
                   ),
                   (
                       '2019-10-07',
                       'SE2 324',
                       30433
                   ),
                   (
                       '2019-10-01',
                       'SAAC 219',
                       29083
                   ),
                   (
                       '2019-10-17',
                       'COB2 390',
                       30273
                   ),
                   (
                       '2019-10-10',
                       'SAAC 207',
                       30337
                   ),
                   (
                       '2019-10-09',
                       'SSB 130',
                       29088
                   ),
                   (
                       '2019-10-21',
                       'Pavilion',
                       30455
                   ),
                   (
                       '2019-10-21',
                       'COB2 390',
                       30541
                   ),
                   (
                       '2019-11-08',
                       'KL 362',
                       30704
                   ),
                   (
                       '2019-10-30',
                       'SSB 130',
                       29092
                   ),
                   (
                       '2019-10-25',
                       'Half Dome',
                       30336
                   ),
                   (
                       '2019-10-23',
                       'SSB 130',
                       29090
                   ),
                   (
                       '2019-11-26',
                       'SSM 317',
                       30647
                   ),
                   (
                       '2019-11-21',
                       'SE 270',
                       30810
                   ),
                   (
                       '2019-11-13',
                       'Gallo Gym',
                       30264
                   ),
                   (
                       '2019-11-12',
                       'California Room',
                       30772
                   );
INSERT INTO notifications (
                              n_date,
                              n_type,
                              n_id
                          )
                          VALUES (
                              '2019-01-01',
                              'NFLB',
                              62
                          ),
                          (
                              '2019-01-05',
                              'Basic Needs',
                              61
                          ),
                          (
                              '2019-010-4',
                              'CalFresh',
                              60
                          ),
                          (
                              '2019-01-03',
                              'Bobcat Pantry',
                              21
                          ),
                          (
                              '2019-01-02',
                              'Bobcat Eats',
                              20
                          );
INSERT INTO organizations (
                              o_password,
                              o_name,
                              o_id
                          )
                          VALUES (
                              'pass123',
                              'Basic Needs',
                              45
                          ),
                          (
                              'pass123',
                              'Bobcat Eats',
                              46
                          ),
                          (
                              'pass1234',
                              'Bobcat Pantry',
                              47
                          ),
                          (
                              'u12321',
                              'CalFresh',
                              48
                          );
INSERT INTO store (
                      item_desc,
                      item_name,
                      item_cost,
                      item_quantity,
                      item_id
                  )
                  VALUES (
                      'Bobcat Eats',
                      'Flask',
                      20,
                      10,
                      1
                  ),
                  (
                      'Bobcat Pantry',
                      'Shirt',
                      30,
                      1,
                      2
                  ),
                  (
                      'Bobcat Pantry',
                      'Pen',
                      1,
                      12,
                      3
                  ),
                  (
                      'Bobcat Pantry',
                      'Gift Card',
                      1,
                      1,
                      21
                  ),
                  (
                      'Bobcat Eats',
                      'Gift Card',
                      2,
                      1,
                      20
                  ),
                  (
                      'Bobcat Eats',
                      'Gift Card',
                      2,
                      1,
                      19
                  ),
                  (
                      'Bobcat Eats',
                      'Gift Card',
                      2,
                      1,
                      18
                  ),
                  (
                      'Bobcat Eats',
                      'Shirt',
                      2,
                      1,
                      17
                  ),
                  (
                      'Bobcat Eats',
                      'Flask',
                      6,
                      20,
                      16
                  ),
                  (
                      'Bobcat Pantry',
                      'Flask',
                      2,
                      19,
                      15
                  ),
                  (
                      'CalFresh',
                      'Pen',
                      5,
                      18,
                      14
                  ),
                  (
                      'CalFresh',
                      'Pen',
                      10,
                      14,
                      13
                  ),
                  (
                      'CalFresh',
                      'Scantron',
                      5,
                      12,
                      12
                  ),
                  (
                      'CalFresh',
                      'Flask',
                      8,
                      10,
                      11
                  ),
                  (
                      'CalFresh',
                      'Shirt',
                      5,
                      9,
                      10
                  ),
                  (
                      'Bobcat Eats',
                      'Flask',
                      5,
                      7,
                      9
                  ),
                  (
                      'Bobcat Pantry',
                      'Flask',
                      5,
                      5,
                      8
                  ),
                  (
                      'Basic Needs',
                      'Flask',
                      5,
                      4,
                      7
                  ),
                  (
                      'Basic Needs',
                      'Flask',
                      5,
                      3,
                      6
                  ),
                  (
                      'Basic Needs',
                      'Shirt',
                      5,
                      2,
                      5
                  ),
                  (
                      'Sustainability',
                      'Shirt',
                      5,
                      1,
                      4
                  ),
                  (
                      'Basic Needs',
                      'Flask',
                      20,
                      10,
                      1
                  );
INSERT INTO students (
                         s_password,
                         s_name,
                         s_id
                     )
                     VALUES (
                         'pass2',
                         'Jesus',
                         30
                     ),
                     (
                         'pass1',
                         'Daniel',
                         31
                     ),
                     (
                         'pass3',
                         'Jaime',
                         32
                     ),
                     (
                         'jo123',
                         'Jose',
                         33
                     ),
                     (
                         123,
                         'Jesus',
                         34
                     ),
                     (
                         'fjdakdlsrj3j4l32',
                         'Ramiro',
                         35
                     ),
                     (
                         'mejia123',
                         'Gabriel',
                         36
                     );
