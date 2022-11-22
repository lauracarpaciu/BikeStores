CREATE TABLE [marketing].[vendors] (
    [vendor_id]   INT           IDENTITY (1, 1) NOT NULL,
    [vendor_name] VARCHAR (100) NOT NULL,
    [group_id]    INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([vendor_id] ASC)
);


GO

