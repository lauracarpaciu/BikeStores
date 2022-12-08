SELECT 
    category_name,
    year,
    qty,
    FIRST_VALUE(category_name) OVER(
        PARTITION BY year
        ORDER BY qty
    ) lowest_sales_volume
FROM 
    sales.vw_category_sales_volume
WHERE
    year BETWEEN 2016 AND 2017;


SELECT 
    category_name,
    year,
    qty,
    LAST_VALUE(category_name) OVER(
			PARTITION BY year
        ORDER BY qty
        RANGE BETWEEN 
            UNBOUNDED PRECEDING AND 
            UNBOUNDED FOLLOWING
    ) highest_sales_volume
FROM 
    sales.vw_category_sales_volume
WHERE
    year IN (2016,2017);    