CREATE TABLE [customer_banca].[jobs] (
    [job_id]      INT           IDENTITY (1, 1) NOT NULL,
    [customer_id] INT           NOT NULL,
    [description] VARCHAR (200) NULL,
    [created_at]  DATETIME2 (7) NOT NULL,
    PRIMARY KEY CLUSTERED ([job_id] ASC)
);


GO

