CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary NUMERIC(10,2),
    joining_date DATE
);

INSERT INTO employee VALUES
(101, 'Karan', 'Sales', 27000, '2021-07-12'),
(102, 'Riya', 'Sales', 31000, '2020-09-25'),
(103, 'Ankit', 'Tech', 45000, '2019-04-18'),
(104, 'Meera', 'Tech', 22000, '2022-12-03'),
(105, 'Vikas', 'Accounts', 38000, '2020-01-30'),
(106, 'Nisha', 'Accounts', 19000, '2023-06-10');

-- View all records
SELECT * FROM employee;

-- Average salary per department
SELECT department, AVG(salary) AS avg_salary
FROM employee
GROUP BY department;

-- Departments with average salary greater than 30000
SELECT department, AVG(salary) AS avg_salary
FROM employee
GROUP BY department
HAVING AVG(salary) > 30000;

-- Final query with WHERE, HAVING and ORDER BY
SELECT department, AVG(salary) AS avg_salary
FROM employee
WHERE salary > 20000
GROUP BY department
HAVING AVG(salary) > 30000
ORDER BY avg_salary DESC;
