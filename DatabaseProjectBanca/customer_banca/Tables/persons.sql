CREATE TABLE [customer_banca].[persons] (
    [person_id]    INT            IDENTITY (1, 1) NOT NULL,
    [first_name]   NVARCHAR (100) NOT NULL,
    [last_name]    NVARCHAR (100) NOT NULL,
    [dob]          DATE           NULL,
    [full_name]    AS             (([first_name]+' ')+[last_name]) PERSISTED NOT NULL,
    [age_in_years] AS             ((CONVERT([int],CONVERT([char](8),getdate(),(112)))-CONVERT([char](8),[dob],(112)))/(10000)),
    PRIMARY KEY CLUSTERED ([person_id] ASC)
);


GO

