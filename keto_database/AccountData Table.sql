--AccountData Table
USE [KETO_CWDB]
GO
/****** Object:  Table [dbo].[AccountData]    Script Date: 11/7/2020 2:31:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountData](
	[account_id] [int] NOT NULL,
	[billing_city] [varchar](200) NULL,
	[billing_country] [varchar](200) NULL,
	[billing_postal] [varchar](55) NULL,
	[billing_state] [varchar](100) NULL,
	[billing_street] [varchar](255) NULL,
	[shipping_city] [varchar](200) NULL,
	[shipping_country] [varchar](200) NULL,
	[shipping_postal] [varchar](55) NULL,
	[shipping_state] [varchar](100) NULL,
	[shipping_street] [varchar](255) NULL,
	[account_fax] [varchar](100) NULL,
	[alt_phone] [varchar](100) NULL,
	[office_phone] [varchar](100) NULL,
	[timezone] [varchar](100) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AccountData]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO