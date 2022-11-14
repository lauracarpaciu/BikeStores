CREATE PROCEDURE [dbo].[uspFindStores](

    @name AS VARCHAR(max)
)
AS
BEGIN
    SELECT
        store_name,
        city
       
    FROM 
        sales.stores
    WHERE
        
        store_name LIKE '%' + @name + '%'
    ORDER BY
        store_name;
END;
GO

