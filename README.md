# SQL Query Bug: Inaccurate Count with NULL Values

This repository demonstrates a common SQL query error where the presence of NULL values in a column can lead to unexpected and inaccurate results.

## Bug Description
The provided SQL query aims to count the number of employees in a specific department with salaries exceeding a certain threshold. However, it fails to account for employees with NULL salary values, leading to an undercount.

## Bug Reproduction
1. Create a table with an `employees` table containing columns `department_id` and `salary` (including at least one employee with a NULL salary).
2. Execute the provided `bug.sql` query. 
3. The returned count will be lower than expected if `NULL` values exist for the `salary` column.

## Solution
The `bugSolution.sql` file demonstrates a corrected query using the `IS NOT NULL` condition to specifically handle NULL values and obtain the accurate employee count.

## Conclusion
The presence of NULL values can significantly impact SQL queries.  Proper handling of NULLs (using `IS NULL`, `IS NOT NULL`, or `COALESCE`) is crucial to prevent such errors and produce accurate query results.