CREATE TABLE [dbo].[MessageAssignment] (
    [ID]        INT IDENTITY (1, 1) NOT NULL,
    [MessageID] INT NOT NULL,
    [UserID]    INT NOT NULL,
    CONSTRAINT [FK_MessageAssignment_Message] FOREIGN KEY ([MessageID]) REFERENCES [dbo].[Message] ([ID]),
    CONSTRAINT [FK_MessageAssignment_User] FOREIGN KEY ([UserID]) REFERENCES [dbo].[User] ([ID]),
    CONSTRAINT [IX_MessageAssignment] UNIQUE NONCLUSTERED ([MessageID] ASC, [UserID] ASC)
);

