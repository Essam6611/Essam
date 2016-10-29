USE [Roads_Bridges]
GO

/****** Object:  Table [dbo].[AD]    Script Date: 10/29/2016 10:06:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[AD](
	[Ad_type] [nvarchar](50) NULL,
	[Section] [varchar](50) NULL,
	[Direction] [varchar](10) NULL,
	[BeginDate] [date] NULL,
	[EndDate] [date] NULL,
	[Ad_Code] [varchar](50) NOT NULL,
	[Length] [int] NULL,
	[Width] [int] NULL,
	[Faces] [varchar](50) NULL,
	[AD_num] [varchar](50) NULL,
	[description] [nvarchar](2000) NULL,
	[memo] [nvarchar](2000) NULL,
	[city] [nvarchar](50) NULL,
	[com_code] [varchar](10) NULL,
	[com_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_AD] PRIMARY KEY CLUSTERED 
(
	[Ad_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[AD]  WITH CHECK ADD  CONSTRAINT [FK_AD_Company] FOREIGN KEY([com_code])
REFERENCES [dbo].[Company] ([Com_Code])
GO

ALTER TABLE [dbo].[AD] CHECK CONSTRAINT [FK_AD_Company]
GO


