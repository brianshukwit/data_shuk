--SocialMedia Table
USE [KETO_CWDB]
GO
/****** Object:  Table [dbo].[SocialMedia]    Script Date: 11/7/2020 3:17:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialMedia](
	[social_id] [int] IDENTITY(1,1) NOT NULL,
	[facebook] [varchar](255) NULL,
	[twitter] [varchar](255) NULL,
	[googleplus] [varchar](255) NULL,
	[instagram] [varchar](255) NULL,
	[linkedin] [varchar](255) NULL,
	[account_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[social_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SocialMedia]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO