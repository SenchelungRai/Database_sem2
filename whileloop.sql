number = 20
i = 0

while i <= number:
    print(i)
    i += 1

--While loop

DECLARE vn_counter NUMBER(3) := 0;
BEGIN
    WHILE 3 >= vn_counter LOOP
        DBMS_OUTPUT.PUT_LINE('counter has not exceeded 3');
        vn_counter := vn_counter + 1;
    END LOOP;
END;

--For loop
FOR vn_another_counter IN  1 .. 4 LOOP

    DBMS_OUTPUT.PUT_LINE('Loop number' || 
    vn_another_counter);

END LOOP;

