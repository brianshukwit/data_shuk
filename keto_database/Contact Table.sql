--Contact Table
USE [KETO_CWDB]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 11/7/2020 3:00:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[contact_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](100) NULL,
	[last_name] [varchar](100) NULL,
	[mobile] [varchar](100) NULL,
	[office_phone] [varchar](100) NULL,
	[do_not_call] [int] NOT NULL,
	[contact_description] [varchar](1500) NULL,
	[contact_fax] [varchar](100) NULL,
	[department] [varchar](255) NULL,
	[contact_city] [varchar](100) NULL,
	[contact_country] [varchar](50) NULL,
	[contact_postal] [varchar](100) NULL,
	[contact_state] [varchar](100) NULL,
	[contact_street] [varchar](200) NULL,
	[title] [varchar](255) NULL,
	[date_created] [smalldatetime] NOT NULL,
	[account_id] [int] NULL,
	[email_address] [varchar](255) NULL,
PRIMARY KEY CLUSTERED
(
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([account_id])
GO