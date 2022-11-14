CREATE FUNCTION udfProductInCatID (
    @category_id INT
)
RETURNS TABLE
AS
RETURN
    SELECT 
        product_name,
        model_year,
        category_id
    FROM
        production.products
    WHERE
        category_id = @category_id;
GO

