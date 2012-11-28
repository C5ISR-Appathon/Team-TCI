CREATE TABLE [dbo].[Message] (
    [ID]             INT      IDENTITY (1, 1) NOT NULL,
    [Text]           NTEXT    NOT NULL,
    [Screened]       BIT      NOT NULL,
    [Originator]     INT      NOT NULL,
    [SubmissionDate] DATETIME NOT NULL,
    [Destination]    INT      NOT NULL,
    CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Message_User] FOREIGN KEY ([Originator]) REFERENCES [dbo].[User] ([ID]),
    CONSTRAINT [FK_Message_UserType] FOREIGN KEY ([Destination]) REFERENCES [dbo].[UserType] ([ID])
);



