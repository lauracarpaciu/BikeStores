CREATE TABLE [production].[part_prices] (
    [part_id]    INT             NOT NULL,
    [valid_from] DATE            NOT NULL,
    [price]      DECIMAL (18, 4) NOT NULL,
    PRIMARY KEY CLUSTERED ([part_id] ASC, [valid_from] ASC)
);
GO

