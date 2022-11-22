CREATE TABLE [marketing].[persons] (
    [person_id]    INT            IDENTITY (1, 1) NOT NULL,
    [first_name]   NVARCHAR (100) NOT NULL,
    [last_name]    NVARCHAR (100) NOT NULL,
    [dob]          DATE           NULL,
    [full_name]    NVARCHAR (201) NOT NULL,
    [age_in_years] INT            NULL
);


GO

