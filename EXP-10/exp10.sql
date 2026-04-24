-- 1. Create Sequence (acts like auto-increment engine)
CREATE SEQUENCE emp_seq
START 1;

-- 2. Create Table (NO auto increment here)
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary NUMERIC(10,2)
);

-- 3. Create Trigger Function
CREATE OR REPLACE FUNCTION assign_emp_id()
RETURNS TRIGGER AS $$
BEGIN
    -- If user doesn't provide ID, generate one
    IF NEW.emp_id IS NULL THEN
        NEW.emp_id := nextval('emp_seq');
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- 4. Create Trigger
CREATE TRIGGER before_insert_emp
BEFORE INSERT ON employee
FOR EACH ROW
EXECUTE FUNCTION assign_emp_id();

-- 5. Insert Data (WITHOUT specifying emp_id)
INSERT INTO employee (emp_name, dept_id, salary) VALUES
('A', 101, 1000),
('B', 102, 2000),
('C', 101, 2000),
('D', 102, 3000);

-- 6. Check Data
SELECT * FROM employee;