SELECT 
   first_name, 
   last_name, 
   city,
   ROW_NUMBER() OVER (
      PARTITION BY city
      ORDER BY first_name
   ) row_num
FROM 
   sales.customers
ORDER BY 
   city;


WITH cte_customers AS (
    SELECT 
        ROW_NUMBER() OVER(
             ORDER BY 
                first_name, 
                last_name
        ) row_num, 
        customer_id, 
        first_name, 
        last_name
     FROM 
        sales.customers
) SELECT 
    customer_id, 
    first_name, 
    last_name
FROM 
    cte_customers
WHERE 
    row_num > 20 AND 
    row_num <= 30;   