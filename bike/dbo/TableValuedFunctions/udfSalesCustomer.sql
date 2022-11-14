CREATE FUNCTION udfSalesCustomer (
    @start_city VARCHAR,
    @end_city VARCHAR
)
RETURNS TABLE
AS
RETURN
    SELECT 
        street,
        city,
        state
    FROM
        sales.customers
    WHERE
        city BETWEEN @start_city AND @end_city
GO

