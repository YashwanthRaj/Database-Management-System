/* Clearing the database of all old data. */

DROP TABLE EMPLOYEES;

DROP TABLE ORDERS;

DROP TABLE CUSTOMERS;

DROP TABLE DEPARTMENTS;

DROP TABLE SALGRADE;

/* Creating the new database, table by table, and loading each table. */

CREATE TABLE CUSTOMERS
(
  CUST#      NUMBER,
  CUST_NAME  VARCHAR2(100 BYTE),
  CITY       VARCHAR2(50 BYTE),
  STATE      VARCHAR2(50 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;

Insert into CUSTOMERS
   (CUST#, CUST_NAME, CITY, STATE)
 Values
   (98, 'ABC Co.', 'Denver', 'CO');
Insert into CUSTOMERS
   (CUST#, CUST_NAME, CITY, STATE)
 Values
   (47, 'DEF Co.', 'Chicago', 'Il');
Insert into CUSTOMERS
   (CUST#, CUST_NAME, CITY, STATE)
 Values
   (876, 'GHI Co.', 'Provo', 'UT');
Insert into CUSTOMERS
   (CUST#, CUST_NAME, CITY, STATE)
 Values
   (540, 'JKL Co.', 'Los Angeles', 'CA');
Insert into CUSTOMERS
   (CUST#, CUST_NAME, CITY, STATE)
 Values
   (57, 'MNO Co.', 'Roselle Park', 'NJ');
COMMIT;  

CREATE TABLE ORDERS
(
  ORDER#        NUMBER,
  CUST#         NUMBER,
  DATE_         DATE,
  DATE_SHIPPED  DATE,
  VALUE         NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;

Insert into ORDERS
   (ORDER#, CUST#, DATE_, DATE_SHIPPED, 
    VALUE)
 Values
   (34, 876, TO_DATE('06/15/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('06/08/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 
    471);
Insert into ORDERS
   (ORDER#, CUST#, DATE_, DATE_SHIPPED, 
    VALUE)
 Values
   (35, 47, TO_DATE('06/16/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('06/19/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 
    214);
Insert into ORDERS
   (ORDER#, CUST#, DATE_, DATE_SHIPPED, 
    VALUE)
 Values
   (36, 876, TO_DATE('06/16/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('06/18/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 
    2450);
Insert into ORDERS
   (ORDER#, CUST#, DATE_, DATE_SHIPPED, 
    VALUE)
 Values
   (38, 632, TO_DATE('06/20/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('06/19/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 
    384);
Insert into ORDERS
   (ORDER#, CUST#, DATE_, DATE_SHIPPED, 
    VALUE)
 Values
   (43, 98, TO_DATE('06/30/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('07/10/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 
    588);
Insert into ORDERS
   (ORDER#, CUST#, DATE_, DATE_SHIPPED, 
    VALUE)
 Values
   (83, 876, TO_DATE('07/15/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('07/30/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 
    3695);
Insert into ORDERS
   (ORDER#, CUST#, DATE_, DATE_SHIPPED, 
    VALUE)
 Values
   (105, 543, TO_DATE('08/17/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), TO_DATE('09/15/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 
    240);
COMMIT;

CREATE TABLE EMPLOYEES
(
  EMP#    NUMBER,
  ENAME   VARCHAR2(100 BYTE),
  DEPTNO  NUMBER,
  JOB     VARCHAR2(50 BYTE),
  MGR     NUMBER,
  SAL     NUMBER,
  COMM    NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;

Insert into EMPLOYEES
   (EMP#, ENAME, DEPTNO, JOB, 
    SAL)
 Values
   (20, 'SMITH', 3, 'PRES', 
    150);
Insert into EMPLOYEES
   (EMP#, ENAME, DEPTNO, JOB, 
    MGR, SAL)
 Values
   (30, 'CHEN', 3, 'VPRES', 
    20, 120);
Insert into EMPLOYEES
   (EMP#, ENAME, DEPTNO, JOB, 
    MGR, SAL)
 Values
   (40, 'LIU', 5, 'SALES MGR', 
    30, 100);
Insert into EMPLOYEES
   (EMP#, ENAME, DEPTNO, JOB, 
    MGR, SAL, COMM)
 Values
   (50, 'JONES', 5, 'SALES REP', 
    40, 20, 50);
Insert into EMPLOYEES
   (EMP#, ENAME, DEPTNO, JOB, 
    MGR, SAL, COMM)
 Values
   (60, 'JAMES', 5, 'SALES REP', 
    40, 20, 65);
Insert into EMPLOYEES
   (EMP#, ENAME, DEPTNO, JOB, 
    MGR, SAL)
 Values
   (70, 'FOONG', 6, 'MGR', 
    30, 95);
COMMIT;



CREATE TABLE DEPARTMENTS
(
  DEPTNO  NUMBER,
  DNAME   VARCHAR2(100 BYTE),
  LOC     VARCHAR2(50 BYTE)
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;

Insert into DEPARTMENTS
   (DEPTNO, DNAME, LOC)
 Values
   (1, 'FINANCE', 'NYC');
Insert into DEPARTMENTS
   (DEPTNO, DNAME, LOC)
 Values
   (2, 'MANUF', 'PHIL');
Insert into DEPARTMENTS
   (DEPTNO, DNAME, LOC)
 Values
   (3, 'HQ', 'DC');
Insert into DEPARTMENTS
   (DEPTNO, DNAME, LOC)
 Values
   (5, 'SALES', 'LA');
Insert into DEPARTMENTS
   (DEPTNO, DNAME, LOC)
 Values
   (7, 'MARKETING', 'NYC');
COMMIT;

CREATE TABLE SALGRADE
(
  GRADE#      NUMBER,
  LOWSAL      NUMBER,
  HISAL      NUMBER
)
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;
 
Insert into SALGRADE
   (GRADE#, LOWSAL, HISAL)
 Values
   (1, 20, 50);
Insert into SALGRADE
   (GRADE#, LOWSAL, HISAL)
 Values
   (2, 50, 75);
Insert into SALGRADE
   (GRADE#, LOWSAL, HISAL)
 Values
   (3, 75, 100);
Insert into SALGRADE
   (GRADE#, LOWSAL, HISAL)
 Values
   (4, 100, 125);
Insert into SALGRADE
   (GRADE#, LOWSAL, HISAL)
 Values
   (5, 125, 150);
Insert into SALGRADE
   (GRADE#, LOWSAL, HISAL)
 Values
   (6, 150, 175);
Insert into SALGRADE
   (GRADE#, LOWSAL, HISAL)
 Values
   (7, 175, 200);
COMMIT;