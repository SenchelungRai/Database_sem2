SELECT FLOOR(15.7) AS rounded_down
FROM dummy;
rounded_down
------------
15

SELECT FLOOR(-15.7) AS rounded_down
FROM dummy;
rounded_down
------------
-16

SELECT FLOOR(15) AS rounded_down
FROM dummy;
rounded_down
------------
15