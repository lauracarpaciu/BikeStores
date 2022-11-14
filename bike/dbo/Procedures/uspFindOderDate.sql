CREATE PROCEDURE uspFindOderDate(
    @min_order_date AS date = '2016-01-01'
    ,@max_order_date AS date = '2019-01-01'
    ,@shipped_date AS date = '2019-01-01'
)
AS
BEGIN
    SELECT
        shipped_date,
        order_date
    FROM 
        sales.orders
    WHERE
        order_date >= @min_order_date AND
        order_date <= @max_order_date AND
        shipped_date <@shipped_date
    ORDER BY
        order_date;
END;
GO

