# My-SQL-Project

**Database Design**:

- Top-down-Method
- Bottom-up-method
- Entities and Attributes, Relationships and their cardinalities and Ordinalities.
- Primary Key and Foreign key
- Chen's Notation
- Entity Relationship Diagram

 **Chen's Notation:** 

 ![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/5b8af67f-0758-4d8d-a2db-537fa0976d42)

**Entitiy Relationship Diagram**

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/b7e41217-081a-4102-9da3-fbb02f268513)


**Enhanced Entity Relationship diagram**


![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/d0e43c76-45f9-4185-80f2-06e4ce740f99)



  **Database Creation**:

  **Creation Of Database and Objects and Populate sample data in them **

  
  ![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/1dc0163e-e313-41ef-8f37-6f743fce8325)


  ![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/495c0383-1ee3-4314-9ac7-b4f91d45dcb4)



**Database modification**

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/0ae6907b-b426-443e-ac8b-2cd1576cd7a5)


![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/2efaadc7-18c2-441d-b750-ffed727e951b)


** Data Retrieval From database**

**SELECT * FROM employee1 ORDER BY employee_no ASC;**

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/3e7db518-79db-4de3-b214-6015a4a38ebe)

**# How many employees the database contained?**

**SELECT Count(employee_no)AS Total_emp_count FROM employee1;**

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/0b207e8e-322c-44be-9cb0-d80ad91fc763)


**# USING GROUP BY In one query, retrieve all departments and their corresponding number of employees SORT BY **


![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/266c01e8-57a5-4660-a897-51ac4b7d57b8)

**#Calculate the total payroll amount for  year '2023'**

**SELECT SUM(total_pay) AS total_payroll FROM basepayments WHERE pay_year='2023';**

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/4b634182-4af3-4ad0-bd95-0d93c9de5fc0)

**#Find the average regular pay for each employment type**

**Method 1**

**SELECT AVG(b.regular_pay) AS Average, e.employment_type FROM employee1 e INNER JOIN basepayments b ON b.employee_no = e.employee_no GROUP BY e.employment_type;**

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/9f4cb540-33f3-45ed-938f-95fb27fe1e66)

**#What is total overtime pay by department?**

**SELECT d.department_no,SUM(a.overtime_pay) AS total_overtimepay FROM department d INNER JOIN adhocpayments a ON a.employee_no = d.employee_no  GROUP BY d.department_no;**

![image](https://github.com/SubashiniMahadevan/My-SQL-Project/assets/168095179/a29cae3e-ae18-4c3d-a8ff-341a18df673d)











