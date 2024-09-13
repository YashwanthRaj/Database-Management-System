CREATE TABLE Department (

    DeptID INT PRIMARY KEY,

    DeptName VARCHAR(50),

    ParentDeptID INT

);


-- Create Employee table

CREATE TABLE Employee (

    EmpID INT PRIMARY KEY,

    EmpName VARCHAR(50),

    DeptID INT,

    ManagerID INT,

    Salary DECIMAL(10, 2),

    HireDate DATE,

    FOREIGN KEY (DeptID) REFERENCES Department(DeptID),

    FOREIGN KEY (ManagerID) REFERENCES Employee(EmpID)

);


-- Insert into Department table

INSERT INTO Department (DeptID, DeptName, ParentDeptID) VALUES

(1, 'Engineering', NULL),

(2, 'Marketing', 17),

(3, 'Development', 1),

(4, 'Quality Assurance', 1),

(5, 'Sales', 2),

(6, 'Customer Support', 2),

(7, 'Software Development', 3),

(8, 'Hardware Development', 3),

(9, 'Internal QA', 4),

(10, 'External QA', 4),

(11, 'North Region Sales', 5),

(12, 'South Region Sales', 5),

(13, 'East Region Sales', 5),

(14, 'West Region Sales', 5),

(15, 'Product Support', 6),

(16, 'Service Support', 6);


-- Insert into Employee table with bad data

INSERT INTO Employee (EmpID, EmpName, DeptID, ManagerID, Salary, HireDate) VALUES

(1, 'John Doe', 7, 20, 80000.00, '2020-01-15'),

(2, 'Jane Smith', 7, 1, 75000.00, '2020-02-20'),

(3, 'David Johnson', 9, 1, 60000.00, '2020-03-10'),

(4, 'Mary Brown', 11, 2, 70000.00, '2020-04-05'),

(5, 'Michael Lee', 15, 2, 65000.00, '2020-05-15'),

(6, 'Jennifer Wilson', 15, 1, 70000.00, '2020-06-20'),

(7, 'Robert Taylor', 11, 3, 72000.00, '2020-07-10'),

(8, 'Lisa Anderson', 13, 3, 68000.00, '2020-08-05'),

(9, 'William Martinez', 17, 4, 75000.00, '2020-09-15'),

(10, 'Karen Garcia', 12, 4, 70000.00, '2020-10-20'),

(11, 'Daniel Rodriguez', 16, 5, 60000.00, '2020-11-10'),

(12, 'Emily Hernandez', 16, 6, 65000.00, '2020-12-05');