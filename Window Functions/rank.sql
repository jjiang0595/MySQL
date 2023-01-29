SELECT 
    emp_no, 
    department, 
    salary, 
    RANK() OVER(PARTITION BY department ORDER BY SALARY) as dept_salary_rank,
    RANK() OVER(ORDER BY salary DESC) as overall_salary_rank
FROM employees;

