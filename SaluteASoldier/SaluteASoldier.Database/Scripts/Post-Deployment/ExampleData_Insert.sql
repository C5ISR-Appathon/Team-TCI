delete from [dbo].[MessageAssignment]
delete from [dbo].[Message]
delete from [dbo].[User]
delete from [dbo].[UserType]
INSERT [dbo].[UserType] ([ID], [Name], [CanReceive]) VALUES (1, N'Civilian', 0)
INSERT [dbo].[UserType] ([ID], [Name], [CanReceive]) VALUES (2, N'Active Duty', 1)
INSERT [dbo].[UserType] ([ID], [Name], [CanReceive]) VALUES (3, N'Veteran', 1)
INSERT [dbo].[UserType] ([ID], [Name], [CanReceive]) VALUES (4, N'Wounded Warrior', 1)
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([ID], [Name], [Type]) VALUES (1, N'Demo Civilian User', 1)
INSERT [dbo].[User] ([ID], [Name], [Type]) VALUES (2, N'Demo Active Duty User', 2)
INSERT [dbo].[User] ([ID], [Name], [Type]) VALUES (4, N'Demo Veteran User', 3)
INSERT [dbo].[User] ([ID], [Name], [Type]) VALUES (6, N'Demo Wounded Warrior User', 4)
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[Message] ON
INSERT [dbo].[Message] ([ID], [Text], [Screened], [Originator], [SubmissionDate], [Destination]) VALUES (1, N'Thank you so much for fighting for our country. You are the true reason for this holiday. You are the reason we are free to have it.', 1, 1, CAST(0x0000A11100000000 AS DateTime), 3)
INSERT [dbo].[Message] ([ID], [Text], [Screened], [Originator], [SubmissionDate], [Destination]) VALUES (2, N'I just wanted to take a moment to salute you today! Thank you for your service, now & always.', 1, 1, CAST(0x0000A11100000000 AS DateTime), 2)
INSERT [dbo].[Message] ([ID], [Text], [Screened], [Originator], [SubmissionDate], [Destination]) VALUES (5, N'You don''t know me and I don''t know you, but I''ve been there and from one soldier to another....stay strong.', 1, 4, CAST(0x0000A11100000000 AS DateTime), 2)
INSERT [dbo].[Message] ([ID], [Text], [Screened], [Originator], [SubmissionDate], [Destination]) VALUES (6, N'You will always be remembered with respect and admiration.', 1, 1, CAST(0x0000A11100000000 AS DateTime), 3)
INSERT [dbo].[Message] ([ID], [Text], [Screened], [Originator], [SubmissionDate], [Destination]) VALUES (7, N'Thank you for your service for our Freedom! May we never forget why we are free, thank you for making this possible!!!', 1, 1, CAST(0x0000A11100000000 AS DateTime), 2)
INSERT [dbo].[Message] ([ID], [Text], [Screened], [Originator], [SubmissionDate], [Destination]) VALUES (8, N'Thank you for your service for our Freedom! May we never forget why we are free, thank you for making this possible!!!', 1, 1, CAST(0x0000A11100000000 AS DateTime), 3)
INSERT [dbo].[Message] ([ID], [Text], [Screened], [Originator], [SubmissionDate], [Destination]) VALUES (9, N'I owe a never-ending debt of gratitude to you for your service and the sacrifices that you have made.', 1, 1, CAST(0x0000A11100000000 AS DateTime), 3)
INSERT [dbo].[Message] ([ID], [Text], [Screened], [Originator], [SubmissionDate], [Destination]) VALUES (10, N'Thank you for your service for our Freedom! May we never forget why we are free, thank you for making this possible!!!', 1, 1, CAST(0x0000A11100000000 AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[Message] OFF
SET IDENTITY_INSERT [dbo].[MessageAssignment] ON
INSERT [dbo].[MessageAssignment] ([ID], [MessageID], [UserID], [Unread]) VALUES (1, 1, 4, 1)
INSERT [dbo].[MessageAssignment] ([ID], [MessageID], [UserID], [Unread]) VALUES (2, 2, 2, 1)
INSERT [dbo].[MessageAssignment] ([ID], [MessageID], [UserID], [Unread]) VALUES (5, 5, 2, 1)
INSERT [dbo].[MessageAssignment] ([ID], [MessageID], [UserID], [Unread]) VALUES (6, 6, 4, 1)
INSERT [dbo].[MessageAssignment] ([ID], [MessageID], [UserID], [Unread]) VALUES (7, 7, 2, 1)
INSERT [dbo].[MessageAssignment] ([ID], [MessageID], [UserID], [Unread]) VALUES (8, 8, 4, 1)
INSERT [dbo].[MessageAssignment] ([ID], [MessageID], [UserID], [Unread]) VALUES (9, 9, 4, 1)
INSERT [dbo].[MessageAssignment] ([ID], [MessageID], [UserID], [Unread]) VALUES (10, 10, 6, 1)
SET IDENTITY_INSERT [dbo].[MessageAssignment] OFF
