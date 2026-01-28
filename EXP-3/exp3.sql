CREATE TABLE employee (
    emp_id INTEGER PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_salary NUMERIC
);

INSERT INTO employee VALUES (100, 'SIMRAN', 65000);
DO $$
DECLARE
    v_id INTEGER;
    v_name VARCHAR(50);
    v_salary NUMERIC;
    v_bonus NUMERIC;
BEGIN
    SELECT emp_id, emp_name, emp_salary
    INTO v_id, v_name, v_salary
    FROM employee
    WHERE emp_id = 100;

    v_bonus := v_salary * 0.10;

    RAISE NOTICE 'Employee ID        : %', v_id;
    RAISE NOTICE 'Employee Name      : %', v_name;
    RAISE NOTICE 'Original Salary    : %', v_salary;
    RAISE NOTICE '10%% Bonus Amount  : %', v_bonus;
    RAISE NOTICE 'Updated Salary     : %', v_salary + v_bonus;
END $$;
