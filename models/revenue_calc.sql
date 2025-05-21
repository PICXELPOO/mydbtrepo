SELECT 
    prod_name, 
    SUM(quantity * unit_price) AS revenue
FROM 
    RAW_DATA.PRODUCTS_STG AS P
INNER JOIN 
    RAW_DATA.SALES_STG AS S
ON 
    P.prod_id = S.prod_id
GROUP BY 
    prod_name






