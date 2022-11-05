CREATE TABLE [production].[products] (
    [product_id]   INT             IDENTITY (1, 1) NOT NULL,
    [product_name] VARCHAR (255)   NOT NULL,
    [brand_id]     INT             NOT NULL,
    [category_id]  INT             NOT NULL,
    [model_year]   SMALLINT        NOT NULL,
    [list_price]   DECIMAL (10, 2) NOT NULL,
    PRIMARY KEY CLUSTERED ([product_id] ASC),
    FOREIGN KEY ([brand_id]) REFERENCES [production].[brands] ([brand_id]) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY ([category_id]) REFERENCES [production].[categories] ([category_id]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO


CREATE TRIGGER production.trg_product_audit
ON production.products
AFTER INSERT, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO production.product_audits(
        product_id, 
        product_name,
        brand_id,
        category_id,
        model_year,
        list_price, 
        updated_at, 
        operation
    )
    SELECT
        i.product_id,
        product_name,
        brand_id,
        category_id,
        model_year,
        i.list_price,
        GETDATE(),
        'INS'
    FROM
        inserted i
    UNION ALL
    SELECT
        d.product_id,
        product_name,
        brand_id,
        category_id,
        model_year,
        d.list_price,
        GETDATE(),
        'DEL'
    FROM
        deleted d;
END
GO

