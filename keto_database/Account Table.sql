-- Account Table
USE [KETO_CWDB]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/7/2020 2:23:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[account_name] [varchar](255) NOT NULL,
	[url] [varchar](255) NOT NULL,
	[admin_password] [varchar](255) NOT NULL,
	[date_created] [smalldatetime] NOT NULL,
	[database_name] [varchar](100) NOT NULL,
	[timesheet_type] [varchar](100) NOT NULL,
	[setup_rep] [varchar](50) NOT NULL,
	[pay_period_type] [varchar](50) NOT NULL,
	[clockwise_pricing] [int] NOT NULL,
	[hosted_server] [varchar](100) NOT NULL,
	[date_active] [smalldatetime] NOT NULL,
	[date_inactive] [smalldatetime] NULL,
	[version] [varchar](50) NULL,
PRIMARY KEY CLUSTERED
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO