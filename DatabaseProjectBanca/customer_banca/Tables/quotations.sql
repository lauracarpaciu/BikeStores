CREATE TABLE [customer_banca].[quotations] (
    [quotation_no]  INT             IDENTITY (1, 1) NOT NULL,
    [valid_from]    DATE            NOT NULL,
    [valid_to]      DATE            NOT NULL,
    [amount]        DECIMAL (10, 2) NOT NULL,
    [customer_name] VARCHAR (50)    NOT NULL,
    PRIMARY KEY CLUSTERED ([quotation_no] ASC)
);


GO

