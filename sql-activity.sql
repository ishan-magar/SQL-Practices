-- 1 employee in chicago 
Select emp.ename, dept.location
from emp
join dept on emp.deptno=dept.deptno
where dept.location= 'Chicago';

-- 2 Avg salary of emp in each department
Select deptno, Avg(sal) AS avg_salary
FROM emp
GROUP BY deptno
ORDER BY avg_salary DESC;

--3 Manager with r in name
SELECT ename, job
FROM emp
WHERE job = 'MANAGER' AND ename LIKE '%R%';

--4 lowest salary
select deptno, Min(sal) as min_salary
from emp
group by deptno
order by deptno asc;
--5 emp working as manager analyst or clerk
Select ename, job
From emp
where job IN ('MANAGER', 'ANALYST', 'CLERK');

--6 name of all employees whose salary is greater that 1000
Select ename, sal
From emp
Where sal > 1000;
--7 count of employees in each dept--
Select deptno, COUNT(*) AS num_employees
From emp
Group By deptno;

--8
Update emp
Set sal = sal * 1.10
Where deptno = 10;

--9 
Select ename, job
From emp
Where mgr is null;

--10
Select deptno, avg(sal) as avg_salary
from emp
group by deptno;

--11
Select deptno, count(*) as num_employees
from emp
group by deptno
having count(*) > 5;
--12
update emp
set sal = 500
where mgr is null;

--13
SELECT ename
FROM emp
WHERE ename LIKE 'J%';

--14
SELECT deptno, SUM(sal) AS total_salary
FROM emp
GROUP BY deptno;

--15
SELECT ename, job
FROM emp
WHERE deptno <> 30;

--16


--17
Select job, Count(*) AS num_employees
From emp
GROUP BY job
HAVING COUNT(*) >= 3;


--18
Select (max(sal) - min(sal)) as salary_difference
from emp;

--19
Select ename
from emp
where ename LIKE '_a%';

-- QandA
-- number of emp working in chicago
Select emp.ename , dept.location 
from emp
inner join dept on dept.DEPTNO = emp.deptno
where location = 'Chicago';

-- avg salary of employees from each job title
Select job ,avg(sal) as avg_salary
from emp
group by job;

--number of employees from each department

Select Count(emp.empno) , dept.dname
from emp 
Left Join dept on dept.deptno = emp.deptno
group by dept.dname ; 

--Display the total salary by each job title.
