CREATE TABLE [sales].[customers] (
    [customer_id] INT           IDENTITY (1, 1) NOT NULL,
    [first_name]  VARCHAR (255) NOT NULL,
    [last_name]   VARCHAR (255) NOT NULL,
    [phone]       VARCHAR (25)  NULL,
    [email]       VARCHAR (255) NOT NULL,
    [street]      VARCHAR (255) NULL,
    [city]        VARCHAR (50)  NULL,
    [state]       VARCHAR (25)  NULL,
    [zip_code]    VARCHAR (5)   NULL,
    PRIMARY KEY CLUSTERED ([customer_id] ASC)
);


GO


CREATE NONCLUSTERED INDEX [ix_customers_name]
    ON [sales].[customers]([last_name] ASC, [first_name] ASC);
GO


CREATE UNIQUE NONCLUSTERED INDEX [ix_cust_email]
    ON [sales].[customers]([email] ASC);
GO


CREATE UNIQUE NONCLUSTERED INDEX [ix_cust_email_inc]
    ON [sales].[customers]([email] ASC)
    INCLUDE([first_name], [last_name]);
GO


CREATE NONCLUSTERED INDEX [ix_cust_phone]
    ON [sales].[customers]([phone] ASC) WHERE ([phone] IS NOT NULL);
GO


CREATE NONCLUSTERED INDEX [ix_customers_city]
    ON [sales].[customers]([city] ASC);
GO

