SELECT 
    e.*, 
    a.avg_sal
FROM RAW_DATA.employee e
INNER JOIN {{ ref('avg_sal') }} a
    ON a.deptno = e.deptno
    AND e.sal > a.avg_sal
