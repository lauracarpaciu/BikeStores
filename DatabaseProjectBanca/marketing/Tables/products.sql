CREATE TABLE [marketing].[products] (
    [product_id]       INT             IDENTITY (1, 1) NOT NULL,
    [product_name]     VARCHAR (255)   NOT NULL,
    [unit_price]       DECIMAL (10, 2) NULL,
    [discounted_price] DECIMAL (10, 2) NULL,
    PRIMARY KEY CLUSTERED ([product_id] ASC),
    CHECK ([discounted_price]>(0)),
    CHECK ([unit_price]>(0)),
    CONSTRAINT [valid_prices] CHECK ([discounted_price]>[unit_price])
);


GO

