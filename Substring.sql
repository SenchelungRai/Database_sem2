SELECT SUBSTR('ABCDEFG', 3, 4) AS extracted_text
  FROM text_test;
extracted_text
--------------
CDEF

SELECT SUBSTR('ABCDEFG', -5, 4) AS extracted_text
  FROM text_test;
extracted_text
--------------
CDEF

SELECT SUBSTRB('ABCDEFG', 5, 4.2) AS extracted_bytes
  FROM text_test;
extracted_bytes
---------------
EF