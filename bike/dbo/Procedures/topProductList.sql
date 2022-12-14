
CREATE PROCEDURE [dbo].[topProductList]
AS
BEGIN
    DECLARE @name VARCHAR(MAX);

    SELECT TOP 100
        @name = product_name
    FROM
        production.products
    ORDER BY
        list_price DESC;
    
    IF @@ROWCOUNT <> 0
    BEGIN
        PRINT 'The most expensive product is ' + @name
    END
    ELSE
    BEGIN
        PRINT 'No product found';
    END;
END
GO

