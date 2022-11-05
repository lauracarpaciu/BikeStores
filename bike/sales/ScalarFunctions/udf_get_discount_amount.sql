CREATE FUNCTION sales.udf_get_discount_amount (
    @quantity INT,
    @list_price DEC(10,2),
    @discount DEC(4,2) 
)
RETURNS DEC(10,2) 
WITH SCHEMABINDING
AS 
BEGIN
    RETURN @quantity * @list_price * @discount
END
GO

