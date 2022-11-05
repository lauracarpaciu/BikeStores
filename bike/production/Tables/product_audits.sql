CREATE TABLE [production].[product_audits] (
    [change_id]    INT             IDENTITY (1, 1) NOT NULL,
    [product_id]   INT             NOT NULL,
    [product_name] VARCHAR (255)   NOT NULL,
    [brand_id]     INT             NOT NULL,
    [category_id]  INT             NOT NULL,
    [model_year]   SMALLINT        NOT NULL,
    [list_price]   DECIMAL (10, 2) NOT NULL,
    [updated_at]   DATETIME        NOT NULL,
    [operation]    CHAR (3)        NOT NULL,
    PRIMARY KEY CLUSTERED ([change_id] ASC),
    CHECK ([operation]='INS' OR [operation]='DEL')
);
GO

