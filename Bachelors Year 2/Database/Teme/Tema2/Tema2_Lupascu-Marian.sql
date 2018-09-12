--P1 raspuns 6
SELECT *
FROM EMPLOYEES
WHERE lower(LAST_NAME) LIKE 'k%';

--P2
SELECT EMPLOYEE_ID, LAST_NAME, FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY = (SELECT MIN(SALARY) FROM EMPLOYEES);

--P3
SELECT DISTINCT e.EMPLOYEE_ID, e.LAST_NAME, e.FIRST_NAME, e.DEPARTMENT_ID
FROM EMPLOYEES e
JOIN EMPLOYEES f ON (f.MANAGER_ID = e.EMPLOYEE_ID)
WHERE f.DEPARTMENT_ID = 30
ORDER BY 2, 3;

--P4
SELECT e.EMPLOYEE_ID, e.LAST_NAME, e.FIRST_NAME,
(SELECT count(*) FROM EMPLOYEES f WHERE e.EMPLOYEE_ID = f.MANAGER_ID) "Nr subalterni"
FROM employees e
ORDER BY 4 desc;

--P5
SELECT e.EMPLOYEE_ID, e.LAST_NAME, e.FIRST_NAME
FROM EMPLOYEES e
WHERE e.LAST_NAME IN (SELECT f.LAST_NAME from EMPLOYEES f WHERE e.EMPLOYEE_ID <> f.EMPLOYEE_ID)
ORDER BY 1;

--P6
SELECT DISTINCT d.DEPARTMENT_ID, d.DEPARTMENT_NAME
FROM DEPARTMENTS d
JOIN EMPLOYEES e ON (d.DEPARTMENT_ID = e.DEPARTMENT_ID)
JOIN EMPLOYEES f ON (e.DEPARTMENT_ID = f.DEPARTMENT_ID)
WHERE e.JOB_ID <> f.JOB_ID AND e.EMPLOYEE_ID > f.EMPLOYEE_ID;

--P7
SELECT p.prod_id, p.PROD_DESC, sum(o.qty)
FROM ORDERS_TBL o
JOIN PRODUCTS_TBL p ON (o.PROD_ID = p.PROD_ID)
WHERE lower(p.PROD_DESC) LIKE '%plastic%'
group by p.prod_id, p.PROD_DESC;
--select * from orders_tbl;

--P8
SELECT LAST_NAME || ' ' || FIRST_NAME "Nume", 'angajat' "Tip"
FROM EMPLOYEE_TBL
UNION
SELECT CUST_NAME "Nume", 'client' "Tip"
FROM CUSTOMER_TBL;

--P9
SELECT p.PROD_DESC, e.LAST_NAME
FROM PRODUCTS_TBL p
JOIN ORDERS_TBL o ON p.PROD_ID = o.PROD_ID
JOIN EMPLOYEE_TBL e ON e.EMP_ID = o.SALES_REP
WHERE e.EMP_ID IN (SELECT o1.SALES_REP 
FROM ORDERS_TBL o1
JOIN PRODUCTS_TBL p1 ON o1.PROD_ID = p1.PROD_ID
WHERE upper(p1.PROD_DESC) LIKE '% P%' ) ;

--P10
SELECT c.CUST_NAME
FROM CUSTOMER_TBL c
JOIN ORDERS_TBL t ON (c.CUST_ID = t.CUST_ID)
WHERE to_char(t.ORD_DATE, 'DD') = 17;

--P11
SELECT e.LAST_NAME, e.FIRST_NAME, f.SALARY, f.BONUS
FROM EMPLOYEE_TBL e
right OUTER JOIN EMPLOYEE_PAY_TBL f ON (e.EMP_ID = f.EMP_ID)
WHERE f.SALARY < 32000 AND f.BONUS * 17 < 32000;

--P12
SELECT e.LAST_NAME, e.FIRST_NAME, o.QTY
FROM EMPLOYEE_TBL e
LEFT OUTER JOIN ORDERS_TBL o ON (e.EMP_ID = o.SALES_REP)
WHERE o.QTY > 50 OR nvl(o.QTY, -1) = -1;

--P13
SELECT e.LAST_NAME, e.FIRST_NAME, f.SALARY, o.ORD_DATE
FROM EMPLOYEE_TBL e
JOIN EMPLOYEE_PAY_TBL f ON (f.EMP_ID = e.EMP_ID)
JOIN ORDERS_TBL o ON (e.EMP_ID = o.SALES_REP)
WHERE e.EMP_ID IN (SELECT o1.SALES_REP FROM ORDERS_TBL o1
WHERE o.ORD_NUM <> o1.ORD_NUM) AND 
o.ORD_DATE >= ALL (SELECT o2.ORD_DATE 
FROM ORDERS_TBL o2
WHERE o2.SALES_REP = o.SALES_REP);

