# Data Analysis and Data Visualization using My-SQL and POWERBI Project

## Database Design:
<br>


- Top-down-Method
- Bottom-up-method
- Entities and Attributes, Relationships and their cardinalities and Ordinalities.
- Primary Key and Foreign key
- Chen's Notation
- Entity Relationship Diagram
<br>

 ## Chen's Notation:
<br>
<br>

 ![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/5b8af67f-0758-4d8d-a2db-537fa0976d42)
 
<br>

## Entitiy Relationship Diagram
<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/b7e41217-081a-4102-9da3-fbb02f268513)

<br>

## Enhanced Entity Relationship diagram
<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/06949a6d-1b46-4cf6-a558-9436d9eb3352)

<br>

## Database Creation:

<br>

**Creation Of Database and its Objects to Populate sample data**
<br>
<br>
  
  ![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/1dc0163e-e313-41ef-8f37-6f743fce8325)
<br>
<br>

  ![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/495c0383-1ee3-4314-9ac7-b4f91d45dcb4)

<br>

## Database modification:
<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/0ae6907b-b426-443e-ac8b-2cd1576cd7a5)
<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/2efaadc7-18c2-441d-b750-ffed727e951b)

<br>

## Data Retrieval From database:
<br>


**SELECT * FROM employee1 ORDER BY employee_no ASC;**
<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/3e7db518-79db-4de3-b214-6015a4a38ebe)

<br>

**1. How many employees the database contained?**
<br>

**Query:**

   **SELECT Count( DISTINCT employee_no) AS Total_emp_count FROM employee1;**
<br>
<br>


![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/5a293741-5fb5-4a83-8845-fe7f203b619e)

<br>

**2. How many departments the database contained?**
<br>

**Query:**

   **SELECT COUNT(DISTINCT department_no) AS total_dep FROM department;**
<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/f18d6fa8-a9c7-464f-825a-fd3ca77bcdd7)


<br>

**3. USING GROUP BY In one query, retrieve all departments and their corresponding number of employees SORT BY Number of Employees in decending order**
<br>

**Query:**

   **SELECT department_no, COUNT(employee_no) AS Totalemployees FROM department GROUP BY department_no ORDER BY Totalemployees DESC;**
<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/b5a45d77-e427-44bd-a178-59e311940286)

<br>

**4. Calculate the total payroll amount for  year '2023'**
<br>

**Query:**

   **SELECT SUM(total_pay) AS total_payroll FROM basepayments WHERE pay_year='2023';**
<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/c8ca2aae-acdb-4834-af1b-ca5adc7bcb1c)

<br>

**5. Find the average regular pay for each employment type**
<br>

**Query:**

   **SELECT round(AVG(b.regular_pay),2) AS Average, e.employment_type FROM employee1 e INNER JOIN basepayments b ON b.employee_no = e.employee_no GROUP BY e.employment_type;**
<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/0c03c966-5f0c-496c-ae1f-267ede7e433b)

<br>

**6. What is total pay for job titles limit to 10 rows**
<br>

**Query:**

   **SELECT b.total_pay,e.job_title FROM basepayments b INNER JOIN employee1 e ON e.employee_no = b.employee_no ORDER BY b.total_pay DESC LIMIT 10;**
<br>
<br> 

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/45b5c62d-933d-4f53-9601-d27e4f66a1a1)
<br>

**7. Average regular pay for genders**
<br>

**Query:**

   **SELECT round(AVG(b.regular_pay),2) AS averge_regular_pay,e.gender FROM basepayments b INNER JOIN employee1 e ON e.employee_no = b.employee_no GROUP BY e.gender;**
<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/57066488-d8b3-4324-9146-76dfcc08c54b)

<br>

**8. What is total overtime pay by department?**
<br>

**Query:**

   **SELECT d.department_no,SUM(a.overtime_pay) AS total_overtime_pay FROM department d INNER JOIN adhocpayments a ON a.employee_no = d.employee_no  GROUP BY d.department_no ORDER BY total_overtime_pay DESC;**
<br>
<br>  

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/312fb414-8e98-4b41-8384-f04ec4cc4436)

<br>

**9. How many employees the departments contained**
<br>

**Query:**

   **SELECT department_no, COUNT(DISTINCT employee_no) AS Totalemployees FROM department GROUP BY department_no ORDER BY Totalemployees DESC;**
<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/cc807e20-e4d6-4fb1-8229-3c41fd9d36c0)


<br>

# POWERBI - Data Visualization

## Data Import:

**Data analysis is done in SQL for Employee Payroll dataset. Now data can be retrieved from the entities of the database and export it as a excel sheet.**

**There are 4 entities in the database - employee1, departments, basepayments, additionalbenefits and adhocpayments.**

**These entity data is retrieved and exported in csv formats.**
<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/267d50bc-b68b-48d2-bd10-a815772488f3)
<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/28143e99-c7ca-495f-9cb5-8bebfb8a55e4)
<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/a0a63604-d357-4b13-b38b-1cb366312d99)
<br>
<br>

**Now the data can be imported into POWERBI:**


**1. Get data -> Text/CSV -> Select the name of the sheet and table names to load the data.**
<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/6f6313a2-09bf-4b12-bfd9-b96c95473445)
<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/0dd3be0a-a94b-46e4-847a-c14730e5d037)

<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/e87ed4be-93d8-4003-a10a-a77731b5160f)

<br>

## Data Modelling:
<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/2d91fabc-9229-4972-8e61-117dc93209ed)

<br>

## Data Transformation:

**Creation of new measures for calculating average for regular pay for each employment type.**
<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/6c1c0f90-2754-4dd4-80ed-362693783a02)
<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/19fa7baa-14b0-4804-8ab2-e111c8f8fd9b)
<br>

**Creating another measure to change the above measure to include the calculation and display the average value in a custom format"**
<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/d269c73e-f739-4c96-baa0-ce207d5cf92d)
<br>
<br>


![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/76598710-e21e-4ee9-8223-dbeaa475d6b1)
<br>


## Dashboard Creation:

**1. Include a title for dashboard**

**2. Insert a card displaying the total number of employees.**

**3. Insert a card displaying the Total number of Departments**

**4. Display total number of Job titles**

**5. Total Pay for the year 2023**

**6. Average regular pay for Full time and part time employees.**

**7. Average regular pay by Gender**

**8. Head count by Department**

**9. Total Overtime pay for each Department number excluding the null values.**

**10. Top 5 highest paying Job titles**

**11. Headcount by gender.**

**12. Headcount by Employment type.**

**13. Add some pictures and background images to the dashboard.**


**Data Filtering**

**Filter for displaying overtime pay for every department - excluding department with no overtime pay values.**
<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/1a45f1fc-1fc3-4174-8578-028f90d8277f)

<br>

**Displaying Top 5 Highest paying Job Titles.**
<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/08d1ee0e-6b80-4981-b318-7fb59d1f9831)
<br>
<br>

**Dashboard for Employee Payroll 2023:**

<br>
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/1440d1aa-3053-485d-aeac-a9a83c74e8da)








