
SELECT
TRIM('  ' FROM book_title) AS clean_title,
LENGTH(TRIM('  ' FROM book_title)) AS title_length,
INSTR(book_title, 'Data') AS data_position,
SUBSTR(book_title, 1, 5) AS short_title
FROM books;


SELECT
TRIM(student_email) AS clean_email,
INSTR(TRIM(student_email), '@') AS at_position,
SUBSTR(TRIM(student_email), 1, INSTR(TRIM(student_email), '@') - 1) AS username,
LENGTH(student_name) AS name_length
FROM students;


SELECT
TRIM(job_role) AS role_name,
INSTR(job_role, 'Lecturer') AS lecturer_pos,
SUBSTR(job_role, 1, 3) AS role_code,
LENGTH(TRIM(job_role)) AS role_length
FROM teachers
WHERE INSTR(job_role, 'Lecturer') > 0;



-- 2. PL/SQL Block Structure

-- Use Case 1 — Calculate and print a player's level

DECLARE
vn_points    NUMBER := 82;
v_level      VARCHAR2(2);

BEGIN

IF vn_points >= 80 THEN
    v_level := 'A';

ELSIF vn_points >= 60 THEN
    v_level := 'B';

ELSE
    v_level := 'C';

END IF;

DBMS_OUTPUT.PUT_LINE('Level: ' || v_level);

EXCEPTION

WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);

END;
/




-- Use Case 2 — Fetch and display a teacher's salary

DECLARE
v_salary    teachers.salary_amount%TYPE;
v_name      teachers.teacher_name%TYPE;

BEGIN

SELECT teacher_name, salary_amount
INTO v_name, v_salary
FROM teachers
WHERE teacher_id = 201;

DBMS_OUTPUT.PUT_LINE(v_name || ' earns: ' || v_salary);

EXCEPTION

WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Teacher not found.');

WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Unexpected error: ' || SQLERRM);

END;
/




-- Use Case 3 — Apply a discount and update laptop price

DECLARE
vn_price      NUMBER := 800;
vn_discount   NUMBER := 0.10;
vn_final      NUMBER;

BEGIN

  vn_final := vn_price - (vn_price * vn_discount);

DBMS_OUTPUT.PUT_LINE('Original Price : ' || vn_price);
DBMS_OUTPUT.PUT_LINE('Discount Price : ' || vn_final);

EXCEPTION

WHEN VALUE_ERROR THEN
    DBMS_OUTPUT.PUT_LINE('Calculation error.');

END;
/




-- 3. PL/SQL Loops with EXIT WHEN

-- Use Case 1 — Print multiplication table of 6

DECLARE
vn_counter NUMBER(2) := 1;

BEGIN

LOOP

    EXIT WHEN vn_counter > 10;

    DBMS_OUTPUT.PUT_LINE('6 x ' || vn_counter || ' = ' || (6 * vn_counter));

    vn_counter := vn_counter + 1;

END LOOP;

END;
/




-- Use Case 2 — Accumulate total marks

DECLARE
vn_counter NUMBER(3) := 1;
vn_total   NUMBER := 0;

BEGIN

LOOP

    EXIT WHEN vn_counter > 30;

    vn_total := vn_total + vn_counter;

    vn_counter := vn_counter + 1;

END LOOP;

DBMS_OUTPUT.PUT_LINE('Total Marks = ' || vn_total);

END;
/




-- Use Case 3 — Simulate ticket booking reduction

DECLARE
vn_tickets   NUMBER(4) := 15;
vn_booked    NUMBER := 0;

BEGIN

LOOP

    EXIT WHEN vn_tickets <= 0;

    vn_tickets := vn_tickets - 2;

    vn_booked := vn_booked + 2;

    DBMS_OUTPUT.PUT_LINE('Booked 2 tickets. Remaining: ' || vn_tickets);

END LOOP;

DBMS_OUTPUT.PUT_LINE('Total booked: ' || vn_booked);

END;
/