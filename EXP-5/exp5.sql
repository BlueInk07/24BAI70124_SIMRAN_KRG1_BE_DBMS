-- Create Table
CREATE TABLE Employee (
    emp_id INT,
    emp_name VARCHAR(50),
    salary INT
);

-- Insert Sample Data
INSERT INTO Employee VALUES (1, 'Aman', 25000);
INSERT INTO Employee VALUES (2, 'Riya', 30001);
INSERT INTO Employee VALUES (3, 'Rahul', 40000);
INSERT INTO Employee VALUES (4, 'Neha', 35005);

-- Display Employees with Even Salaries
SELECT *
FROM Employee
WHERE MOD(salary,2) = 0;

-- Display Employees with Odd Salaries
SELECT *
FROM Employee
WHERE MOD(salary,2) = 1;