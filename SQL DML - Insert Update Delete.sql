#TASK 3 DML- Data manipulation Language INSERT , UPDATE DELETE
SELECT *FROM employee1;

# INSERT INTO employee table

INSERT INTO employee1(employee_no,ethnicity,gender,job_status,job_title,employment_type)
VALUES(192122,'ASIAN','FEMALE','ACTIVE','POLICE OFFICER IV','FULL_TIME');

#INSERT INTO basepayment
INSERT INTO basepayments(employee_no,pay_year,regular_pay,total_pay)
VALUES(192122,'2024',1254.25,3254.35);

# insert into adhocpayments
INSERT INTO additionalpayments(employee_no,retirement_contributions,benefit_pay)
VALUES(192122,2547.58,250.25);

#insert into adhocpayments
INSERT INTO adhocpayments(employee_no,overtime_pay,all_other_pay)
VALUES(192122,100.58,250.25);

# insert into department
SELECT * FROM department ORDER BY department_no ASC;
INSERT INTO department(employee_no,department_no,job_class_pgrade,department_title)
VALUES(192122,76,'4578-6','POLICE');

#SELECT Statement USING JOINS and retrieving recently inserted data

SELECT e.employee_no,e.ethnicity,e.gender,b.pay_year,b.regular_pay,b.total_pay FROM employee1 e INNER JOIN basepayments b ON e.employee_no = b.employee_no AND e.employee_no=192122;

#UPDATE
UPDATE employee1 SET job_title='POLICE OFFICER IV' WHERE employee_no=192006;

#To delete records from tBE FOREIGN KEY CONSTRAINTS HAS TO BE CHANGED AND SET CASCADE VALUE TO null to maintain data integrity 
ALTER TABLE additionalpayments DROP CONSTRAINT FK_additionalpayments;
ALTER TABLE additionalpayments ADD CONSTRAINT FK_additionalpayments FOREIGN KEY (employee_no) REFERENCES employee1(employee_no) ON DELETE CASCADE;

ALTER TABLE adhocpayments DROP CONSTRAINT FK_adhocpayments;
ALTER TABLE adhocpayments ADD CONSTRAINT FK_adhocpayments FOREIGN KEY (employee_no) REFERENCES employee1(employee_no) ON DELETE CASCADE;

ALTER TABLE basepayments DROP CONSTRAINT FK_basepayments;
ALTER TABLE basepayments ADD CONSTRAINT FK_basepayments FOREIGN KEY (employee_no) REFERENCES employee1(employee_no) ON DELETE CASCADE;

ALTER TABLE department DROP CONSTRAINT FK_department;
ALTER TABLE department ADD CONSTRAINT FK_department FOREIGN KEY (employee_no) REFERENCES employee1(employee_no) ON DELETE CASCADE;

#DELETE FROM Child Table

DELETE FROM employee1 WHERE employee_no = 191910 AND job_title ='MAINTENANCE LABORER';
DELETE FROM department WHERE employee_no=191910 ;
DELETE FROM basepayments WHERE employee_no=191910;
DELETE FROM adhocpayments WHERE employee_no=191910;
DELETE FROM additionalpayments WHERE employee_no=191910;
