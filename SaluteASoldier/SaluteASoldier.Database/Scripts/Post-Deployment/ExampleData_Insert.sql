delete from [dbo].[MessageAssignment]
delete from [dbo].[Message]
delete from [dbo].[User]
delete from [dbo].[UserType]
INSERT [dbo].[UserType] ([ID], [Name], [CanReceive]) VALUES (1, N'Civilian', 0)
INSERT [dbo].[UserType] ([ID], [Name], [CanReceive]) VALUES (2, N'Active Duty', 1)
INSERT [dbo].[UserType] ([ID], [Name], [CanReceive]) VALUES (3, N'Veteran', 1)
INSERT [dbo].[UserType] ([ID], [Name], [CanReceive]) VALUES (4, N'Wounded Warrior', 1)
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([ID], [Name], [Type]) VALUES (1, N'Georgia183', 1)
INSERT [dbo].[User] ([ID], [Name], [Type]) VALUES (2, N'Alabama143', 2)
INSERT [dbo].[User] ([ID], [Name], [Type]) VALUES (4, N'Oregon224', 3)
INSERT [dbo].[User] ([ID], [Name], [Type]) VALUES (6, N'Maryland093', 4)
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[Message] ON
INSERT [dbo].[Message] ([ID], [Text], [Screened], [Originator], [SubmissionDate], [Destination]) VALUES (1, N'Thank you so much for fighting for our country. You are the true reason for this holiday. You are the reason we are free to have it.', 1, 1, CAST(0x0000A11100000000 AS DateTime), 3)
INSERT [dbo].[Message] ([ID], [Text], [Screened], [Originator], [SubmissionDate], [Destination]) VALUES (2, N'I just wanted to take a moment to salute you today! Thank you for your service, now & always.', 1, 1, CAST(0x0000A11100000000 AS DateTime), 2)
INSERT [dbo].[Message] ([ID], [Text], [Screened], [Originator], [SubmissionDate], [Destination]) VALUES (5, N'I know you don''t know me and I don''t know you, but from one soldier to another....stay strong.', 1, 4, CAST(0x0000A11100000000 AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[Message] OFF
SET IDENTITY_INSERT [dbo].[MessageAssignment] ON
INSERT [dbo].[MessageAssignment] ([ID], [MessageID], [UserID], [Unread]) VALUES (1, 1, 4, 1)
INSERT [dbo].[MessageAssignment] ([ID], [MessageID], [UserID], [Unread]) VALUES (2, 2, 2, 1)
INSERT [dbo].[MessageAssignment] ([ID], [MessageID], [UserID], [Unread]) VALUES (5, 5, 2, 1)
SET IDENTITY_INSERT [dbo].[MessageAssignment] OFF