--P14
SELECT p.PROD_DESC, p.COST
FROM PRODUCTS_TBL p
WHERE p.COST > (SELECT AVG(p1.COST) FROM PRODUCTS_TBL p1);

--P15
SELECT e.LAST_NAME, e.FIRST_NAME, f.SALARY, f.BONUS, (SELECT SUM (nvl(SALARY, 0)) FROM EMPLOYEE_PAY_TBL) "SALARIU TOTAL",
(SELECT SUM (nvl(BONUS, 0)) FROM EMPLOYEE_PAY_TBL) "BONUS TOTAL"
FROM EMPLOYEE_TBL e
FULL OUTER JOIN EMPLOYEE_PAY_TBL f ON (f.EMP_ID = e.EMP_ID);

--P16
SELECT distinct e.CITY, e.LAST_NAME, e.FIRST_NAME, (select count(1) from ORDERS_TBL where SALES_REP = e.EMP_ID)"Numar comenzi"
FROM EMPLOYEE_TBL e
FULL OUTER JOIN ORDERS_TBL o ON (o.SALES_REP = e.EMP_ID)
WHERE (SELECT COUNT(o1.SALES_REP) from ORDERS_TBL o1
WHERE o1.sales_rep = o.sales_rep) >= ALL (SELECT COUNT(o1.SALES_REP) 
from ORDERS_TBL o1
WHERE o1.sales_rep = o.sales_rep)
order by 4 desc;

--P17
SELECT e.EMP_ID, e.LAST_NAME, e.FIRST_NAME, (SELECT COUNT(o1.SALES_REP) from ORDERS_TBL o1
WHERE o1.sales_rep = e.EMP_ID AND to_char(o1.ORD_DATE, 'MM') = 9) "Sept",
(SELECT COUNT(o1.SALES_REP) from ORDERS_TBL o1
WHERE o1.sales_rep = e.EMP_ID AND to_char(o1.ORD_DATE, 'MM') = 10) "Oct",
(select count(1) from ORDERS_TBL where SALES_REP = e.EMP_ID)"Total comenzi"
FROM EMPLOYEE_TBL e
order by 6 desc;

--P18
SELECT c.CUST_NAME, c.CUST_CITY, c.CUST_ADDRESS
FROM CUSTOMER_TBL c
WHERE (SELECT COUNT(1) FROM ORDERS_TBL o WHERE o.CUST_ID = c.CUST_ID) = 0 AND
substr(c.CUST_ADDRESS,1,1) BETWEEN '0' AND '9' ;

--P19
select e.EMP_ID, e.LAST_NAME, e.CITY, c.CUST_ID, c.CUST_NAME, c.CUST_CITY
from EMPLOYEE_TBL e
JOIN ORDERS_TBL o ON (o.SALES_REP = e.EMP_ID) 
JOIN CUSTOMER_TBL c ON (o.CUST_ID = c.CUST_ID)
WHERE c.CUST_CITY <> e.CITY;

--P20
select sum(nvl(e.SALARY, 0)) / count(nvl(e.SALARY, 1)) "Medie"
from EMPLOYEE_PAY_TBL e
where e.SALARY is not null;

--P21
--a --> se cere id-ul si numele clentilor care au o comanda cu numarul de facutra /de comanda = 16C17
-- este corect folosi = deoarece se presupune ca exista doar o facura (sau niciuna) cu numarul 16C17
SELECT CUST_ID, CUST_NAME
FROM CUSTOMER_TBL
WHERE CUST_ID = (SELECT CUST_ID
FROM ORDERS_TBL
WHERE ORD_NUM = '16C17');
--b --> se cere id-ul si salariu angajatilor care au salariul intre 20000 si 40000
-- este incorect folosi = deoarece se poate intampla sa existe mai sumti salariati cu venitul de 40000
-- caz in care operatorul logic AND va da fail
SELECT EMP_ID, SALARY
FROM EMPLOYEE_PAY_TBL
WHERE SALARY BETWEEN '20000' 
AND (SELECT SALARY
FROM EMPLOYEE_TBL
WHERE SALARY = '40000');

--P22
SELECT e.LAST_NAME, f.PAY_RATE
FROM EMPLOYEE_TBL e
JOIN EMPLOYEE_PAY_TBL f ON (e.EMP_ID = f.EMP_ID)
WHERE nvl(f.PAY_RATE, 0) >= ALL(SELECT nvl(g.PAY_RATE, 0) 
FROM EMPLOYEE_PAY_TBL g 
JOIN EMPLOYEE_TBL h ON (h.EMP_ID = g.emp_ID)
WHERE lower(h.last_name) LIKE '%ll%');




