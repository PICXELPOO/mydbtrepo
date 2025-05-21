{{ config(materialized='ephemeral') }}

SELECT 
    deptno, 
    AVG(sal) AS avg_sal
FROM RAW_DATA.employee
GROUP BY deptno