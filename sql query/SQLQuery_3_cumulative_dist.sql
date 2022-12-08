WITH cte_sales AS (
    SELECT 
        CONCAT_WS(' ',first_name,last_name) full_name,
        net_sales, 
        year,
        CUME_DIST() OVER (
            PARTITION BY year
            ORDER BY net_sales DESC
        ) cume_dist
    FROM 
        sales.vw_staff_sales t
        INNER JOIN sales.staffs m  
            ON m.staff_id = t.staff_id
    WHERE 
        year IN (2016,2017)
)
SELECT 
    * 
FROM 
    cte_sales
WHERE 
    cume_dist <= 0.20;