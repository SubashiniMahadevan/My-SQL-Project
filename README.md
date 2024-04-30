# Data Analysis and Data Visualization using My-SQL and POWERBI Project

## Database Design:

- Top-down-Method
- Bottom-up-method
- Entities and Attributes, Relationships and their cardinalities and Ordinalities.
- Primary Key and Foreign key
- Chen's Notation
- Entity Relationship Diagram

 ## Chen's Notation:

 ![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/5b8af67f-0758-4d8d-a2db-537fa0976d42)
 
<br>

## Entitiy Relationship Diagram
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/b7e41217-081a-4102-9da3-fbb02f268513)

<br>

## Enhanced Entity Relationship diagram
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/d0e43c76-45f9-4185-80f2-06e4ce740f99)



## Database Creation:

<br>

**Creation Of Database and its Objects to Populate sample data**
<br>
  
  ![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/1dc0163e-e313-41ef-8f37-6f743fce8325)
<br>

  ![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/495c0383-1ee3-4314-9ac7-b4f91d45dcb4)

<br>

## Database modification:
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/0ae6907b-b426-443e-ac8b-2cd1576cd7a5)
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/2efaadc7-18c2-441d-b750-ffed727e951b)

<br>

## Data Retrieval From database:
<br>

**SELECT * FROM employee1 ORDER BY employee_no ASC;**

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/3e7db518-79db-4de3-b214-6015a4a38ebe)

<br>

**1. How many employees the database contained?**

<br>

   **SELECT Count(employee_no)AS Total_emp_count FROM employee1;**

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/0b207e8e-322c-44be-9cb0-d80ad91fc763)
<br>

**2. How many departments the database contained?**
<br>

   **SELECT COUNT(DISTINCT DEPARTMENT_NO) AS total_dep FROM Department;**


![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/3aa43639-ea9b-488d-ab92-acbc00842a63)

<br>

**3. USING GROUP BY In one query, retrieve all departments and their corresponding number of employees SORT BY**
<br>

   **SELECT department_no, COUNT(employee_no) AS Totalemployees FROM Department GROUP BY department_no ORDER BY Totalemployees DESC;**

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/266c01e8-57a5-4660-a897-51ac4b7d57b8)
<br>

**4. Calculate the total payroll amount for  year '2023'**
<br>

   **SELECT SUM(total_pay) AS total_payroll FROM basepayments WHERE pay_year='2023';**

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/4b634182-4af3-4ad0-bd95-0d93c9de5fc0)
<br>

**5. Find the average regular pay for each employment type**
<br>

   **SELECT AVG(b.regular_pay) AS Average, e.employment_type FROM employee1 e INNER JOIN basepayments b ON b.employee_no = e.employee_no GROUP BY e.employment_type;**

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/9f4cb540-33f3-45ed-938f-95fb27fe1e66)
<br>

**6. what is total pay for job titles limit to 10 rows**
<br>

   **SELECT b.total_pay,e.job_title FROM basepayments b INNER JOIN employee1 e ON e.employee_no = b.employee_no ORDER BY b.total_pay DESC LIMIT 10;**
<br>   

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/45b5c62d-933d-4f53-9601-d27e4f66a1a1)
<br>

**7. Average regular pay for genders**
<br>

   **SELECT round(AVG(b.regular_pay),2) AS averge_regular_pay,e.gender FROM basepayments b INNER JOIN employee1 e ON e.employee_no = b.employee_no GROUP BY e.gender;**
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/57066488-d8b3-4324-9146-76dfcc08c54b)

<br>

**8. What is total overtime pay by department?**
<br>

   **SELECT d.department_no,SUM(a.overtime_pay) AS total_overtimepay FROM department d INNER JOIN adhocpayments a ON a.employee_no = d.employee_no  GROUP BY d.department_no;**
<br>   

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/a29cae3e-ae18-4c3d-a8ff-341a18df673d)
<br>

**9. How many employees the departments contained**
<br>

   **SELECT department_no, COUNT(employee_no) AS Totalemployees FROM department GROUP BY department_no;**
<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/c333539d-8f42-4865-a61d-a2802e2b17b8)

<br>

# POWERBI - Data Visualization

## Data Import:

**Data analysis is done in SQL for Employee Payroll dataset. Now data can be retrieved from the entities of the database and export it as a excel sheet.**

**There are 4 entities in the database - employee1, departments, basepayments, additionalbenefits and adhocpayments.**

**These entity data is retrieved and exported in csv formats.**


![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/267d50bc-b68b-48d2-bd10-a815772488f3)


![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/28143e99-c7ca-495f-9cb5-8bebfb8a55e4)


![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/a0a63604-d357-4b13-b38b-1cb366312d99)


**Now the data can be imported into POWERBI:**


**1. Get data -> Text/CSV -> Select the name of the sheet and table names to load the data.**


![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/6f6313a2-09bf-4b12-bfd9-b96c95473445)


![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/0dd3be0a-a94b-46e4-847a-c14730e5d037)



![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/e87ed4be-93d8-4003-a10a-a77731b5160f)



## Data Modelling:


![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/2d91fabc-9229-4972-8e61-117dc93209ed)


## Data Transformation:

**Creation of new measures for calculating average for regular pay for each employment type.**


![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/6c1c0f90-2754-4dd4-80ed-362693783a02)


![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/19fa7baa-14b0-4804-8ab2-e111c8f8fd9b)


**Creating another measure to change the above measure to include the calculation and display the average value in a custom format"**


![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/d269c73e-f739-4c96-baa0-ce207d5cf92d)



![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/76598710-e21e-4ee9-8223-dbeaa475d6b1)



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

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/1a45f1fc-1fc3-4174-8578-028f90d8277f)



**Displaying Top 5 Highest paying Job Titles.**

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/08d1ee0e-6b80-4981-b318-7fb59d1f9831)


**Dashboard for Employee Payroll 2023:**

<br>

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/1440d1aa-3053-485d-aeac-a9a83c74e8da)








