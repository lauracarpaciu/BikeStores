CREATE TABLE [marketing].[events] (
    [event_id]   INT            NOT NULL,
    [event_name] VARCHAR (255)  NULL,
    [start_date] DATE           NOT NULL,
    [duration]   DECIMAL (5, 2) NULL,
    PRIMARY KEY CLUSTERED ([event_id] ASC)
);


GO

