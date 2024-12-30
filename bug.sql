```sql
SELECT COUNT(*) FROM employees WHERE department_id = 10 AND salary > 100000;
```
This query might return unexpected results if the `salary` column allows NULL values.  If an employee has a NULL salary, the comparison `salary > 100000` will evaluate to neither true nor false (it's UNKNOWN in SQL), and such rows will be excluded from the count even if they are in department 10. 