# Write an SQL query to find employees who have the highest salary in each of the departments.

# Approach: Using Join and IN 

# Since the Employee table contains the Salary and DepartmentId information, we can query the highest salary in a department. put this in a temp table for filtering 

# Then, we can join table Employee and Department, and query the (DepartmentId, Salary) are in the temp table using IN statement as below.

# Then join the Employee and Department tables and query a temp table

# The department table, acts as a lookup table. So when you join, there will be name IT and Sales
# repeating in another column with its corresponding matching department id

#then using WHERE clause you just filter down where the departmentid and salary is in 
# the temp table 
#the temp table has

SELECT 
    Department.name AS 'Department',
    Employee.name AS 'Employee',
    Salary
FROM 
    employee
        JOIN
    department ON employee.departmentId = Department.id
WHERE
    (Employee.DepartmentId, Salary) IN
    (   SELECT
            DepartmentId, MAX(Salary)
        FROM 
            employee
        GROUP BY Departmentid
    )
