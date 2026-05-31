SELECT ROUND(15.193, 1) AS rounded_value
  FROM math_test;
rounded_value
-------------
15.2

SELECT ROUND(15.193, -1) AS rounded_value
  FROM math_test;
rounded_value
-------------
20

SELECT ROUND(15.193) AS rounded_value
  FROM math_test;
rounded_value
-------------
15