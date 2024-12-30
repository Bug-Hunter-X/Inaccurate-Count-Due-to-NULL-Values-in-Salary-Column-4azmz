```sql
SELECT COUNT(*) FROM employees WHERE department_id = 10 AND salary > 100000 AND salary IS NOT NULL;
```
This revised query explicitly checks for non-NULL values in the salary column using `salary IS NOT NULL`.  This ensures only employees with a defined salary greater than 100000 are counted, producing the correct result.