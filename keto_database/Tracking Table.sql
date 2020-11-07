--Tracking Table
USE [KETO_CWDB]
GO
/****** Object:  Table [dbo].[Tracking]    Script Date: 11/7/2020 3:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tracking](
	[tracking_id] [int] IDENTITY(1,1) NOT NULL,
	[table_name] [varchar](50) NOT NULL,
	[column_name] [varchar](50) NOT NULL,
	[date_updated] [smalldatetime] NOT NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED
(
	[tracking_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tracking]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO