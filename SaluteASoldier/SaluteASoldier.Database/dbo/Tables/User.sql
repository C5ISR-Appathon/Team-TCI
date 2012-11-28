CREATE TABLE [dbo].[User] (
    [ID]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (50) NOT NULL,
    [Type] INT           NOT NULL,
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_User_UserType] FOREIGN KEY ([Type]) REFERENCES [dbo].[UserType] ([ID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Account]
    ON [dbo].[User]([Name] ASC);

