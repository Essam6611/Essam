USE [Roads_Bridges]
GO

/****** Object:  Table [dbo].[Company]    Script Date: 10/29/2016 10:06:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Company](
	[Com_name] [nvarchar](50) NULL,
	[segel_togary] [nvarchar](50) NULL,
	[Com_Address] [nvarchar](200) NULL,
	[Com_phone] [varchar](50) NULL,
	[Com_Code] [varchar](10) NOT NULL,
	[image] [image] NULL,
	[city] [nvarchar](50) NULL,
	[tax] [nvarchar](50) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Com_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


