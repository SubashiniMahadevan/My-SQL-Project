#TASK - 2 Data Manipulation Language - SELECT
USE sample;
SELECT * FROM employee1 ORDER BY employee_no ASC;

# How many employees the database contained?
SELECT Count(DISTINCT employee_no) AS Total_emp_count FROM employee1;

#How many departments the database contained?
SELECT COUNT(DISTINCT department_no) AS total_dep FROM department;


# USING GROUP BY In one query, retrieve all departments and their corresponding number of employees SORT BY Number of Employees in Descending order
SELECT department_no, COUNT(employee_no) AS Totalemployees FROM department GROUP BY department_no ORDER BY Totalemployees DESC;

#Calculate the total payroll amount for  year '2023'
SELECT SUM(total_pay) AS total_payroll FROM basepayments WHERE pay_year='2023';

#Find the average regular pay for each employment type

SELECT round(AVG(b.regular_pay),2) AS Average, e.employment_type FROM employee1 e INNER JOIN basepayments b ON b.employee_no = e.employee_no GROUP BY e.employment_type;

# what is total pay for job titles limit to 10 rows
SELECT b.total_pay,e.job_title FROM basepayments b INNER JOIN employee1 e ON e.employee_no = b.employee_no ORDER BY b.total_pay DESC LIMIT 10;

#average regular pay for genders
SELECT round(AVG(b.regular_pay),2) AS averge_regular_pay,e.gender FROM basepayments b INNER JOIN employee1 e ON e.employee_no = b.employee_no GROUP BY e.gender;

#What is total overtime pay by department?
SELECT d.department_no,SUM(a.overtime_pay) AS total_overtime_pay FROM department d INNER JOIN adhocpayments a ON a.employee_no = d.employee_no  GROUP BY d.department_no ORDER BY total_overtime_pay DESC;

# How many employees the departments contained

SELECT department_no, COUNT(DISTINCT employee_no) AS Totalemployees FROM department GROUP BY department_no ORDER BY Totalemployees DESC;