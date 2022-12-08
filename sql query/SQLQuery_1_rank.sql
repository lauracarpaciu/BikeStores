SELECT * FROM (
	SELECT
		product_id,
		product_name,
		brand_id,
		list_price,
		RANK () OVER ( 
			PARTITION BY brand_id
			ORDER BY list_price DESC
		) price_rank 
	FROM
		production.products
) t
WHERE price_rank <= 3;

SELECT * FROM (
	SELECT
		product_id,
		product_name,
		category_id,
		list_price,
		DENSE_RANK () OVER ( 
			PARTITION BY category_id
			ORDER BY list_price DESC
		) price_rank 
	FROM
		production.products
) t
WHERE price_rank < 3;

SELECT 
    year,
    CONCAT_WS(' ',first_name,last_name) full_name,
    net_sales, 
    FORMAT(
        PERCENT_RANK() OVER (
            PARTITION BY year
            ORDER BY net_sales DESC
        ) ,
    'P') percent_rank

FROM 
    sales.vw_staff_sales t
INNER JOIN sales.staffs m on m.staff_id = t.staff_id
WHERE 
    YEAR IN (2016,2017);