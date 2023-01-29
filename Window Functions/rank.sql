SELECT 
    emp_no, 
    department, 
    salary, 
    ROW_NUMBER() OVER(PARTITION BY department ORDER BY SALARY DESC) as dept_row_number,
    RANK() OVER(PARTITION BY department ORDER BY SALARY) AS dept_salary_rank,
    RANK() OVER(ORDER BY salary DESC) AS overall_rank,
    DENSE_RANK() OVER(ORDER BY salary DESC) AS overall_salary_dense_rank,
    ROW_NUMBER() OVER(ORDER BY salary DESC) as overall_num
FROM employees;

