--ClockwiseData Table
USE [KETO_CWDB]
GO
/****** Object:  Table [dbo].[ClockwiseData]    Script Date: 11/7/2020 2:51:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClockwiseData](
	[account_id] [int] NULL,
	[accounting_system] [varchar](50) NULL,
	[clock_quantity] [int] NULL,
	[clock_orders] [varchar](500) NULL,
	[account_description] [varchar](1500) NULL,
	[employees] [int] NULL,
	[hr] [int] NOT NULL,
	[paystubs] [int] NOT NULL,
	[paystub_only] [int] NOT NULL,
	[recruiting_staffing] [int] NOT NULL,
	[timesheets] [int] NOT NULL,
	[payroll_software] [varchar](50) NULL,
	[qb_account_number] [varchar](50) NULL,
	[w2] [int] NOT NULL,
	[full_package] [int] NOT NULL,
	[leave_management] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ClockwiseData]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO