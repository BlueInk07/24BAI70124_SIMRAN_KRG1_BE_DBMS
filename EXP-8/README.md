# Experiment 8

## Objective
The objective of this experiment is to create and execute a PL/pgSQL stored procedure that counts employees based on gender using IN, OUT, and INOUT parameters.

---

## Practical / Experiment Steps
Create a table EMPLOYEES with attributes emp_id, emp_name, gender, and salary.

Insert sample employee records into the table.

Create a stored procedure get_employee_count_by_gender.

Pass gender as input and return employee count using OUT parameter.

Use INOUT parameter to track execution status.

Execute the procedure using an anonymous block.

Display the result using RAISE NOTICE.

Verify the output.
## Procedure of the Experiment
Start the system and open PostgreSQL (pgAdmin / SQL Shell).

Connect to the database.

Create the EMPLOYEES table with required fields.

Insert sample employee records into the table.

Create the stored procedure get_employee_count_by_gender.

Declare variables and write an anonymous block to call the procedure.

Execute the program.

Observe the output using RAISE NOTICE.

Take screenshots for documentation if required.
---

## Input / Output Details

### Input
Employee table containing:
emp_id
emp_name
gender
salary
Input parameter:
IN_GENDER = 'Female'

### Output
Total number of employees with gender = Female
Status message updated to SUCCESS



### Screenshots
![alt text](img1.jpeg)

![alt text](img2.jpeg)

![alt text](img3.jpeg)

![alt text](img4.jpeg)


---

## Learning Outcome
After completing this experiment, the student is able to:

Understand how to create and use stored procedures in PL/pgSQL.

Differentiate between IN, OUT, and INOUT parameters.

Perform aggregation using COUNT() function.

Execute procedures using anonymous blocks.

Display results using RAISE NOTICE.