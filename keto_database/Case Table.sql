--Case Table

USE [KETO_CWDB]
GO
/****** Object:  Table [dbo].[Cases]    Script Date: 11/7/2020 2:48:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cases](
	[case_id] [int] IDENTITY(1,1) NOT NULL,
	[case_number] [varchar](100) NULL,
	[subject] [varchar](150) NULL,
	[date_created] [smalldatetime] NULL,
	[date_closed] [smalldatetime] NULL,
	[request_type] [varchar](100) NULL,
	[source_type] [varchar](100) NULL,
	[case_type] [varchar](100) NULL,
	[account_id] [int] NOT NULL,
	[contact_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[case_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cases]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO
ALTER TABLE [dbo].[Cases]  WITH CHECK ADD FOREIGN KEY([contact_id])
REFERENCES [dbo].[Contact] ([contact_id])
GO