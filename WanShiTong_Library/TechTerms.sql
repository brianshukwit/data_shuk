USE [WanShiTong_Library]
GO

/****** Object:  Table [dbo].[TechTerms]    Script Date: 11/10/2020 8:51:45 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TechTerms](
	[jargon] [varchar](20) NOT NULL,
	[the_gist] [varchar](100) NOT NULL,
	[full_meaning] [varchar](max) NULL,
	[category] [varchar](50) NULL,
	[like_im_five] [varchar](100) NULL,
	[term_id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


