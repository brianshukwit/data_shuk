-- CustomerData Table
USE [KETO_CWDB]
GO
/****** Object:  Table [dbo].[CustomerData]    Script Date: 11/7/2020 3:05:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerData](
	[account_id] [int] NOT NULL,
	[account_stage] [varchar](100) NULL,
	[account_status] [varchar](100) NULL,
	[funding_type] [varchar](100) NULL,
	[industry] [varchar](255) NULL,
	[new_industry] [varchar](500) NULL,
	[package] [varchar](255) NULL,
	[payment_method] [varchar](100) NULL,
	[sector] [varchar](255) NULL,
	[website] [varchar](200) NULL,
	[ticker_symbol] [varchar](50) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomerData]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO