CREATE TABLE [dbo].[UserType] (
    [ID]         INT           NOT NULL,
    [Name]       NVARCHAR (50) NOT NULL,
    [CanReceive] BIT           NOT NULL,
    CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED ([ID] ASC)
);

