USE [Cnita]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Account] [nvarchar](50) NULL,
	[PassWord] [nvarchar](200) NOT NULL,
	[Organization] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Permissions] [nvarchar](100) NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'PassWord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织机构' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Organization'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Permissions'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User'
GO
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([Id], [Name], [Account], [PassWord], [Organization], [Status], [Permissions], [CreateDate]) VALUES (1, N'admin', N'admin', N'123456', 3, 1, NULL, CAST(0x0000A28D00B37879 AS DateTime))
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[Pictures]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pictures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[CategoryId] [int] NOT NULL,
	[Owner] [int] NULL,
	[PicUri] [nvarchar](100) NOT NULL,
	[PicLink] [nvarchar](100) NULL,
	[Status] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Pictures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pictures', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pictures', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pictures', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'归属' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pictures', @level2type=N'COLUMN',@level2name=N'Owner'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pictures', @level2type=N'COLUMN',@level2name=N'PicUri'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pictures', @level2type=N'COLUMN',@level2name=N'PicLink'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pictures', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pictures', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Pictures'
GO
SET IDENTITY_INSERT [dbo].[Pictures] ON
INSERT [dbo].[Pictures] ([Id], [Name], [CategoryId], [Owner], [PicUri], [PicLink], [Status], [CreateDate]) VALUES (7, N'测试广告', 2, 0, N'', N'http://www.baidu.com', 0, CAST(0x0000A28C00EFB1BE AS DateTime))
INSERT [dbo].[Pictures] ([Id], [Name], [CategoryId], [Owner], [PicUri], [PicLink], [Status], [CreateDate]) VALUES (9, N'默认Banner-图片二', 31, NULL, N'201312082203487246.jpg', N'#', 0, CAST(0x0000A28F009C8E41 AS DateTime))
INSERT [dbo].[Pictures] ([Id], [Name], [CategoryId], [Owner], [PicUri], [PicLink], [Status], [CreateDate]) VALUES (10, N'默认Banner-图片一', 31, NULL, N'201312082203322833.jpg', N'#', 0, CAST(0x0000A28F009C6724 AS DateTime))
INSERT [dbo].[Pictures] ([Id], [Name], [CategoryId], [Owner], [PicUri], [PicLink], [Status], [CreateDate]) VALUES (11, N'展会板块广告图片一', 33, 6, N'201312091331245054.jpg', N'#', 0, CAST(0x0000A28F00DEDC33 AS DateTime))
INSERT [dbo].[Pictures] ([Id], [Name], [CategoryId], [Owner], [PicUri], [PicLink], [Status], [CreateDate]) VALUES (12, N'展会板块广告图片二', 33, 6, N'201312091331536660.jpg', N'#', 0, CAST(0x0000A28F00DEFE55 AS DateTime))
INSERT [dbo].[Pictures] ([Id], [Name], [CategoryId], [Owner], [PicUri], [PicLink], [Status], [CreateDate]) VALUES (13, N'协会通告广告一', 33, 18, N'201312112215567067.jpg', N'#', 0, CAST(0x0000A291016EEDA5 AS DateTime))
INSERT [dbo].[Pictures] ([Id], [Name], [CategoryId], [Owner], [PicUri], [PicLink], [Status], [CreateDate]) VALUES (14, N'协会动态广告图片一', 33, 49, N'201312112313446704.jpg', N'#', 0, CAST(0x0000A291017ECDA9 AS DateTime))
INSERT [dbo].[Pictures] ([Id], [Name], [CategoryId], [Owner], [PicUri], [PicLink], [Status], [CreateDate]) VALUES (15, N'会员风采广告', 33, 52, N'201312112324052326.jpg', N'#', 0, CAST(0x0000A2910181A4E1 AS DateTime))
INSERT [dbo].[Pictures] ([Id], [Name], [CategoryId], [Owner], [PicUri], [PicLink], [Status], [CreateDate]) VALUES (16, N'专家视点广告', 33, 53, N'201312112324437293.jpg', N'#', 0, CAST(0x0000A2910181D204 AS DateTime))
INSERT [dbo].[Pictures] ([Id], [Name], [CategoryId], [Owner], [PicUri], [PicLink], [Status], [CreateDate]) VALUES (17, N'首页幻灯片一', 35, 35, N'201312112345086713.jpg', N'#', 0, CAST(0x0000A29101876D79 AS DateTime))
INSERT [dbo].[Pictures] ([Id], [Name], [CategoryId], [Owner], [PicUri], [PicLink], [Status], [CreateDate]) VALUES (18, N'首页幻灯片二', 35, 35, N'201312112345322612.jpg', N'#', 0, CAST(0x0000A29101878921 AS DateTime))
INSERT [dbo].[Pictures] ([Id], [Name], [CategoryId], [Owner], [PicUri], [PicLink], [Status], [CreateDate]) VALUES (19, N'中国国际非织造布会议广告一', 33, 60, N'201312121637011171.png', N'#', 0, CAST(0x0000A2920111D7EE AS DateTime))
INSERT [dbo].[Pictures] ([Id], [Name], [CategoryId], [Owner], [PicUri], [PicLink], [Status], [CreateDate]) VALUES (20, N'中国国际产业用纺织品及非织造布展览会（CINTE）广告图片一', 33, 61, N'201312122115520390.png', N'#', 0, CAST(0x0000A292015E6D6C AS DateTime))
INSERT [dbo].[Pictures] ([Id], [Name], [CategoryId], [Owner], [PicUri], [PicLink], [Status], [CreateDate]) VALUES (21, N'中德产业用纺织品可持续发展论坛 ', 33, 62, N'201312122115209030.jpg', N'#', 0, CAST(0x0000A292015E48EF AS DateTime))
SET IDENTITY_INSERT [dbo].[Pictures] OFF
/****** Object:  Table [dbo].[Organization]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization](
	[OrgId] [int] IDENTITY(1,1) NOT NULL,
	[OrgName] [nvarchar](100) NOT NULL,
	[OrgEnName] [nvarchar](100) NULL,
	[Address] [nvarchar](200) NULL,
	[AddressEn] [nvarchar](200) NULL,
	[ZipCode] [nchar](20) NULL,
	[InternetSite] [nvarchar](200) NULL,
	[NatureOfBusiness] [nvarchar](50) NULL,
	[FixedAssets] [nvarchar](200) NULL,
	[LegalPerson] [nvarchar](50) NULL,
	[Post] [nvarchar](50) NULL,
	[Tel] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Contact] [nvarchar](50) NULL,
	[ContactPost] [nvarchar](50) NULL,
	[ContactTel] [nvarchar](50) NULL,
	[ContactFax] [nvarchar](50) NULL,
	[ContactPhone] [nvarchar](50) NULL,
	[ContactEmail] [nvarchar](50) NULL,
	[UnitType] [nvarchar](200) NULL,
	[ProductApplications] [nvarchar](300) NULL,
	[ProcessCategory] [nvarchar](300) NULL,
	[MembershipLevel] [nvarchar](50) NULL,
	[Introduction] [text] NULL,
	[Status] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[OrgId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'OrgId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织机构名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'OrgName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织机构英文名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'OrgEnName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通讯地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'通讯地址(英文)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'AddressEn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮编' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'ZipCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'InternetSite'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业性质' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'NatureOfBusiness'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'固定资产' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'FixedAssets'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'企业负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'LegalPerson'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'Post'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'Tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'Fax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E-Mail' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主要联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'Contact'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职务' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'ContactPost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'ContactTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'ContactFax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'ContactPhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'E-mail' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'ContactEmail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'UnitType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主要产品涉及的应用领域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'ProductApplications'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主要非织造布生产工艺类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'ProcessCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'MembershipLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'Introduction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'组织机构表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Organization'
GO
SET IDENTITY_INSERT [dbo].[Organization] ON
INSERT [dbo].[Organization] ([OrgId], [OrgName], [OrgEnName], [Address], [AddressEn], [ZipCode], [InternetSite], [NatureOfBusiness], [FixedAssets], [LegalPerson], [Post], [Tel], [Fax], [Phone], [Email], [Contact], [ContactPost], [ContactTel], [ContactFax], [ContactPhone], [ContactEmail], [UnitType], [ProductApplications], [ProcessCategory], [MembershipLevel], [Introduction], [Status], [CreateDate]) VALUES (3, N'11111', N'11112', N'11113', N'11114', N'11116               ', N'11117', N'11118', N'11119', N'111110', N'111111', N'111112', N'111113', N'111114', N'111115', N'111116', N'111117', N'111118', N'111119', N'111120', N'111121', N'111122', N'111123', N'111124', N'111125', N'111126', 1, CAST(0x0000A28C017B3D6C AS DateTime))
INSERT [dbo].[Organization] ([OrgId], [OrgName], [OrgEnName], [Address], [AddressEn], [ZipCode], [InternetSite], [NatureOfBusiness], [FixedAssets], [LegalPerson], [Post], [Tel], [Fax], [Phone], [Email], [Contact], [ContactPost], [ContactTel], [ContactFax], [ContactPhone], [ContactEmail], [UnitType], [ProductApplications], [ProcessCategory], [MembershipLevel], [Introduction], [Status], [CreateDate]) VALUES (4, N'2222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(0x0000A28D00E05550 AS DateTime))
SET IDENTITY_INSERT [dbo].[Organization] OFF
/****** Object:  Table [dbo].[Category]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[NameEn] [nvarchar](50) NULL,
	[Thumbnails] [nvarchar](200) NULL,
	[Introduction] [text] NULL,
	[ParentCateg] [int] NOT NULL,
	[Sort] [int] NULL,
	[IsNav] [int] NULL,
	[IsIndex] [int] NULL,
	[Status] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'英文名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'NameEn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'缩略图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Thumbnails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简介' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Introduction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'ParentCateg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'导航' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'IsNav'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否首页' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'IsIndex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category'
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (1, N'版块', NULL, NULL, NULL, 0, 0, 0, 0, 1, CAST(0x0000A2850160DBA9 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (2, N'行业分会', N'~/Article/Assoc?id=3', N'201312091312350688.jpg', N'<p>行业分会....<br/></p>', 1, 1, 1, 0, 0, CAST(0x0000A29200F56BF5 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (3, N'资讯频道', N'~/Article/newslist', NULL, NULL, 1, 5, 1, 0, 0, CAST(0x0000A29200ACAB3A AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (4, N'产品检测', N'~/Article/Assoc?Id=4', NULL, NULL, 1, 4, 1, 0, 0, CAST(0x0000A29200AC8C53 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (5, N'联系我们', N'~/Article/Detail?Id=52', NULL, N'<p><span style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 11.818181991577148px; line-height: 20.99431800842285px;  background-color: rgb(249, 249, 249);">北京市东长安街12号226室</span><br style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(249, 249, 249);"/><span style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 11.818181991577148px; line-height: 20.99431800842285px;  background-color: rgb(249, 249, 249);">电话：010-85229421</span><br style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(249, 249, 249);"/><span style="color: rgb(51, 51, 51); font-family: 宋体; font-size: 11.818181991577148px; line-height: 20.99431800842285px;  background-color: rgb(249, 249, 249);">传真：010-85229425</span></p>', 1, 12, 1, 0, 0, CAST(0x0000A2920181D37A AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (6, N'会展信息', N'~/Article/EventList?Id=6', N'201312091326262903.jpg', N'', 1, 5, 1, 0, 0, CAST(0x0000A292016D2F7B AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (7, N'人员与职业鉴定会员名录', N'~/Article/Assoccates?id=7', NULL, NULL, 1, 11, 1, 0, 0, CAST(0x0000A29200ADD031 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (8, N'调研统计', N'~/Article/Assoccates?id=8', NULL, NULL, 1, 6, 1, 0, 0, CAST(0x0000A29200ACDD7F AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (9, N'标准化技术', N'~/Article/Index?id=9', N'', NULL, 1, 3, 1, 0, 0, CAST(0x0000A29200AB50C4 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (10, N'技术创新	', N'~/Article/Assoccates?id=9', NULL, NULL, 1, 8, 1, 0, 0, CAST(0x0000A29200AD225A AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (11, N'期刊杂志', N'~/Article/Index', NULL, NULL, 1, 10, 1, 0, 0, CAST(0x0000A29200AD6618 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (12, N'国际交流', N'~/Article/Index?Id=12', NULL, NULL, 1, 11, 1, 0, 0, CAST(0x0000A2920005966E AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (13, N'国外行业发展', NULL, NULL, NULL, 1, 12, 0, 1, 1, CAST(0x0000A2850162369E AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (14, N'纺织机械', NULL, NULL, NULL, 1, 13, 0, 1, 1, CAST(0x0000A28501626934 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (15, N'会员风采', NULL, NULL, NULL, 1, 14, 0, 1, 1, CAST(0x0000A2850162AA23 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (16, N'政策法规', NULL, NULL, NULL, 1, 15, 0, 1, 1, CAST(0x0000A2850165DCA9 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (17, N'企业管理', NULL, NULL, NULL, 1, 16, 0, 1, 1, CAST(0x0000A285016619B7 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (18, N'协会公告', NULL, N'', NULL, 3, 1, 2, 0, 0, CAST(0x0000A292010E4C55 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (19, N'单位类型', NULL, NULL, NULL, 0, 99999, 0, 0, 1, CAST(0x0000A2890168F38F AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (20, N'非织造布生产', NULL, NULL, NULL, 19, 99999, 0, 0, 1, CAST(0x0000A28901691FED AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (22, N'产业用纺织品生产', NULL, N'', NULL, 19, 99999, 0, 0, 1, CAST(0x0000A28A0164C2CD AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (25, N'设备制造', NULL, NULL, NULL, 19, 99999, 0, 0, 1, CAST(0x0000A28A016529C3 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (26, N'原料生产', NULL, NULL, NULL, 19, 99999, 0, 0, 1, CAST(0x0000A28A01652A76 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (27, N'科研院所', NULL, NULL, NULL, 19, 99999, 0, 0, 1, CAST(0x0000A28A01652BCB AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (28, N'检测机构', NULL, NULL, NULL, 19, 99999, 0, 0, 1, CAST(0x0000A28A01652CBE AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (29, N'其他', NULL, NULL, NULL, 19, 99999, 0, 0, 1, CAST(0x0000A28A01652DBB AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (30, N'广告管理', NULL, NULL, NULL, 0, 99999, 0, 0, 1, CAST(0x0000A28A01652EA1 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (31, N'默认Banner', NULL, N'', NULL, 30, 0, 0, 0, 0, CAST(0x0000A28F00982E46 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (32, N'默认小广告', NULL, N'', NULL, 30, 1, 0, 0, 0, CAST(0x0000A28F00985548 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (33, N'内容页各板块广告', NULL, N'', NULL, 30, 2, 0, 0, 0, CAST(0x0000A28F00990F39 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (34, N'首页各板块广告', NULL, N'', NULL, 30, 3, 0, 0, 0, CAST(0x0000A28F00992CFC AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (35, N'首页幻灯片', NULL, N'', NULL, 30, 99999, 0, 0, 0, CAST(0x0000A29101873A76 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (36, N'热门文章', NULL, N'', NULL, 0, 1, 0, 0, 0, CAST(0x0000A28F00ECD8EB AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (37, N'预留版块', NULL, NULL, NULL, 0, 99999, 0, 0, 1, CAST(0x0000A28C017213A4 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (38, N'会员企业', N'#', NULL, NULL, 1, 18, 2, 0, 0, CAST(0x0000A29000EA1B51 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (39, N'副会长单位', N'~/Article/AssocList?Id=39', NULL, NULL, 38, 0, 2, 0, 0, CAST(0x0000A29100B68886 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (40, N'常务理事单位', N'#', NULL, NULL, 38, 1, 2, 0, 0, CAST(0x0000A29100A6C1E7 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (41, N'理事单位', N'#', NULL, NULL, 38, 2, 2, 0, 0, CAST(0x0000A29100A6DBDD AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (42, N'协会介绍', N'~/Article/Assoc/?id=3', NULL, NULL, 2, 0, 2, 0, 0, CAST(0x0000A29200F4A6D3 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (43, N'会长致辞', N'~/Article/Assoc/?id=4', NULL, NULL, 2, 2, 2, 0, 0, CAST(0x0000A29100B034B8 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (44, N'协会章程', N'~/Article/Assoc/?id=5', NULL, NULL, 2, 3, 2, 0, 0, CAST(0x0000A29100B0AFC0 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (45, N'组织机构', N'~/Article/Assoc/?id=18', NULL, NULL, 2, 4, 2, 0, 0, CAST(0x0000A29100B4459A AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (46, N'部门设置', N'~/Article/Assoc/?id=19', NULL, NULL, 2, 5, 2, 0, 0, CAST(0x0000A29100B4F0B3 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (47, N'工作人员', N'~/Article/Assoc/?id=20', NULL, NULL, 2, 6, 2, 0, 0, CAST(0x0000A29100B4FD79 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (48, N'会员企业', N'#', NULL, NULL, 38, 3, 2, 0, 0, CAST(0x0000A29100B5848E AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (49, N'协会动态', NULL, N'', NULL, 3, 2, 2, 0, 0, CAST(0x0000A29101680D46 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (50, N'行业要闻', N'~/Article/Index?id=50', NULL, NULL, 3, 3, 2, 0, 0, CAST(0x0000A2920005C74B AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (51, N'政策法规', NULL, NULL, NULL, 3, 4, 2, 0, 0, CAST(0x0000A29101684E39 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (52, N'会员风采', NULL, N'201312112153155919.jpg', NULL, 3, 5, 2, 0, 0, CAST(0x0000A2910168B295 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (53, N'专家视点', NULL, N'201312112153062573.jpg', NULL, 3, 6, 2, 0, 0, CAST(0x0000A2910168A7AB AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (54, N'科 普', N'~/Article/Index?Id=54', NULL, NULL, 10, 3, 0, 0, 0, CAST(0x0000A292010F7FB0 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (55, N'工作动态', N'#', NULL, NULL, 8, 0, 2, 0, 0, CAST(0x0000A2920002296B AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (56, N' 统计数据', NULL, NULL, NULL, 8, 1, 2, 0, 0, CAST(0x0000A29200023DFC AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (57, N' 行业运行与发展', N'#', NULL, NULL, 8, 0, 2, 0, 0, CAST(0x0000A29200025022 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (58, N'行业排名', N'#', NULL, NULL, 8, 4, 2, 0, 0, CAST(0x0000A29200026A3F AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (59, N'专业技术委员会', N'~/Article/Assoc?id=3', NULL, NULL, 1, 2, 1, 0, 0, CAST(0x0000A29200A927D9 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (60, N'中国国际非织造布会议（CINC2013） ', N'#', NULL, N'<p>
    会议由CNITA、INDA和绍兴县人民政府共同主办，绍兴县人民政府承办，EDANA将作为支持单位出席，届时日本、韩国非织造布协会和中国台湾和香港地区的非织造布协会代表也将受邀出席。本次会议将就全球非织造布产业的发展趋势、技术状况、新应用领域开拓、可持续发展等热点问题展开广泛深入的探讨。
</p>', 6, 1, 2, 0, 0, CAST(0x0000A2920114E46F AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (61, N'中国国际产业用纺织品及非织造布展览会（CINTE）', NULL, NULL, N'<p>创办于1994年，每两年一届，走过近二十年的CINTE已经成长为亚洲最大、行业认可的国际品牌展会。2012年举办的第十届中国国际产业用纺织品及非织造布展览会展出面积达25000平方米，来自22个国家和地区的437家企业参展，吸引了62个国家和地区的19066名专业观众观展，其中海外观众比例达到10%。</p>', 6, 2, 2, 0, 0, CAST(0x0000A292016D0DE4 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (62, N'中德产业用纺织品可持续发展论坛 ', N'~/Article/Index?Id=62', NULL, N'<p>德国纺织行业和中国的产业界有着长期、良好与互信的合作，两国产业都有强烈的进行更深一步交流合作的愿望。德国在多个领域最具代表性的产业用纺织品生产商带着他们的全系列产品来到中国，与中国的企业进行深层次的对接，希望在未来的市场上都有所收获。中国企业也希望通过面对面的交流寻找深层次合作的机会。</p>', 6, 3, 2, 0, 0, CAST(0x0000A292016D8808 AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [NameEn], [Thumbnails], [Introduction], [ParentCateg], [Sort], [IsNav], [IsIndex], [Status], [CreateDate]) VALUES (63, N'纤维原料', N'~/Article/Index?Id=63', NULL, N'<p>
    <iframe width="232" height="140" src="http://www.ccfei.com/ccfei/cnitapriceindex.aspx" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
</p>
<p>
    <br/>
</p>
<p>
    <br/>
</p>', 1, 0, 0, 0, 0, CAST(0x0000A29201767E1E AS DateTime))
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Table [dbo].[Article]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](300) NOT NULL,
	[Author] [nvarchar](50) NULL,
	[Source] [nvarchar](50) NULL,
	[Context] [text] NOT NULL,
	[Abstract] [nvarchar](500) NULL,
	[Thumbnails] [nvarchar](100) NULL,
	[CategoryId] [int] NOT NULL,
	[CategoryTwo] [int] NULL,
	[Keyword] [nvarchar](100) NULL,
	[IsRecommend] [int] NULL,
	[TitleColor] [nvarchar](50) NULL,
	[TitleIsBold] [int] NULL,
	[Status] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'作者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'Author'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'Source'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'Context'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'摘要' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'Abstract'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预览图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'Thumbnails'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第二类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'CategoryTwo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关键字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'Keyword'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推荐' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'IsRecommend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'颜色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'TitleColor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'加粗' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'TitleIsBold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article'
GO
SET IDENTITY_INSERT [dbo].[Article] ON
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (3, N'中国产业用纺织品行业协会', N'admin', N'本站', N'<p style="font: 11.81px/20.99px 宋体, Arial; text-align: center; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;">&nbsp;</p><p style="font: 11.81px/20.99px 宋体, Arial; text-align: center; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;">&nbsp;<span class="Apple-converted-space">&nbsp;</span><img style="border-width: 0px; width: 500px; height: 173px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/images/20130715142304814.jpg"/></p><p style="font: 11.81px/20.99px 宋体, Arial; text-align: center; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;"><span style="font-size: 14px;"><span style="font-family: 微软雅黑;"><strong>2012年协会被民政部评为4A级协会</strong></span></span></p><p style="font: 11.81px/20.99px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;"><span style="color: rgb(0, 0, 0);"><span style="font-family: 微软雅黑;"><span style="font-size: 12px;">中国产业用纺织品行业协会是经中华人民共和国民政部核准登记的全国性社团组织，由全国非织造布和产业用纺织品行业的企、事业单位、相关协会等自愿组成的社会中介机构。协会的宗旨是贯彻国家的方针、政策和法令法规，维护行业的整体利益和会员的合法权益，为政府部门和会员单位服务，发挥在政府、企业、市场间的桥梁和纽带作用，促进技术进步，提高企业管理水平，推动非织造布和产业用纺织品行业的健康发展。</span></span></span></p><p style="font: 11.81px/20.99px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;"><span style="color: rgb(0, 0, 0);"><span style="font-family: 微软雅黑;"><span style="font-size: 12px;"><strong>协会的主要任务：</strong></span></span></span></p><ul class=" list-paddingleft-2" style="font: 11.81px/20.99px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;"><li><p><span style="color: rgb(0, 0, 0);"><span style="font-family: 微软雅黑;"><span style="font-size: 12px;">在政府和企业之间起到桥梁作用，严格遵照国家法律和法规，维护会员单位的合法利益；为会员单位和相关企业提供咨询、论证、诊断、鉴定服务，采取多种形式推广新技术，培训技术人才，提高企业和人员素质；</span></span></span></p></li><li><p><span style="color: rgb(0, 0, 0);"><span style="font-family: 微软雅黑;"><span style="font-size: 12px;">开展对行业基础资料的调查、收集和整理工作，向政府部门提出制定行业技术政策、经济政策、发展规划、经济立法等方面的建议；</span></span></span></p></li><li><p><span style="color: rgb(0, 0, 0);"><span style="font-family: 微软雅黑;"><span style="font-size: 12px;">接受政府部门的委托，承担专题性调查研究，参与行业内重大技术改造、技术引进、投资与开发项目的论证；组织制定和修订国家标准和行业标准，贯彻实施并进行质量监督；</span></span></span></p></li><li><p><span style="color: rgb(0, 0, 0);"><span style="font-family: 微软雅黑;"><span style="font-size: 12px;">&nbsp;承办非织造布和产业用纺织品展览和技术交流活动，促进企业对外经济贸易及技术合作；编辑出版产业用纺织品和非织造布相关的刊物，提供网站、手机报等信息服务；</span></span></span></p></li></ul><p style="font: 11.81px/20.99px 宋体, Arial; text-align: center; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-stroke-width: 0px;"><img style="border-width: 0px; width: 400px; height: 107px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/images/20130715131913987.JPG"/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', N'333422', N'', 42, NULL, N'中国产业用纺织品行业协会', 0, NULL, 0, 0, CAST(0x0000A29100B0E044 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (4, N'会长致辞', N'admin', N'本站', N'<h3 style="color: rgb(51, 51, 51); font-family: 宋体, Arial; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 20.99431800842285px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);"><img src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/images/20130716123543504.jpg" style="border-width: 0px; border-style: none; width: 150px; float: left; height: 210px; margin-right: 10px;"/></h3><p style="color: rgb(51, 51, 51); font-family: 宋体, Arial; font-size: 11.818181991577148px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.99431800842285px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);"><span style="font-size: 14px;">&nbsp;</span><span style="font-family: 微软雅黑;"><span style="font-size: 14px;"><strong>尊敬的会员朋友们、各位领导和专家:</strong></span><br/>&nbsp;&nbsp;&nbsp;&nbsp;<span class="Apple-converted-space">&nbsp;</span><span style="font-size: 12px;">衷心感谢您们加入中国产业用纺织品行业协会，能有机会为您们服务，我们深感使命光荣，责任重大！在此，我代表协会全体同仁对您们给予我们的长期支持、关爱与帮助表示诚挚的谢意！</span></span></p><p style="color: rgb(51, 51, 51); font-family: 宋体, Arial; font-size: 11.818181991577148px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.99431800842285px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px;"><span style="font-family: 微软雅黑;">&nbsp;&nbsp;&nbsp;&nbsp; 我国产业用纺织品行业伴随着中国经济的快速发展已成为纺织工业中最具前瞻性和战略机遇的新兴产业，未来其自身发展和推动纺织工业及相关产业的发展都承载着重大的责任。</span></span></p><p style="color: rgb(51, 51, 51); font-family: 宋体, Arial; font-size: 11.818181991577148px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.99431800842285px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px;"><span style="font-family: 微软雅黑;">&nbsp;&nbsp;&nbsp;&nbsp; 我国产业用纺织品行业经历了十余年的快速发展，其应用领域已涵盖了过滤与分离、医疗与卫生、安全与防护、土工合成材料、高性能纺织复合材料、交通运输、农业、建筑等多个产业，由于其产品具有技术含量高、产品附加值高、劳动生产率高和产业渗透面广的特征，在带动上下游相关产业和促进国民经济发展中发挥着重要作用。当传统纺织服装生产面临资源、环境、劳动力等要素制约，面临其他发展中国家更低要素成本优势的激烈竞争，开拓新的应用领域、发展产业用纺织品是我国纺织工业结构调整、转型升级的重要途径之一，也是我国纺织工业实现由大到强、由比较优势向竞争优势转变的重要举措之一。同时，市场需求的持续创新性增长，为我国产业用纺织品未来的飞跃发展打下了坚实的基础。</span></span></p><p style="color: rgb(51, 51, 51); font-family: 宋体, Arial; font-size: 11.818181991577148px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.99431800842285px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px;"><span style="font-family: 微软雅黑;">&nbsp;&nbsp;&nbsp;&nbsp; 面对机遇与挑战，本届理事会充分认识到要将愿景成为现实还需加倍努力。产业用纺织品行业在“十二五”期间，将以科学发展观为指导，以满足国民经济建设和提高人民生活水平为目标，以构建战略新兴产业为诉求，以践行纺织强国为己任，大力发展高质量、高性能产业用纺织品，提升行业的国际竞争力，促进产业用纺织品行业及相关应用领域的健康有序发展。</span></span></p><p style="color: rgb(51, 51, 51); font-family: 宋体, Arial; font-size: 11.818181991577148px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.99431800842285px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px;"><span style="font-family: 微软雅黑;">&nbsp;&nbsp;&nbsp; 我们将以服务创新为主线做好协会工作，全面推动行业和企业的发展：实现服务的模式转换，我们将以专业的态度，努力为会员单位开展多方位的技术服务、市场服务、信息服务、个性服务等，追求服务效用的最大化和凝聚力；实现服务的链条延伸，努力做好上下游的融合与合作，创造产业用纺织品在新领域的应用机会和强烈期望；实现服务的价值体现，通过向会员提供更多无偿的公共服务和有针对性的选择性激励，以差异化整合服务，实现企业参与率的最大化，充分体现协会在市场经济下的平台和桥梁作用；实现服务的能力提升，树立“广业与崇德并重、备物与聚人兼顾”的理念，努力提高执行团队的高效、持续的服务能力。</span></span></p><p style="color: rgb(51, 51, 51); font-family: 宋体, Arial; font-size: 11.818181991577148px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.99431800842285px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px;"><span style="font-family: 微软雅黑;">&nbsp;&nbsp;&nbsp;&nbsp; 尊敬的会员朋友们！行业的发展离不开您们的参与和见证，每当我们感悟会员的认同与支持，所有的艰辛都变得那么令人欢欣鼓舞。我们将不辜负您们的重托，为中国产业用纺织品行业的发展尽一份绵薄之力。祝愿中国产业用纺织品行业明天会更好！祝愿我们的会员企业兴旺发达！</span></span></p><p style="color: rgb(51, 51, 51); font-family: 宋体, Arial; font-size: 11.818181991577148px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20.99431800842285px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);"><span style="font-size: 12px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="Apple-converted-space">&nbsp;</span></span><img alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/images/20130716132211615.JPG" style="border-width: 0px; border-style: none; width: 123px; height: 75px;"/></p><p><br/></p>', NULL, N'', 43, NULL, N'会长致辞', 0, NULL, 0, 0, CAST(0x0000A29100B0886F AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (5, N'协会章程', N'admin', N'本站', N'<table width="557" align="center" cellspacing="0" cellpadding="0"><tbody><tr><td class="introduce_center_title" style="padding: 10px 0px; text-align: center; color: rgb(51, 51, 51); line-height: 21px; font-family: 宋体; font-size: 14px; font-weight: bold; text-decoration: none; border-bottom-color: rgb(218, 222, 225); border-bottom-width: 1px; border-bottom-style: solid;">中国产业用纺织品行业协会章程</td></tr><tr><td class="introduce_center_css" style="padding: 6px; text-align: left; color: rgb(51, 51, 51); line-height: 24px; font-family: 宋体; font-size: 12px; text-decoration: none;"><h4 style="text-align: center;"><span style="color: rgb(0, 0, 0);">第一章&nbsp;&nbsp;&nbsp; 总&nbsp;&nbsp;&nbsp; 则</span></h4><p><span style="color: rgb(0, 0, 0);"><span style="font-size: 12px;"><span style="font-family: 微软雅黑;">第一条：本团体名称：中国产业用纺织品行业协会（以下简称“中产协”）。英文名称：CHINA NONWOVENS &amp; INDUSTRIAL TEXTILES ASSOCIATION（缩写：CNITA）。<br/>第二条：本团体性质：本团体是由从事非织造布和产业用纺织品生产、研究的相关企事业单位、相关团体及个人等自愿组成的行业性的、全国性的、非营利性的社会组织。<br/>第三条：本团体宗旨：遵守宪法、法律、法规和国家政策，遵守社会道德风尚，在社会主义市场经济体制条件下，发挥政府和会员之间的桥梁和纽带作用，维护会员单位的合法权益，为企业服务，促进行业的发展。<br/>第四条：本团体接受登记管理机关中华人民共和国民政部和业务主管单位国务院国有资产监督管理委员会的业务指导和监督管理。&nbsp;<br/>第五条：本团体的住所：北京市。</span></span><br/>&nbsp;</span></p><h4 style="text-align: center;"><span style="color: rgb(0, 0, 0);">第二章&nbsp;&nbsp; 业务范围</span></h4><p><br/><span style="color: rgb(0, 0, 0);"><span style="font-size: 12px;"><span style="font-family: 微软雅黑;">第六条：本团体的业务范围是：反映企业的愿望和要求，接受政府的指导，传达政府的有关政策和意见，相互交流信息和经验，起到企业与政府之间、企业和企业之间的桥梁和纽带作用。&nbsp;&nbsp;<br/>&nbsp;&nbsp;&nbsp; (一) 开展对行业基础资料的调查、收集和整理工作，向政府部门提出制定行业技术政策、经济政策、发展规划、经济立法等方面的建议；<br/>&nbsp;&nbsp;&nbsp; (二) 通过各种渠道向政府有关部门反映会员单位的意见和建议；<br/>&nbsp;&nbsp;&nbsp; (三) 接受政府部门的委托，承担专题性调查研究，参与对行业内重大技术改造、技术引进、投资与开发项目进行前期论证；<br/>&nbsp;&nbsp;&nbsp; (四) 经政府部门批准或授权委托下组织制定国家标准和行业标准，组织贯彻实施并进行质量监督；<br/>&nbsp;&nbsp;&nbsp; (五) 协调企业之间、本行业和外行业之间发生的生产、经营、价格、质量等方面的关系，保护企业之间的公平竞争和行业的合法权益；<br/>&nbsp;&nbsp;&nbsp; (六) 为会员单位和相关企业提供咨询、论证、诊断服务，采取多种形式推广新技术，培训技术人才，提高企业和人员素质，并经政府部门批准或授权委托下组织鉴定；<br/>&nbsp;&nbsp;&nbsp; (七) 开展与国内外相关经济、社会团体和组织的交往活动，组织参加有关国际会议、展览、考察等活动。承办非织造布和产业用纺织品展览、贸易洽谈，促进企业对外经济贸易、技术合作和交流活动；<br/>&nbsp;&nbsp;&nbsp;&nbsp; (八) 发展行业公益事业；<br/>&nbsp;&nbsp;&nbsp;&nbsp; (九) 组织企业交流经验，联络感情，增进相互友谊。<br/>&nbsp;</span></span></span></p><h4 style="text-align: center;"><span style="color: rgb(0, 0, 0);">第三章&nbsp;&nbsp;&nbsp;&nbsp; 会&nbsp;&nbsp;&nbsp; 员<br/>&nbsp;</span></h4><p><span style="color: rgb(0, 0, 0);"><span style="font-size: 12px;"><span style="font-family: 微软雅黑;">第七条：凡依法取得工商营业执照的非织造布和产业用纺织品企业、事业单位、相关的社会团体以及长期从事非织造布和产业用纺织品行业工作的专家、学者，承认本章程，均可申请入会，经理事会（或常务理事会）批准成为会员。<br/>第八条：申请加入本团体的会员，必须具备以下条件：<br/>&nbsp;&nbsp;&nbsp; (一) 拥护本团体的章程；<br/>&nbsp;&nbsp;&nbsp; (二) 有加入本团体的意愿；<br/>&nbsp;&nbsp;&nbsp; (三) 在本团体的业务（行业、学科）领域内具有一定的影响。<br/>第九条：会员入会的程序是：<br/>&nbsp;&nbsp;&nbsp; (一) 提交入会申请书；<br/>&nbsp;&nbsp;&nbsp; (二) 经理事会（或常务理事会）讨论通过；<br/>&nbsp;&nbsp;&nbsp; (三) 由理事会（或常务理事会）授权秘书处发给会员证。<br/>第十条：会员享有下列权利<br/>&nbsp;&nbsp;&nbsp; (一) 本团体的选举权、被选举权和表决权；<br/>&nbsp;&nbsp;&nbsp; (二) 参加本团体的活动；<br/>&nbsp;&nbsp;&nbsp; (三) 获得本团体服务的优先权；<br/>&nbsp;&nbsp;&nbsp; (四) 对本团体工作的批评建议权和监督权；<br/>&nbsp;&nbsp;&nbsp; (五) 入会自愿、退会自由。<br/>第十一条：会员履行下列义务：<br/>&nbsp;&nbsp;&nbsp; (一) 执行本团体决议；<br/>&nbsp;&nbsp;&nbsp; (二) 维护本团体合法权益；<br/>&nbsp;&nbsp;&nbsp; (三) 完成本团体交办的工作；<br/>&nbsp;&nbsp;&nbsp; (四) 按规定交纳会费；<br/>&nbsp;&nbsp;&nbsp; (五) 向本团体反映情况，提供有关资料。<br/>第十二条：会员退会应书面通知本协会，并交回会员证。会员如果连续两年不交纳会费或不参加本团体活动的，视为自动退会。<br/>第十三条：会员如有严重违反本章程的行为，经理事会或常务理事会表决通过，予以除名。<br/>&nbsp;</span></span></span></p><h4 style="text-align: center;"><span style="color: rgb(0, 0, 0);">第四章&nbsp;&nbsp;&nbsp; 组织机构和负责人产生、罢免</span></h4><p><br/><span style="color: rgb(0, 0, 0);"><span style="font-size: 12px;"><span style="font-family: 微软雅黑;">第十四条：本团体的最高权力机构是会员代表大会，会员代表大会的职权是：<br/>&nbsp;&nbsp;&nbsp; (一) 制定和修改章程；<br/>&nbsp;&nbsp;&nbsp; (二) 选举和罢免理事；<br/>&nbsp;&nbsp;&nbsp; (三)制定并修改会费标准<br/>&nbsp;&nbsp;&nbsp; (四)审议理事会的工作报告和财务报告；<br/>&nbsp;&nbsp;&nbsp; (五) 决定终止事宜；<br/>&nbsp;&nbsp;&nbsp; (六) 决定其它重大事宜。<br/>第十五条：会员代表大会须有2／3以上的会员代表出席方能召开，其决议须经到会会员代表半数以上表决方能生效。<br/>第十六条：会员代表大会每届5年。因特殊情况需提前或延期换届的，须由理事会表决通过，报业务主管单位审查并经社团登记管理机关批准同意。但延期换届最长不超过1年。<br/>第十七条：理事会是会员代表大会的执行机构，在闭会期间领导本团体开展日常工作，对会员代表大会负责。<br/>第十八条：理事会的职权是：<br/>&nbsp;&nbsp;&nbsp; (一) 执行会员代表大会的决议；<br/>&nbsp;&nbsp;&nbsp; (二) 选举和罢免会长、副会长、秘书长和常务理事；<br/>&nbsp;&nbsp;&nbsp; (三) 筹备召开会员代表大会；<br/>&nbsp;&nbsp;&nbsp; (四) 向会员代表大会报告工作和财务状况；<br/>&nbsp;&nbsp;&nbsp; (五) 决定会员的吸收或除名；<br/>&nbsp;&nbsp;&nbsp; (六) 决定设立办事机构、分支机构、代表机构和实体机构；<br/>&nbsp;&nbsp;&nbsp; (七) 决定副秘书长、各机构主要负责人的聘任；<br/>&nbsp;&nbsp;&nbsp; (八) 领导本团体各机构开展工作；<br/>&nbsp;&nbsp;&nbsp; (九) 制定内部管理制度；<br/>&nbsp;&nbsp;&nbsp; (十) 决定其他重大事项。<br/>第十九条：理事会须有2／3以上理事出席方能召开，其决议须经到会理事2／3以上表决通过方能生效。<br/>第二十条：理事会每年至少召开一次会议；情况特殊的，也可采用通讯形式召开。<br/>第二十一条：本团体设立常务理事会。常务理事会由理事会选举产生，在理事会闭会期间行使第十八条第（一）、（三）、（五）、（六）、（七）、（八）、（九）项的职权，对理事会负责。常务理事人数不超过理事人数的1/3。<br/>第二十二条：常务理事会须有2／3以上常务理事出席方能召开，其决议须经到会常务理事2／3以上表决通过方能生效。<br/>第二十三条：常务理事会至少半年召开一次会议；情况特殊的也可以用通迅形式召开。<br/>第二十四条：本团体的会长、副会长、秘书长必须具备以下条件：<br/>&nbsp;&nbsp;&nbsp; (一) 坚持党的路线、方针、政策、政治素质好；<br/>&nbsp;&nbsp;&nbsp; (二) 在本团体业务领域内有较大影响；<br/>&nbsp;&nbsp;&nbsp; (三) 会长、副会长、秘书长最高任职年龄不超过70周岁，秘书长最高任职年龄不超过65周岁且为专职；<br/>&nbsp;&nbsp;&nbsp; (四) 身体健康，能坚持正常工作；<br/>&nbsp;&nbsp;&nbsp; (五) 未受过剥夺政治权利的刑事处罚的；<br/>&nbsp;&nbsp;&nbsp; (六) 具有完全民事行为能力。<br/>第二十五条：本团体会长、副会长、秘书长如超过最高任职年龄的，应当办理离职手续。<br/>第二十六条：本团体会长、副会长、秘书长任期五年，连任不得超过两届。<br/>第二十七条：本团体会长为本协会法定代表人，法定代表人代表本团体签署有关重要文件。本团体法定代表人不兼任其他团体的法定代表人。<br/>第二十八条：本团体会长行使下列职权：<br/>&nbsp;&nbsp;&nbsp; (一) 召集和主持常务理事会、理事会；<br/>&nbsp;&nbsp;&nbsp; (二) 检查会员代表大会、常务理事会决议的落实情况；<br/>第二十九条：本团体秘书长行使下列职权：<br/>&nbsp;&nbsp;&nbsp; (一) 主持办事机构开展日常工作，组织实施年度工作计划；<br/>&nbsp;&nbsp;&nbsp; (二) 协调各分支机构、代表机构、实体机构开展工作；<br/>&nbsp;&nbsp;&nbsp; (三) 提名副秘书长以及各办事机构、分支机构，代表机构和实体机构主要负责人，交理事会或常务理事会决定；<br/>&nbsp;&nbsp;&nbsp; (四) 决定办事机构、代表机构、实体机构专职工作人员的聘用；<br/>&nbsp;&nbsp;&nbsp; (五) 处理其他日常事务。<br/>&nbsp;</span></span></span></p><h4 style="text-align: center;"><span style="color: rgb(0, 0, 0);">第五章&nbsp;&nbsp;&nbsp; 资产管理、使用原则</span></h4><p><br/><span style="color: rgb(0, 0, 0);"><span style="font-size: 12px;"><span style="font-family: 微软雅黑;">第三十条：本团体经费来源：<br/>&nbsp;&nbsp;&nbsp; (一) 会费；<br/>&nbsp;&nbsp;&nbsp; (二) 捐赠；<br/>&nbsp;&nbsp;&nbsp; (三) 政府资助；<br/>&nbsp;&nbsp;&nbsp; (四) 在核准的业务范围内开展活动或服务的收入；<br/>&nbsp;&nbsp;&nbsp; (五) 利息；<br/>&nbsp;&nbsp;&nbsp; (六) 其他合法收入。<br/>第三十一条：本团体按照国家有关规定收取会员会费。<br/>第三十二条：本团体经费必须用于本章程规定的业务范围和事业的发展，不得在会员中分配。<br/>第三十三条：本团体建立严格的财务管理制度，保证会计资料合法、真实、准确、完整。<br/>第三十四条：本团体配备具有专业资格的会计人员。会计不得兼任出纳。会计人员必须进行会计核算，实行会计监督。会计人员调动工作或离职时，必须与接管人员办清交接手续。<br/>第三十五条：本团体的资产必须执行国家规定的财务管理制度，接受会员代表大会和财政部门的监督。资产来源属于国家拨款或者社会捐赠、资助的，必须接受审计机关的监督，并将有关情况以适当方式向社会公布。<br/>第三十六条：本团体换届或更换法定代表人之前必须接受社团登记管理机关和业务主管单位认可的审计单位组织的财务审计。<br/>第三十七条：本团体的资产，任何单位、个人不得侵占、私分和挪用。<br/>第三十八条：本团体专职工作人员的工资和保险、福利待遇，参照国家对事业单位的有关规定执行。</span><br/>&nbsp;</span></span></p><h4 style="text-align: center;"><span style="color: rgb(0, 0, 0);">第六章&nbsp;&nbsp; 章程的修改程序</span></h4><p><br/><span style="color: rgb(0, 0, 0);"><span style="font-size: 14px;"><span style="font-size: 12px;"><span style="font-family: 微软雅黑;">第三十九条：对本团体章程的修改，须经理事会表决通过后报会员代表大会审议。<br/>第四十条：本团体修改后的章程，须在会员代表大会通过后15日内，经业务主管单位审查同意，并报社团登记管理机关核准后生效。</span></span><br/>&nbsp;</span></span></p><h4 style="text-align: center;"><span style="color: rgb(0, 0, 0);">第七章&nbsp;&nbsp;&nbsp; 终止程序及终止后的财产处理<br/>&nbsp;</span></h4><p><span style="color: rgb(0, 0, 0);"><span style="font-size: 12px;"><span style="font-family: 微软雅黑;">第四十一条：本团体完成宗旨或自行解散或由于分立、合并等原因需要注销的，由常务理事会提出终止动议。<br/>第四十二条：本团体终止动议须经会员代表大会表决通过，并报业务主管单位审查同意。<br/>第四十三条：本团体终止前，须在业务主管单位及有关机关指导下成立清算组织，清理债权债务，处理善后事宜。清算期间，不开展清算以外的活动。<br/>第四十四条：本团体经社团登记管理机关办理注销登记手续后即为终止。<br/>第四十五条：本团体终止后的剩余财产，在业务主管单位和社团登记管理机关的监督下，按国家有关规定，用于发展与本团体宗旨相关的事业。</span><br/>&nbsp;</span></span></p><h4 style="text-align: center;"><span style="color: rgb(0, 0, 0);">第八章&nbsp;&nbsp;&nbsp; 附&nbsp;&nbsp;&nbsp; 则</span></h4><p><br/><span style="color: rgb(0, 0, 0);"><span style="font-size: 12px;"><span style="font-family: 微软雅黑;">第四十六条：本章程草案经2011年3月18日第三届会员代表大会表决通过。<br/>第四十七条：本章程的解释权属本协会的理事会。<br/>第四十八条：本章程自社团登记管理机关核准之日起生效。</span></span></span></p></td></tr></tbody></table><p><br/></p><p><br/></p><p><br/></p>', NULL, N'', 44, NULL, N'中国产业用纺织品行业协会章程', 1, NULL, 0, 0, CAST(0x0000A29100B0C748 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (7, N'网站参考地址', NULL, NULL, N'<p>http://www.cnita.org.cn/Index.aspx</p>', NULL, N'', 29, NULL, N'http://www.cnita.org.cn/Index.aspx', 0, NULL, 0, 0, CAST(0x0000A28C0184A7FE AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (8, N'2013年中国国际非织造布会议隆重召开 ', N'Admin', N'Admin', N'<p><span style="font-family: 微软雅黑;">10月25日，“2013年中国国际非织造布会议”在绍兴县柯岩鉴湖大酒店隆重召开。会议由中国产业用纺织品行业 
协会、美国非织造布协会（INDA）、欧洲非织造布协会（EDANA）、浙江省绍兴县人民政府共同主办，旨在加强国内外非织造布行业的交流与合作，促进我 
国非织造布工业的产业转型升级，帮助企业了解国外同行业的先进技术和应用，学习国外行业在经营理念、市场推广、基础研究、产业链配套等方面的先进经验。中 
国纺织工业联合会王天凯会长、高勇副会长、陈伟康副书记、工信部消费品司王伟副司长，INDA、EDANA、台湾不织布同业公会和香港无纺布协会会长，绍 
兴县相关领导以及百余名企业代表参会。</span></p><p style="text-align: justify;">&nbsp;</p><p style="text-align: center;"><span style="font-family: 微软雅黑;"><img style="width: 400px; height: 266px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031154653009.jpg"/></span></p><p style="text-align: center;"><span style="font-family: 微软雅黑;">会议现场</span></p><p style="text-align: justify;">&nbsp;</p><p style="text-align: justify;"><span style="font-family: 微软雅黑;"><strong>集企业智慧、促企业共赢</strong></span></p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">本次会议分为非织造布技术发展论坛、2012/2013中国非织造布行业10强企业及优秀供应商颁奖以及行业专家针对非织造布市场与发展的主题演讲三个环节。</span></p><p style="text-align: justify;">&nbsp;</p><p style="text-align: center;"><span style="font-family: 微软雅黑;"><img style="width: 400px; height: 274px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031154734634.jpg"/></span></p><p style="text-align: center;"><span style="font-family: 微软雅黑;">绍兴县人民政府周树森副县长致辞</span></p><p style="text-align: center;">&nbsp;</p><p style="text-align: center;"><span style="font-family: 微软雅黑;"><img style="width: 400px; height: 300px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031154812306.jpg"/></span></p><p style="text-align: center;"><span style="font-family: 微软雅黑;">国家工业信息化部纺织品消费司副司长王伟</span></p><p style="text-align: center;">&nbsp;</p><p style="text-align: center;"><span style="font-family: 微软雅黑;"><img style="width: 400px; height: 284px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031154842572.jpg"/></span></p><p style="text-align: center;"><span style="font-family: 微软雅黑;">中纺联副会长高勇</span></p><p style="text-align: justify;">&nbsp;</p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">论坛中，来自国内外知名非织造布供应商及企业高层针对当前先进的技术创新、应用市场以及前景等问题进行交流。 
上海申达股份有限公司汽车内饰事业部技术总监龚杜弟就申达公司目前非织造布在汽车零部件中的应用及功能进行了详细的阐述。例如，汽车内部的空调过滤器、前 
围隔音部件、备胎槽等部件都应用到非织造物。</span></p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">来自东华大学的王洪副教授从土工布领域为现场嘉宾分享了土工合成材料技术现状及应用前景。</span></p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">广州市纤维产品检测院作为中国产业用纺织品行业测试中心广东站，承担着产业用纺织品中非织造布、医用纺织品、 
卫生用纺织品、过滤用纺织品以及交通工具用纺织品这五大领域的检测任务。王向钦博士介绍了非织造布及制品的检测技术，目前检测院在研的产业用项目包括非织 
造材料可生物降解性能测试方法研究、玄武岩基增强芳纶浆粕纤维非织造材料耐热性评价等。</span></p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">海斯摩尔生物科技有限公司董事长胡广敏针对公司研制的专用纤维海斯摩尔纯壳聚糖纤维做了介绍。例如，壳聚糖纤维具有极好的抗菌性，用于医用领用可有效避免传统纱布包扎伤口带来的二次创伤。</span></p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">烟台万华超纤股份有限公司副总经理李革在论坛中介绍了当前国内外合成革的整体情况，并介绍了万华定岛超细纤维合成革的技术开发，自2010年以来，这项技术开发的革系列包括服用绒衣、海陆空解放军及武警手套系列等，产量达到150万平方米。</span></p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">厦门三维丝环保股份有限公司技术中心市场部经理单磊为在座嘉宾分享了袋式除尘滤料发展与技术创新。</span></p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">作为一家全球化的领先设备供应商，安德里兹公司Alexandre 
Butte为现场嘉宾介绍了非织造布生产设备系统的创新，包括为水刺、针刺完整生产线的技术设备提供可持续的技术解决方案。</span></p><p style="text-align: justify;">&nbsp;</p><p style="text-align: center;"><span style="font-family: 微软雅黑;"><img style="width: 400px; height: 278px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031154910869.jpg"/></span></p><p style="text-align: center;"><span style="font-family: 微软雅黑;">中产协李陵申会长做主题演讲</span></p><p style="text-align: justify;">&nbsp;</p><p style="text-align: justify;"><span style="font-family: 微软雅黑;"><strong>高屋建瓴、提振行业发展信心</strong></span></p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">绍兴县人民政府周树森副县长在致辞中介绍了中国非织造布名镇夏履镇10年来的发展情况，同时表示政府会大力扶持，以传统产业转型升级为目标，帮助企业进行结构性调整。</span></p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">国家工业信息化部纺织品消费司副司长王伟从宏观角度谈到，近年来中国非织造布在调整结构、纺织品转型升级方向 
上呈现了较快的增长势头。但在质量、品种、工艺以及市场应用领域等方面与国际先进水平还有差距。出口产品单价仅有进口的60%，缺少整合所有产业链的龙头 
企业，同质化问题以及价格竞争依然比较激烈。王副司长表示工信部行业主管部门将按照纺织工业转型升级的总体要求，重点开展三点工作：一是支持、拓展终端市 
场为核心的技术开发和技术改造，重点扩大非织造布在医疗、环保、过滤等等领域的应用；二是加强基础研究和质量评价等公共服务能力的建设；三是支持全寿命、 
绿色、环保产品的开发生产，支持节能减排和回收利用技术的开发和推广。</span></p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">中国纺织工业联合会副会长高勇在致辞中认为，国内非织造布业的发展，要坚持工业调整，紧跟发达国家的先进步 
伐。高会长分析了目前我国非织造布行业的优劣势，他认为国内企业的优势是供应链短，低成本，人才培养体系完善。而不足之处则是目前我国行业标准相对落后， 
产品质量良莠不齐，设备偏重依赖进口。</span></p><p style="text-align: justify;"><span style="font-family: 微软雅黑;"><strong>2012/13年度中国非织造布行业10强企业及优秀供应商评选揭晓</strong></span></p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">由中国产业用纺织品行业协会举办的“2012/13年度中国非织造布行业10强企业及优秀供应商评选”活动是 
继2011年评选的10强基础上，扩展到本届评选中国非织造布行业最具成长性企业和中国非织造布行业优秀供应商。本届评选更为完善，综合考核规模和效益、 
装备和研发创新、市场和品牌、节能减排、社会责任等5个维度，最终评选出行业12家10强企业、10家最具成长型企业和12家优秀供应商。</span></p><p style="text-align: justify;">&nbsp;</p><p style="text-align: center;"><span style="font-family: 微软雅黑;"><img style="border-width: 0px; width: 400px; height: 266px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031155214869.jpg"/></span></p><p style="text-align: center;"><span style="font-family: 微软雅黑;">中纺联会长王天凯（左七）为2012/13年度中国非织造布行业10强企业颁奖</span></p><p style="text-align: justify;">&nbsp;</p><p style="text-align: justify;">&nbsp;</p><p style="text-align: center;"><span style="font-family: 微软雅黑;"><img style="border-width: 0px; width: 400px; height: 266px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031155229447.jpg"/></span></p><p style="text-align: center;"><span style="font-family: 微软雅黑;">工信部纺织品消费司副司长王伟（左五）、中纺联副会长高勇（左六）为行业最具成长型企业颁奖</span></p><p style="text-align: center;">&nbsp;</p><p style="text-align: center;"><span style="font-family: 微软雅黑;"><img style="border-width: 0px; width: 400px; height: 264px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031155241228.jpg"/></span></p><p style="text-align: center;"><span style="font-family: 微软雅黑;">中纺联党委副书记、常务副秘书长陈伟康（左七）、中产协会长李陵申为优秀供应商颁奖</span></p><p style="text-align: center;">&nbsp;</p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">评选结果揭晓后，中国纺织经济信息网记者采访了两家获得10强企业的企业高层，询问企业如何脱颖而出。晋江市 
兴泰无纺制品有限公司董事长王火烟自豪的谈到目前公司水刺、纺粘以及复合非织造布生产线共14条，水刺法非织造布9285.3吨；纺粘非织造布 
40132.5吨。同时公司拥有发明专利4项，实用新型专利25项，还获得了多个省部级各类的奖项。来自山东泰鹏集团的范铭总经理、副董事长在记者问及企 
业强在哪儿时，范总毫不犹豫的说是技术创新。公司多元化的产品结构和高精度的技改能力增强了企业的核心竞争力。</span></p><p style="text-align: justify;"><span style="font-family: 微软雅黑;"><strong>政府推动、产学研结合</strong></span></p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">此次会议的另一亮点是东华大学夏履教育基地签约仪式，夏履镇与东华大学共同签署了夏履镇人民政府与东华大学合作办学协议签字仪式。</span></p><p style="text-align: justify;"><span style="font-family: 微软雅黑;"><strong>专题讲座、技术创新驱动行业进步</strong></span></p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">中产协李陵申会长就“快速发展的中国非织造布工业”话题做了报告，介绍了近年来我国产业用纺织品及非织造行业 
的经济运行情况。他谈到“2007年至2012年中国非织造布产量呈逐年递增趋势，2012年我国进口非织造布13.6万吨，出口额8.39亿美元。 
2013年上半年行业规模以上非织造布销售收入、利润分别增长了21.62%和23.76%，利润率5.4%；非织造布出口26.6万吨，价值9.3亿美 
元，分别增长12.5%、17.73%。行业投资同比下降5.05%。非织造布生产依然保持了12.65%的增速。技术创新驱动行业进步，李会长认为原材 
料的多样化和差别化助推应用领域拓展，装备提升产品档次，后整理技术提高产品性能。个性化的解决方案、多种符合技术获得性能优势，高效和轻量化完美组合， 
性价比与可替代性等非织造布的优势都将进一步推动产业用纺织品行业的发展，同时我国非织造布工业也面临着行业集中度较低、产业主要集中在中低端等挑战。</span></p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">美国非织造布协会主席David Rousse 
为与会嘉宾分享了世界范围内非织造布工业统计数据及其发展趋势。全球范围内，非织造布产量主要集中欧洲、北美和中国，他们分别占有26%、25%和 
22%。David说到未来五年非织造布年度增长非常乐观，预计为7.6%，高于前5年的6.4%水平。由于美国的天然气和劳动力成本降低，预计美国的制 
造业将重新抬头。同时中国将涌现大批的非织造龙头企业。</span></p><p style="text-align: justify;">&nbsp;</p><p style="text-align: center;"><span style="font-family: 微软雅黑;"><img style="width: 400px; height: 287px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031154944775.jpg"/></span></p><p style="text-align: center;"><span style="font-family: 微软雅黑;">美国非织造布协会主席David Rousse 
演讲</span></p><p style="text-align: center;">&nbsp;</p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">对于2020年非织造布预测以及EDANA的产品工作策略，欧洲非织造布协会总经理 Pierre 
Wiertz做了详细的阐述。目前欧洲非织造布产量约为1800万吨，而50%应用于卫生、医疗和擦拭布领域。展望2020年，Pierre谈到全球一体 
化的核心趋势，面临着可持续发展的挑战，而唯一的解决方法就是技术创新。未来的非织造布市场很有可能出现两极化，即世界中产阶级以及高收入人群国家。最 
后，他认为非织造布市场将会面对越来越多的来自公众和环境的压力。通过持续的监督、检验，避免可能产生的不和谐因素，从而获得高质量产品以及良好的商业氛 
围。</span></p><p style="text-align: justify;">&nbsp;</p><p style="text-align: center;"><span style="font-family: 微软雅黑;"><img style="width: 400px; height: 289px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031155007556.jpg"/></span></p><p style="text-align: center;"><span style="font-family: 微软雅黑;">欧洲非织造布协会总经理 Pierre 
Wiertz演讲</span></p><p style="text-align: justify;">&nbsp;</p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">台湾不织布同业公会理事长邱正中介绍了台湾不织布产业发展现况并探讨了台湾不织布业的未来发展趋势，从演讲中，邱理事长介绍了台湾不织布龙头企业，并期待两岸企业更密切的合作。</span></p><p style="text-align: justify;">&nbsp;</p><p style="text-align: center;"><span style="font-family: 微软雅黑;"><img style="width: 400px; height: 299px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031155025806.jpg"/></span></p><p style="text-align: center;"><span style="font-family: 微软雅黑;">台湾不织布同业公会理事长邱正中演讲</span></p><p style="text-align: justify;">&nbsp;</p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">香港非织造布协会会长杨自然介绍了中国香港地区非织造布产业发展情况，杨会长深切的感觉到目前香港中小企业的生存困难现状，香港政府给予了很大的支持，他希望中纺联能更多的扶持中小型企业，呼吁更多关心中小型企业的可持续发展。</span></p><p style="text-align: justify;">&nbsp;</p><p style="text-align: center;"><span style="font-family: 微软雅黑;"><img style="width: 400px; height: 293px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031155046869.jpg"/></span></p><p style="text-align: center;"><span style="font-family: 微软雅黑;">香港非织造布协会会长杨自然演讲</span></p><p style="text-align: justify;">&nbsp;</p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">随着人们环保意识的日益增强，大众对于生活环境的要求愈发苛刻，因此派生出各类节能环保产品。芳纶纸即产业用纺织品中的一类环境友好型非织造布。烟台泰和新材料股份有限公司技术中心副主任黄钧铭介绍了芳纶纸的耐高温绝缘性、绿色环保、可做轻质高强蜂窝基材的产品特性。</span></p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">在医药用纺织品市场占有领先地位的佛山必德福公司董事长邓伟雄分享了公司市场发展的经验。邓董信心满满的介绍公司发展的未来目标，致力于5年后达到与美国同等水平。</span></p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">美国非织造布协会执行董事、美亚无纺布有限公司董事长黄祖基在会上带来了公司开发的PLA可降解环保新材料成品，通过实物展示与课件讲座详细介绍了公司持续研发的PLA天然原料的少排放、低能耗、污染少、可循环利用以及可降解性，符合目前产业发展的环保要求。</span></p><p style="text-align: justify;"><span style="font-family: 微软雅黑;">此次会议就国际非织造行业的技术创新、产品性能及应用、检测技术等方面的发展现状和趋势进行了交流。美国和欧 
洲非织造布协会专家分享和介绍了国外的先进经验，中国企业得到了很好的学习交流机会，国内外同行进行广泛交流，探讨非织造布发展的新思路和新技术，分享各 
地区产业发展的成功经验，共同推动非织造布行业的发展。</span></p><p><br/></p><p><br/></p>', NULL, N'', 6, NULL, N'2013年中国国际非织造布会议隆重召开 ', 0, NULL, 0, 0, CAST(0x0000A28F00E5D3F2 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (9, N'中国非织造布行业10强揭晓', N'Admin', NULL, N'<p><span style="font-family: 微软雅黑;">10月25日，中产协在浙江绍兴隆重发布2012/2013年度中国非织造布行业的10强企业、最具成长性企业以及优秀供应商名单。中纺联王天凯会长、高勇副会长、陈伟康副书记，工信部消费品司王伟副司长等领导为获奖企业颁奖。本次评选自5月启动，共有62家企业报名，经过专家两轮严格评审最终选出2012/2013年度非织造布行业的“中国优势力量”。其中，浙江金三发等企业获得10强企业称号，宏祥新材料等企业获得最具成长性企业称号，烟台泰和、青岛纺机等企业获得优秀供应商称号。他们中既有国有企业，又有民营企业和外资企业。中国的产业沃土给了企业优良的发展资源，企业进步推动了产业发展的车轮。此次评选如同中国非织造布行业的奥斯卡奖，注定在业内激发起产业可持续发展的活力，并向世界宣言发展壮大中的中国产业与中国市场！</span></p><p>&nbsp;</p><p><strong><span style="font-family: 微软雅黑;">2012/2013年度中国非织造布行业10强企业：</span></strong></p><p><span style="font-family: 微软雅黑;">浙江金三发集团有限公司</span></p><p><span style="font-family: 微软雅黑;">山东泰鹏无纺有限公司</span></p><p><span style="font-family: 微软雅黑;">广东俊富实业有限公司</span></p><p><span style="font-family: 微软雅黑;">大连瑞光非织造布集团有限公司</span></p><p><span style="font-family: 微软雅黑;">普杰无纺布(中国)有限公司</span></p><p><span style="font-family: 微软雅黑;">福建鑫华股份有限公司</span></p><p><span style="font-family: 微软雅黑;">晋江市兴泰无纺制品有限公司</span></p><p><span style="font-family: 微软雅黑;">浙江和中非织造股份有限公司</span></p><p><span style="font-family: 微软雅黑;">佛山市南海必德福无纺布有限公司</span></p><p><span style="font-family: 微软雅黑;">杭州诺邦无纺股份有限公司</span></p><p><span style="font-family: 微软雅黑;">上海博格工业用布有限公司</span></p><p><span style="font-family: 微软雅黑;">绍兴县庄洁无纺材料有限公司</span></p><p><img style="width: 400px; height: 263px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131026234943353.jpg"/></p><p><strong><span style="font-family: 微软雅黑;">2012/2013年度中国非织造布行业最具成长性企业是：</span></strong></p><p><span style="font-family: 微软雅黑;">宏祥新材料股份有限公司</span></p><p><span style="font-family: 微软雅黑;">德州东方环保科技股份有限公司</span></p><p><span style="font-family: 微软雅黑;">徐州工业用呢厂</span></p><p><span style="font-family: 微软雅黑;">南京际华三五二一环保科技有限公司</span></p><p><span style="font-family: 微软雅黑;">福建南纺股份有限公司</span></p><p><span style="font-family: 微软雅黑;">厦门三维丝环保股份有限公司</span></p><p><span style="font-family: 微软雅黑;">泉州市东翔化工轻纺有限公司</span></p><p><span style="font-family: 微软雅黑;">江苏东方滤袋有限公司</span></p><p><span style="font-family: 微软雅黑;">恒天嘉华非织造有限公司</span></p><p><span style="font-family: 微软雅黑;">杭州萧山航民非织造布有限公司</span></p><p><img style="width: 400px; height: 264px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131026235003915.jpg"/></p><p><strong><span style="font-family: 微软雅黑;">2012/2013年度中国非织造布行业优秀供应商是：</span></strong></p><p><span style="font-family: 微软雅黑;">烟台泰和新材料股份有限公司</span></p><p><span style="font-family: 微软雅黑;">永安市宝华林实业发展有限公司</span></p><p><span style="font-family: 微软雅黑;">苏州市相城区江南化纤集团有限公司</span></p><p><span style="font-family: 微软雅黑;">温州朝隆纺织机械有限公司</span></p><p><span style="font-family: 微软雅黑;">青岛纺织机械股份有限公司</span></p><p><span style="font-family: 微软雅黑;">江苏迎阳无纺机械有限公司</span></p><p><span style="font-family: 微软雅黑;">大连华阳化纤科技有限公司</span></p><p><span style="font-family: 微软雅黑;">易特斯（烟台）精密纺织器械有限公司</span></p><p><span style="font-family: 微软雅黑;">常州市武进广宇花辊机械有限公司</span></p><p><span style="font-family: 微软雅黑;">台州宇星制针有限公司</span></p><p><span style="font-family: 微软雅黑;">浙江传化股份有限公司</span></p><p><span style="font-family: 微软雅黑;">南京炫胜塑料科技股份有限公司</span></p><p><span style="font-family: 微软雅黑;"><img style="width: 400px; height: 266px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131026235021322.jpg"/></span></p><p style="text-align: left;"><strong>2012/2013</strong><strong>年度中国非织造布行业10</strong><strong>强企业点评：</strong></p><p style="text-align: left;">&nbsp;</p><p style="text-align: left;"><span style="font-family: 微软雅黑;"><strong>浙江金三发集团有限公司</strong></span></p><p style="text-align: left;"><span style="font-family: 微软雅黑;">金三发集团从自身技术特色出发，应用差别化、功能型、绿色环保特性，开发高端服装粘合衬和医疗卫生用非织造布系列产品，延伸产业链，拉宽产品品种，踏出了一条成功道路。</span></p><p style="text-align: left;"><strong style="font-family: 微软雅黑;">山东泰鹏无纺有限公司</strong></p><p style="text-align: left;"><span style="font-family: 微软雅黑;">山东泰鹏多元化的产品结构和高精度的技改能力，增强了企业的核心竞争力，使民族品牌在国际市场赢得主动权。</span></p><p style="text-align: left;"><strong style="font-family: 微软雅黑;">广东俊富实业有限公司</strong></p><p style="text-align: left;"><span style="font-family: 微软雅黑;">广东俊富立足中国本土，实现海外扩张，以高效的流程化运作、优质的产品与超值的服务创造价值，成为世界非织造布40强企业之一。</span></p><p style="text-align: left;"><strong style="font-family: 微软雅黑;">大连瑞光非织造布集团有限公司</strong></p><p style="text-align: left;"><span style="font-family: 微软雅黑;">大连瑞光集团在自主创新和引进技术的基础上，丰富产品品种，体现“绿色、环保”创新理念，使企业从瑞光制造转向瑞光创造。</span></p><p style="text-align: left;"><strong style="font-family: 微软雅黑;">普杰无纺布（中国）有限公司</strong></p><p style="text-align: left;"><span style="font-family: 微软雅黑;">普杰是世界非织造布40强企业，普杰（中国）是较早在中国设立生产基地的企业，公司的全球网点和国际市场专长使其成为全方位供应商，带来高品质、高附加值、多功能、舒适、环保、安全的解决方案。</span></p><p style="text-align: left;"><strong style="font-family: 微软雅黑;">福建鑫华股份有限公司</strong></p><p style="text-align: left;"><span style="font-family: 微软雅黑;">鑫华公司走循环经济路线，拥有再生资源利用的差别化纤维和清洁生产的工程结构型非织造材料两个支柱产业，不仅给消费者提供更为现代化、便捷化的生活，更在潜移默化中保护了我们无可替代的绿色环境。</span></p><p style="text-align: left;"><strong style="font-family: 微软雅黑;">晋江市兴泰无纺制品有限公司</strong></p><p style="text-align: left;"><span style="font-family: 微软雅黑;">兴泰无纺从中国品牌远销海外，到重视国内市场开发，实现了以优质产品和完美服务满足生活消费提升，形成一个分布合理的营销服务网络，推动企业驶入持续、健康发展的“快车道”。</span></p><p style="text-align: left;"><strong style="font-family: 微软雅黑;">浙江和中非织造股份有限公司</strong></p><p style="text-align: left;"><span style="font-family: 微软雅黑;">和中公司采用进口生产线，注重技术创新，适应消费需求，开发能引导潮流的新产品，以体制创新和科技创新带动产业结构和资本结构的战略性调整，实现产业升级和经济效益稳定快速增长。</span></p><p style="text-align: left;"><strong style="font-family: 微软雅黑;">佛山市南海必得福无纺布有限公司</strong></p><p style="text-align: left;"><span style="font-family: 微软雅黑;">必得福，一次性医疗用纺织品的出口型生产企业，有着成熟的生产和品质控制程序，并不断配合客户整合一条完整的生产链，让客户享受高品质、高效率、低成本的“必得福”式的服务。</span></p><p style="text-align: left;"><strong style="font-family: 微软雅黑;">杭州诺邦无纺有限公司</strong></p><p style="text-align: left;"><span style="font-family: 微软雅黑;">诺邦无纺以水刺工艺为核心，发展多工艺组合技术，实现差异化竞争模式，创造出一条诺邦特色经营路线，取得市场认可。</span></p><p style="text-align: left;"><strong style="font-family: 微软雅黑;">上海博格工业用布有限公司</strong></p><p style="text-align: left;"><span style="font-family: 微软雅黑;">博格学习借鉴世界先进的环保知识，开发出新型耐高温过滤材料，创立“博格”国际品牌，打造过滤材料生产基地，较好地满足了工业过滤需求。</span></p><p style="text-align: left;"><strong style="font-family: 微软雅黑;">绍兴县庄洁无纺材料有限公司</strong></p><p style="text-align: left;"><span style="font-family: 微软雅黑;">庄洁无纺寻求差异化经营，逐步从医卫用非织造布扩展到生产革基布、电池隔膜等多元化产品，并且从卷材延伸到生产湿巾、擦布等非织造制品，既增加了企业的产品附加值，又丰富了产业集群的产品结构。</span></p><p><br/></p><p><br/></p>', NULL, N'', 6, 36, N'中国非织造布行业10强揭晓 ', 0, NULL, 0, 0, CAST(0x0000A28F00ED09E9 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (10, N'2013年中国国际非织造布会议会议论文征集通知', N'admin', NULL, N'<p><span style="font-family: 微软雅黑;">2013年中国国际非织造布会议定于2013年10月25日在浙江省绍兴县召开。本次会议由中国产业用纺织品行业协会（CNITA）、美国非织造布协会（INDA）和绍兴县人民政府共同主办，绍兴县夏履镇人民政府承办，欧洲非织造布协会EDANA支持，届时日本、韩国、中国台湾和中国香港的非织造布协会代表也将受邀出席。会议还将邀请政府主管部门、高校和研究机构的专家、国内外知名非织造布企业代表参加。参会领导和专家将就全球非织造布产业的发展趋势、技术状况、新应用领域开拓、可持续发展等热点问题展开广泛深入的探讨。</span></p><p><span style="font-family: 微软雅黑;">为更好的交流行业内最新的信息，拓展发展思路，提高行业创新能力，中国产业用纺织品行业协会在行业内征集会议论文。欢迎业内专家、学者、研究人员踊跃投稿。</span></p><p><strong><span style="font-family: 微软雅黑;">论文主题范围如下：</span></strong></p><p><span style="font-family: 微软雅黑;">1. 非织造布产业分析和市场研究</span></p><p><span style="font-family: 微软雅黑;">2. 
主要非织造布应用领域，如医卫、擦拭、过滤、土工、汽车等行业的技术与市场研究</span></p><p><span style="font-family: 微软雅黑;">3. 非织造布的加工工艺研究</span></p><p><span style="font-family: 微软雅黑;">4. 非织造布专用纤维市场和技术研究</span></p><p><span style="font-family: 微软雅黑;">5. 非织造布加工设备市场和技术研究</span></p><p><span style="font-family: 微软雅黑;">6. 非织造布及其制品标准、测试方法研究</span></p><p><span style="font-family: 微软雅黑;">7. 非织造布教育和人才培养</span></p><p><span style="font-family: 微软雅黑;">8. 非织造布企业的经营管理</span></p><p><span style="font-family: 微软雅黑;">9. 非织造布行业的循环经济和可持续发展研究</span></p><p><span style="font-family: 微软雅黑;">10. 非织造布的其它应用研究</span></p><p><span style="font-family: 微软雅黑;">协会将组织专家对稿件进行评审，通过评审的论文将收录到会议论文集中，并邀请部分优秀论文的作者在会议上做主题报告。</span></p><p><span style="font-family: 微软雅黑;">论文投稿截止日期：2013年10月15日</span></p><p><span style="font-family: 微软雅黑;">提交的论文统一用word软件排版，以A4 纸为标准，3000～8000 
字（单词），建议中英文双语论文；通过电子邮件提交论文电子版文件，投稿邮箱：cnitatongji@163.com.</span></p><p><span style="font-family: 微软雅黑;">联系人：刘东明 &nbsp;电话：010-85229421转607 &nbsp; &nbsp; 黄景莹 
&nbsp;电话：010-85229287转606</span></p><p><span style="font-family: 微软雅黑;">协会将组织专家对稿件进行评审，通过评审的论文将收录到会议论文集中，并邀请部分优秀论文的作者在会议上做主题报告。</span></p><p><span style="font-family: 微软雅黑;">论文投稿截止日期：2013年10月15日</span></p><p><span style="font-family: 微软雅黑;">提交的论文统一用word软件排版，以A4 纸为标准，3000～8000 
字（单词），建议中英文双语论文；通过电子邮件提交论文电子版文件，投稿邮箱：cnitatongji@163.com.</span></p><p><span style="font-family: 微软雅黑;">联系人：刘东明 &nbsp;电话：010-85229421转607 &nbsp; &nbsp; 黄景莹 
&nbsp;电话：010-85229287转606</span></p><p>&nbsp;</p><h3 style="color: blue; line-height: 21px; font-family: 微软雅黑, Arial;"><span style="font-size: 16px;"><a style="color: rgb(51, 51, 51); font-size: 12px; text-decoration: none;" href="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-09/files/20130911085915759.pdf"><span style="font-family: 微软雅黑;">点击下载：</span>2013年中国国际非织造布会议会议论文征集通知</a><a style="color: rgb(51, 51, 51); font-size: 12px; text-decoration: none;" href="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-09/files/20130911085825962.pdf"><span style="font-family: 微软雅黑;">.pdf</span></a></span></h3><p><br/></p>', NULL, N'', 6, NULL, N'2013年中国国际非织造布会议会议论文征集通知', 0, NULL, 0, 0, CAST(0x0000A28F00E61E22 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (11, N'中美两国协会共同主办中国国际非织造布会议将于10月召开 ', N'admin', NULL, N'<p style="color: rgb(51, 51, 51); line-height: 21px; font-family: 微软雅黑, Arial;"><strong><span style="font-family: 微软雅黑;">各有关单位：</span></strong></p><p style="color: rgb(51, 51, 51); line-height: 21px; font-family: 微软雅黑, Arial;"><span style="font-family: 微软雅黑;">非织造布是产业用纺织品的重要原材料，广泛应用于医疗卫生、过滤、土工和交通工具等领域。经过多年的发展，我国的非织造布工业得到了长足的进步，国际竞争力显著提高，海外市场开拓取得明显成效；同时，我国巨大的内需市场也吸引了国外非织造布巨头纷纷进驻，我国已经成为全球最大的非织造布生产国和消费国。</span></p><p style="color: rgb(51, 51, 51); line-height: 21px; font-family: 微软雅黑, Arial;"><span style="font-family: 微软雅黑;">为了加强国内外非织造布行业的交流与合作，促进我国非织造布产业的产业升级，帮助企业了解国外行业的先进技术、拓展国外市场，学习国外行业在经营理念、市场推广、基础研究、产业链配套和专业人才等方面的先进经验，中国产业用纺织品行业协会将联合美国非织造布协会、欧洲非织造布协会，于10月25日在浙江省绍兴县举办2013年中国国际非织造布会议，同期还将举办非织造布高级培训班。邀请行业内企业和对行业发展感兴趣的人士参加本次会议。</span></p><p style="color: rgb(51, 51, 51); line-height: 21px; font-family: 微软雅黑, Arial;"><span style="font-family: 微软雅黑;">现将部分事项通知如下，协会将于9月份发布正式通知。</span></p><p style="color: rgb(51, 51, 51); line-height: 21px; font-family: 微软雅黑, Arial;"><span style="font-family: 微软雅黑;"><strong>活动名称：</strong><br/>2013年中国国际非织造布会议<br/><span style="font-family: arial;">China International Nonwovens 
Conference(2013)，<em>CINC2013</em></span><br/><strong>会议时间：</strong>10月25日<br/><strong>会议地点：</strong>绍兴县<br/><strong>主办单位：</strong><br/>中国产业用纺织品行业协会<br/>美国非织造布协会（INDA）<br/>浙江省绍兴县人民政府<br/><strong>承办单位：</strong>浙江省绍兴县夏履镇人民政府<br/><strong>支持单位：</strong>欧洲非织造布协会（EDANA）</span></p><p style="color: rgb(51, 51, 51); line-height: 21px; font-family: 微软雅黑, Arial;"><span style="font-family: 微软雅黑;"><strong>会议主要议程：</strong><br/>1. 
2013年中国非织造布10强企业颁奖<br/>2. 国家政府部门领导、中国纺织工业联合会领导致辞。<br/>3. 
中国、美国、欧洲非织造布协会代表演讲，介绍区域内的市场和技术情况<br/>4. 香港、台湾地区非织造布协会演讲，介绍区域内市场和技术情况<br/>5. 
非织造布10强企业发言<br/>6. 专家发言，分别介绍非织造布行业的纤维、设备新技术情况和新工艺、新应用开发<br/>7. 
非织造布产品小型展示和产业链对接活动</span></p><p style="color: rgb(51, 51, 51); line-height: 21px; font-family: 微软雅黑, Arial;"><span style="font-family: 微软雅黑;"><strong>联系方式：</strong><br/>联系人：刘东明<br/>电话：010-85229287转605<br/>传真：010-85229425<br/>电子邮件：<a style="color: rgb(51, 51, 51); text-decoration: none;" href="mailto:cnitatongji@163.com">cnitatongji@163.com</a></span></p><p><br/></p>', NULL, N'', 6, NULL, N'中美两国协会共同主办中国国际非织造布会议将于10月召开 ', 0, NULL, 0, 0, CAST(0x0000A28F00E65401 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (12, N'2013年中国国际非织造布会议通知', N'admin', NULL, N'<p><strong><span style="font-family: 微软雅黑;">各有关单位：</span></strong></p><p><span style="font-family: 微软雅黑;">非织造布广泛应用于医疗卫生、过滤、土工和交通工具等领域。经过多年发展，我国非织造布工业得到长足进步，国际竞争力显著提高，海外市场开拓取得明显成效；同时，我国巨大的市场也吸引了国外非织造布巨头纷纷投资。目前，我国已经成为全球最大的非织造布生产国和消费国。</span></p><p><span style="font-family: 微软雅黑;">为了加强国内外非织造布行业的交流与合作，促进我国非织造布工业的产业转型升级，帮助企业了解国外行业的先进技术和应用、学习国外行业在经营理念、市场推广、基础研究、产业链配套等方面的先进经验，中国产业用纺织品行业协会联合美国非织造布协会、欧洲非织造布协会，于10月25日在浙江省绍兴县举办2013年中国国际非织造布会议。会议将发布2012/2013年中国非织造布十强企业、成长性企业和优秀供应商名单，并举办国际非织造布培训班。</span></p><p><span style="font-family: 微软雅黑;">欢迎广大单位派员参加。现将本次会议的相关事项通知如下：</span></p><p><strong style="font-family: 微软雅黑;">一、</strong><strong style="font-family: 微软雅黑;">会议日期和地点</strong></p><p><span style="font-family: 微软雅黑;">2013年10月25日全天（星期五）</span></p><p><span style="font-family: 微软雅黑;">浙江省绍兴县柯岩鉴湖大酒店</span></p><p><strong style="font-family: 微软雅黑;">二、</strong><span style="font-family: 微软雅黑;">&nbsp;</span><strong style="font-family: 微软雅黑;">会议组织</strong></p><p><strong style="font-family: 微软雅黑;">主办单位：</strong></p><p><span style="font-family: 微软雅黑;">中国产业用纺织品行业协会</span></p><p><span style="font-family: 微软雅黑;">美国非织造布协会</span></p><p><span style="font-family: 微软雅黑;">浙江省绍兴县人民政府</span></p><p><strong style="font-family: 微软雅黑;">承办单位：</strong></p><p><span style="font-family: 微软雅黑;">浙江省绍兴县夏履人民政府</span></p><p><span style="font-family: 微软雅黑;">浙江新中天控股集团有限公司</span></p><p><span style="font-family: 微软雅黑;">浙江越王控股集团有限公司</span></p><p><strong style="font-family: 微软雅黑;">支持单位：</strong></p><p><span style="font-family: 微软雅黑;">欧洲非织造布协会</span></p><p><strong style="font-family: 微软雅黑;">二、</strong><strong style="font-family: 微软雅黑;">参会人员</strong></p><p><span style="font-family: 微软雅黑;">1.政府行业主管部门有关领导。</span></p><p><span style="font-family: 微软雅黑;">2.中国纺织工业联合会、中国产业用纺织品行业协会领导。</span></p><p><span style="font-family: 微软雅黑;">3.境外相关行业协会代表。</span></p><p><span style="font-family: 微软雅黑;">4.纺织高等院校和研究机构代表。</span></p><p><span style="font-family: 微软雅黑;">5.非织造布十强企业、成长性企业和优秀供应商代表。</span></p><p><span style="font-family: 微软雅黑;">6.产业集群、专业分会、测试中心代表。</span></p><p><span style="font-family: 微软雅黑;">7.地方相关协会代表。</span></p><p><span style="font-family: 微软雅黑;">8.境内外非织造布及产业链企业代表。</span></p><p><span style="font-family: 微软雅黑;">9.行业媒体代表。</span></p><p><strong style="font-family: 微软雅黑;">四、</strong><span style="font-family: 微软雅黑;">&nbsp;</span><strong style="font-family: 微软雅黑;">会议主要日程</strong></p><p><span style="font-family: 微软雅黑;">1、国家政府部门领导、中国纺织工业联合会领导致辞。</span></p><p><span style="font-family: 微软雅黑;">2、中国、美国、欧洲非织造布协会会长（主席）发言，介绍区域内非织造布市场、贸易和应用情况。</span></p><p><span style="font-family: 微软雅黑;">3、香港、台湾地区非织造布协会会长发言，介绍区域内行业发展状况。</span></p><p><span style="font-family: 微软雅黑;">4、2013年中国非织造布十强企业新闻发布会。</span></p><p><span style="font-family: 微软雅黑;">5、国内外专家就非织造布的最新技术、应用和检测做多场技术报告。</span></p><p><span style="font-family: 微软雅黑;"><strong>五、会议语言</strong></span></p><p><span style="font-family: 微软雅黑;">中文和英语是本次会议的使用语言，会议将为参会代表安排同声传译。</span></p><p><span style="font-family: 微软雅黑;"><strong>六、</strong>&nbsp;<strong>会议费用</strong></span></p><p><span style="font-family: 微软雅黑;">1、符合以下条件的单位免收一名代表的会议费：</span></p><p><span style="font-family: 微软雅黑;">（1）中国产业用纺织品行业协会的副会长单位、分会会长单位、产业集群、检测与研发等公共服务平台。</span></p><p><span style="font-family: 微软雅黑;">（2）中国非织造布十强企业、成长性企业和优秀供应商。</span></p><p><span style="font-family: 微软雅黑;">（3）省市协会。</span></p><p><span style="font-family: 微软雅黑;">2、参加国际非织造布培训班的学员凭学费收据（发票）免收会议费用。</span></p><p><span style="font-family: 微软雅黑;">3、不符合上述条件的会员企业代表每名收取1000元会议费，非会员企业代表每名收取1500元会议费。</span></p><p><strong style="font-family: 微软雅黑;">七、</strong><span style="font-family: 微软雅黑;">&nbsp;</span><strong style="font-family: 微软雅黑;">联系方式</strong></p><p><span style="font-family: 微软雅黑;">联系人：刘东明 白晓</span></p><p><span style="font-family: 微软雅黑;">电话：010-85229421、9491、9483转607或605</span></p><p><span style="font-family: 微软雅黑;">传真：010-85229425</span></p><p><span style="font-family: 微软雅黑;">电子邮件：cnitatongji@163.com&nbsp; 
henry1449@sina.com</span></p><p><strong style="font-family: 微软雅黑;">由于参会人员较多，酒店住房比较紧张，请参加会议的人员在</strong><strong style="font-family: 微软雅黑;">10</strong><strong style="font-family: 微软雅黑;">月</strong><strong style="font-family: 微软雅黑;">18</strong><strong style="font-family: 微软雅黑;">日前将参会回执通过传真或电子邮件发送到协会，协会据此安排房间。</strong></p><p><strong><span style="font-size: 14px;"><span style="font-family: 微软雅黑;"><a href="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-09/files/20130917154506509.pdf"><span style="color: blue;">附件：会议通知</span></a></span></span></strong></p><p><strong><span style="font-size: 14px;"><span style="font-family: 微软雅黑;"><a style="font-family: 微软雅黑;" href="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-09/files/20130917153153134.doc">附件1：参会回执</a></span></span></strong></p><p><strong><span style="font-size: 14px;"><span style="font-family: 微软雅黑;"><a style="font-family: 微软雅黑;" href="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-09/files/20130917154555603.doc">附件2：前往绍兴的交通指南&nbsp;</a></span></span></strong></p><p><br/></p>', NULL, N'', 6, NULL, N'2013年中国国际非织造布会议通知', 0, NULL, 0, 0, CAST(0x0000A28F00E6888A AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (13, N'产业用纺织品手机报', N'admin', N'网站摘录', N'<table style="width: 600px;" border="0" cellspacing="0" cellpadding="0"><tbody><tr><td><img style="width: 276px; height: 523px;" alt="" src="/Doc/ArticleUpFile/2013-07/images/20130712140124461.jpeg"/></td><td style="text-align: left; vertical-align: top;" rowspan="2"><p>&nbsp;</p><ul class=" list-paddingleft-2"><li><p>手机报是中国产业用纺织品行业协会主办的手机媒体，是协会向行业提供信息服务的重要手段之一。<br/><br/>
	&nbsp;</p></li><li><p>手机报创办2年来，得到了广大读者的关注、支持和认可，成为行业内有影响的新媒体。<br/><br/>
	&nbsp;</p></li><li><p>手机报的内容紧紧围绕产业用纺织品的完整产业链，紧扣政策、市场和技术三个主题，重点报道行业内的重要政策动态、运行状况和经济数据、重大投资项目、新产品和新技术、协会工作动态和重要通知，是企业了解行业、获取市场和技术信息的重要平台。<br/><br/>
	&nbsp;</p></li><li><p>手机报的内容短小精炼，读者能快速获取信息；手机报的内容以彩信的形式发送到手机上，易于携带和保存，便于读者在繁忙的工作间歇阅读。<br/><br/>
	&nbsp;</p></li><li><p>手机报目前拥有超过6000名用户，包括各级行业主管部门领导、行业协会领导、媒体、企业家、高校科研院所的研究者等，这些读者都是行业重要参与者和关注者。<br/><br/>
	&nbsp;</p></li><li><p>手机报每周发送一次。协会对一周内行业重要事件进行编辑整理，周三发给用户。<br/><br/>
	&nbsp;</p></li><li><p>手机报免费向协会会员发送，如需订阅请联系刘东明。</p></li></ul></td></tr><tr><td><p>&nbsp;</p><p>如果您对产业用纺织品手机报的内容有好的建议，或者希望在手机报上发布公司广告，请联系协会。</p><p>联系人：刘东明</p><p>电话：010-85229287转605</p><p>传真：010-85229425</p><p>电子邮件：Liudm0922@QQ.com</p></td></tr></tbody></table><p>&nbsp;</p>', NULL, N'', 11, NULL, N'产业用纺织品手机报', 0, NULL, 0, 0, CAST(0x0000A29000B66F02 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (14, N'杂志征订启事', N'admin', N'本站', N'<p style="font: 12px/21px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><strong>杂志简介</strong></p><p style="font: 12px/21px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;">《技术纺织品》是原《中国非织造布和产业用纺织品》杂志和《非织造布》杂志的合刊，现作为中国产业用纺织品行业协会会刊。</p><p style="font: 12px/21px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;">《技术纺织品》涵盖纺织在各种功能性、特殊化和可替代产业应用领域的扩展和延伸，不仅包括非织造布，还包括机织物和针织物以及上下游纤维、制品和设备制造。杂志拥有丰富的出版资源和良好的沟通渠道，是行业宣传的窗口、企业求知的平台、展示交流的桥梁，已成为上下游产业信息对接的重要载体。栏目包括行业要闻、热点透视、产经运行、企业风采、市场与行情、科普园地、前沿科技、标准与检测、展会与论坛、产业集群等栏目。</p><p style="font: 12px/21px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;">《技术纺织品》为月刊，中国期刊网全文收录期刊、《中国学术期刊光盘版》全文收录期刊、中国核心期刊（遴选）数据库来源期刊、中国学术期刊综合评价数据库来源期刊、《中文科技期刊数据库（全文版）》收录期刊、“万方数据-数字化期刊群”全文上网期刊。中国标准连续出版物号：ISSN1005-2054(CN21-1308/TS)。每月25日出刊，大16开彩色印刷，时尚的版式设计给读者带来良好的视觉感受。</p><p style="font: 12px/21px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><strong>杂志定位</strong></p><p style="font: 12px/21px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;">《技术纺织品》的读者主要面向与纺织工业有关的国家主管部门、地方政府、行业协会、科研院所、检测机构、企业家、管理与技术高层，以及部分产业用纺织品的下游应用协会和用户等。</p><p style="font: 12px/21px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><strong>杂志订阅价格</strong></p><p style="font: 12px/21px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;">每期15元，每年180元。</p><p style="font: 12px/21px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><strong>联系人</strong></p><p style="font: 12px/21px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;">联系人：王宁<br/>地址：北京东长安街十二号<br/>邮编：100742<br/>传真：010-85229425<br/>电话：010-85229287-601<br/>邮箱：<a style="color: rgb(51, 51, 51); font-size: 12px; text-decoration: none;" href="mailto:wangning19862008@126.com">wangning19862008@126.com</a></p><p style="font: 12px/21px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><strong>订阅流程</strong></p><p style="font: 12px/21px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;">填写订阅表→将银行转账单、订阅表传真或邮件至协会→协会定期于每月25号通过邮政递出杂志。</p><p style="font: 12px/21px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><strong>订阅方式</strong></p><p style="font: 12px/21px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;">单位名称：&nbsp; 中国产业用纺织品行业协会<br/>开户行名称：工商银行北京王府井金街支行营业室<br/>开户帐号：&nbsp; 0200000709014462520&nbsp; （行号：1221）</p><p style="font: 12px/21px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><strong><a style="color: rgb(51, 51, 51); font-size: 12px; text-decoration: none;" href="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/files/20130723152002113.docx">下载期刊订阅表</a></strong></p><p><br/></p>', NULL, N'', 11, NULL, N'杂志征订启事', 0, NULL, 0, 0, CAST(0x0000A29000BAB933 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (15, N'广告服务说明', N'Admin', N'本站', N'<p style="font: 12px/21px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><a style="color: rgb(51, 51, 51); font-size: 12px; text-decoration: none;" href="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/files/20130723155115222.pdf"><strong>期刊广告</strong></a></p><p style="font: 12px/21px 宋体, Arial; text-align: center; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><img style="border-width: 0px; width: 400px; height: 349px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/images/20130723150608381.png"/></p><p style="font: 12px/21px 宋体, Arial; text-align: center; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><img style="border-width: 0px; width: 400px; height: 109px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/images/20130723150622074.png"/></p><p style="font: 12px/21px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><strong>手机报广告</strong></p><p style="font: 12px/21px 宋体, Arial; text-align: center; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><strong><img style="border-width: 0px; width: 400px; height: 212px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/images/20130723151108380.png"/></strong><br/><br/><a style="color: rgb(51, 51, 51); font-size: 12px; text-decoration: none;" href="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/files/20130723153426707.docx">手机报广告介绍</a><br/>&nbsp;</p><p style="font: 12px/21px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><strong>网站广告</strong></p><p style="font: 12px/21px 宋体, Arial; text-align: center; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><strong><img style="border-width: 0px; width: 450px; height: 175px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/images/20130723151228979.png"/><br/>广告<a style="color: rgb(51, 51, 51); font-size: 12px; text-decoration: none;" href="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/files/20130723151347871.JPG">示例图1</a>&nbsp;<span class="Apple-converted-space">&nbsp;</span><a style="color: rgb(51, 51, 51); font-size: 12px; text-decoration: none;" href="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/files/20130723151407383.JPG">示例图2</a></strong></p><p style="font: 12px/21px 宋体, Arial; text-align: center; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><a style="color: rgb(51, 51, 51); font-size: 12px; text-decoration: none;" href="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/files/20130723153653524.doc"><strong>网站广告报价资料下载</strong></a></p><p style="font: 12px/21px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><strong>广告联系人： 王宁&nbsp; 010-85229287转601&nbsp;&nbsp;</strong></p><p><br/></p>', NULL, N'', 11, NULL, N'广告服务说明', 0, NULL, 0, 0, CAST(0x0000A29000BB2EEE AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (16, N'《技术纺织品》征稿通知', N'Admin', N'本站', N'<p>《技术纺织品》（月刊）是由中国产业用纺织品行业协会等单位主办的技术类刊物。为增加刊物的信息量，使刊物真正成为沟通和交流信息的园地，本编辑部欢迎专家学者、广大读者撰写或编译反映国内外技术纺织品特别是产业用纺织品的发展动向和新产品、新技术、新用途等方面的综述、专论等文章，大力支持本刊的工作。</p><p>本刊报道的主要专业内容包括：1.医卫用纺织品、过滤用纺织品、建筑用纺织品、土工织物、包装用纺织品、特殊装饰用纺织品（篷帆布、灯箱布、革基布等）、交通运输用纺织品、农业用纺织品、安全防护用纺织品等16类技术纺织品的新原料、新工艺、新设备、新发展、新思路等；2.对产业用纺织品行业经济运行情况的分析及对产业用纺织品行业动态、市场前景的解读等。</p><p><strong>投稿方式</strong></p><p>1．纸张稿邮局投寄</p><p>邮寄地址：北京市东长安街12号 中国产业用纺织品行业协会 346室，邮编100742。</p><p>2．网上投稿</p><p>投稿邮箱：henwan2011@sina.com 。请务必在邮件主题一栏里标明来稿名，以免被邮箱屏蔽或视作垃圾邮件。</p><p>因为投稿邮箱存在难以预料的不稳定性，因此如果一旦遇有网上投稿障碍，还请作者及时电话联系并及时以纸张稿邮局投寄。&nbsp;</p><p style="text-align: left;"><strong>投稿要求</strong></p><p style="text-align: left;">1．文章论点明确，结构严谨，重点突出，数据可靠，文字简洁明了。凡涉及重要技术内容的，请作者在本单位审核之后再寄至本编辑部。综述及专论文章字数在5千字左右，消息类不得超过1.5千字。</p><p style="text-align: left;">2．跟踪国外最新发展动向，体现技术纺织品在产业中应用范围广、性能优异、节能环保的特色。要求编译类的稿件其原文发表时间不超过一年（消息类在半年之内），同时，译文请附原文复印件（或电子稿）。来稿应有中文摘要及关键词，作者的名字及工作单位（或所在学校）。中文摘要100～300字，关键词3～5个。</p><p style="text-align: left;">3．凡来稿系获得基金资助产生的，请按国家规定的正式名称填写基金项目名称。</p><p style="text-align: left;">4．来稿应尽量减少不必要的插图和表格。图表要求标准正规。图表不宜过大，且标题、标尺、单位、说明语一定要清晰，格式规范。</p><p style="text-align: left;">5．使用国际标准计量单位，采用国际符号（m、kg等），而不使用中文符号（米、千克等）。</p><p style="text-align: left;">6．参考文献格式：参考国家标准规定的著录格式，写明著作者姓名、文章或书名、来源（如出版社名或期刊名）及出版或刊载年（引自期刊的，要注明卷期和文章页码范围）。</p><p style="text-align: left;">7.文章限制在4000～5000字左右。</p><p style="text-align: left;">8．来稿请注明作者联系方式：地址、单位、邮编，电话（或传真）、E-mail地址等。</p><p><strong>本刊要约</strong></p><p>1．投稿稿件自发出之日（以邮戳和电子邮件发送日为准）起，3月内未收到本杂志采用通知，可转投其他媒体。</p><p>2．凡在本刊发表的作品，本刊享有两年专有出版权。在此期间内，任何媒体、出版物，如需转载、摘编本刊发表的作品，均须同时获得本刊授权。</p><p>3．投稿者若抄袭、模仿他人作品等侵犯他人知识产权的；或者稿件内容侵犯他人名誉权、隐私权、人格权的，由投稿者承担相应法律责任，文责自负。</p><p>4．本刊一律不退稿，请自留底稿。切勿一稿二投。稿件发表后，本刊即向作者寄样刊和支付稿酬。</p><p>5．凡在本刊发表的作品，视为投稿者已经授权本刊结集出版，本刊享有相应的汇编权及协会网站发布权。投稿者的作品由本刊汇编成书出版后，将按照著作权法规定的汇编作品稿酬标准一次性支付稿费。</p><p>6．凡向本刊投稿者，除附有书面特别声明外，均视为投稿者承诺本刊上述各项要约。</p><p><strong>稿酬支付标准</strong></p><p>自2011年10月起，《中国非织造布和产业用纺织品》杂志与《非织造布》杂志合并办刊，作为中国产业用纺织品行业协会会刊，并更名为《技术纺织品》，刊期定为月刊。</p><p>按照《技术纺织品》的专业定位，以保证出版质量，提高专业期刊的权威性与可读性，同时也是对广大译、作者的工作回报和投稿鼓励，杂志编辑部特制订此稿酬标准如下，敬请知晓。</p><table width="574" style="width: 574px;" border="1" cellspacing="0" cellpadding="0"><tbody><tr><td style="width: 142px;"><p>稿件分类</p></td><td style="width: 130px;"><p>稿酬标准</p></td><td style="width: 302px;"><p>备注说明</p></td></tr><tr><td style="width: 142px;"><p>专家约稿</p></td><td style="width: 130px;"><p>每千字80～100元</p></td><td style="width: 302px;"><p>此类为约请专家撰写的剖析行业深层次问题的分析类文章</p></td></tr><tr><td style="width: 142px;"><p>原创作品</p><p>&nbsp;</p></td><td style="width: 130px;"><p>每千字60～70元</p></td><td style="width: 302px;"><p>此类为企业和院所的科研人员撰写的有关产品开发、技术创新、管理智慧、市场分析等原创类文章；约请人员或本单位人员采访并深度透析行业事件的综述类报道</p></td></tr><tr><td style="width: 142px;"><p>翻译文章</p></td><td style="width: 130px;"><p>每千字40～60元</p></td><td style="width: 302px;"><p>此类为翻译与本协会有合作协议的外文专业期刊关于技术、产品、市场以及趋势的文章，简讯类一般每篇在300~400字，最多不超过800字，其他不限</p></td></tr><tr><td style="width: 142px;"><p>调研报告</p><p>活动消息</p></td><td style="width: 130px;"><p>每千字30～40元</p></td><td style="width: 302px;"><p>此类为本单位人员承担工作或参加活动所做的总结性报告，消息类不超过1000字</p></td></tr><tr><td style="width: 142px;"><p>学生的论文（新增）</p></td><td style="width: 130px;"><p>不付稿酬也不收取版面费</p></td><td style="width: 302px;"><p>&nbsp;</p></td></tr><tr><td style="width: 142px;"><p>会员企业的宣传来稿</p></td><td style="width: 130px;"><p>不付稿酬</p></td><td style="width: 302px;"><p>&nbsp;</p></td></tr></tbody></table><p>注：1.文章字数以四舍五入计算为整百数。</p><p>2.网络文章及图片不计稿费，职称评审类投稿不计稿费。</p><p>3.每类稿费标准以10元/千字为差额档区分稿件质量。</p><p>4.本单位人员稿费不超过500元/期，外单位人员稿费不超过600元/期。</p><p>5.特殊情况下，可根据稿件内容酌情增加稿酬。</p><p>&nbsp;</p><p style="text-align: right;">《技术纺织品》杂志社</p><p style="text-align: right;">2012年10月</p>', NULL, N'', 11, NULL, N'《技术纺织品》征稿通知', 0, NULL, 0, 0, CAST(0x0000A29000BBF766 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (17, N'《技术纺织品》期刊理事会', N'Admin', N'本站', N'<p style="font: 12px/21px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><span style="font-size: 12px;"><span style="font-family: 微软雅黑;">作为服务会员、服务行业的一种方式，中国产业用纺织品行业协会一直重视协会会刊的出版运营和发展提升。2011年，中国产业用纺织品行业协会通过积极努力，在辽宁天维纺织研究建筑设计有限公司的大力支持下，将原《非织造布》期刊（国内外公开发行）更名为《技术纺织品》，刊期为月刊。<br/>2012年，《技术纺织品》期刊将迎来新的发展机遇。一方面，《技术纺织品》编辑部力求内容创新，推出新的版面风格和栏目内容，提升信息服务的广度和深度。另一方面，中国产业用纺织品行业协会引导编辑部谋求服务创新，在协会广泛资源平台的基础上，拟联合优势企业，成立期刊理事会，实现打造共同管理、共同发展、合作双赢的行业公共服务平台。<br/><strong>&nbsp; 一、期刊发展的前景</strong><br/>&nbsp; 1、《技术纺织品》专业权威<br/>产业用纺织品在国际上被称为技术纺织品，具有技术含量高、产品附加值高、劳动生产率高和产业渗透面广的特征，在带动上下游相关产业和促进社会经济发展中发挥着重要作用。《技术纺织品》定位于专业的、权威的，囊括了纺织在各种功能性、特殊化和可替代产业应用领域的扩展和延伸，不仅包括非织造布，还包括机织物和针织物，以及上下游纤维、制品和设备制造，符合会刊引导和宣传行业的目标定位。<br/>期刊的读者对象包括与纺织工业有关的国家主管部门、行业协会、科研院所、检测机构、企业家、管理与技术高层，以及部分产业用纺织品的下游应用协会和用户等。为此，《技术纺织品》设置行业要闻、产经运行、热点透视、市场与行情、标准与检测、前沿科技、科普园地、展会与论坛、企业风采、产业集群等栏目，多角度地报道行业发展，适应目前纺织工业发展趋势和结构调整之需要。<br/>&nbsp; 2、产业用纺织品行业潜力无限<br/>产业用纺织品行业的发展得益于它不断替代传统材料，实现终端产品的丰富功能和企业的良好效益。目前，产业用纺织品已成为衡量纺织工业结构调整、产业升级和提升核心竞争力的重要标志之一，是发展现代纺织工业新的增长级。正因为此，工信部、国家发改委、质监总局三部委于2011年年底联合签发《产业用纺织品“十二五”发展规划》，以共同推动产业用纺织品的快速发展。这不仅极大地提升了产业用纺织品的行业地位，鼓舞了行业信心，也预示了产业用纺织品未来市场潜力无限。<br/>&nbsp; 3、中国产业用纺织品行业协会资源丰富<br/>中国产业用纺织品行业协会拥有众多会员企业，联系行业多方面的社会资源丰富，为《技术纺织品》提供了有力保证。借助协会更具引导性和更具行业发展紧迫感的社会经济发展使命，站在全行业健康可持续发展的方向下，无疑提高了期刊的权威性和专业性，大大增加了期刊的受众人群。此外，协会也将通过与国家政府部门、产品应用机构、生产企业乃至国际同行机构的良好沟通渠道为期刊进行深入联系和推广，让它成为行业宣传的窗口、企业求知的平台、专业交流与展示的桥梁，实现上下游产业链的充分对接。<br/><strong>&nbsp; 二、期刊理事会的职责和权利</strong><br/>《技术纺织品》期刊理事会每届任期两年，设主任理事1名，副主任理事2～4名，成员理事若干名。<br/>期刊理事会是为了更好地推动行业技术进步和建设信息交流平台，既整合行业的社会资源，发挥企业的积极性，也力求支持行业发展，提升企业的品牌形象和社会责任。期刊理事会的职责是充分发挥企业的社会责任和对行业进步的推动，与协会专业服务人员共同创办《技术纺织品》，使其成为产业用纺织品技术及商业信息交流的独家专业性杂志。<br/>为此目的，期刊理事会每年召开不少于两次会议，所有理事单位对《技术纺织品》期刊享有参与大型活动策划、广告支持、信息发布的权利，并享受资源的优先使用权。在任职期间，理事单位可以集中各自领域的资源，优势互补。<br/>同时，所有理事单位也负有支持期刊正常出版的责任，在期刊独立运营的基础上，给予期刊一定的资助。每届理事会的资助费用分别为主任理事25万元，副主任理事15万元，成员理事8万元。所有理事及单位均在每次期刊版权页列出名单。<br/>作为理事单位支持期刊的回馈，《技术纺织品》及中国产业用纺织品行业协会将以广告赠送和优先服务的宗旨，给予理事单位如下回报。<br/>&nbsp; 1、主任理事<br/>封面广告2次，封底广告2次，封二或封三广告2次，内彩广告5次。<br/>&nbsp;刊登不少于1次企业深度采访报道。<br/>刊登3次企业动态新闻，可以是企业重大活动、产品及市场创新、经营及社会责任等。<br/>优先为企业申报项目、推荐奖项以及参与协会活动策划和行业标准建设。<br/>&nbsp; 2、副主任理事<br/>封面广告1次，封底广告1次，封二或封三广告1次，内彩跨页广告1次，内彩广告5次。<br/>刊登不少于1次企业深度采访报道。<br/>刊登2次企业动态新闻，可以是企业重大活动、产品及市场创新、经营及社会责任等。<br/>优先为企业申报项目、推荐奖项以及参与协会活动策划和行业标准建设。<br/>&nbsp; 3、成员理事<br/>内彩跨页广告2次，内彩整页广告5次。<br/>刊登2次企业动态新闻，可以是企业重大活动、产品及市场创新、经营及社会责任等。<br/>优先为企业申报项目、推荐奖项以及参与协会活动策划和行业标准建设。<br/><strong>&nbsp; 三、期刊理事会的日常管理</strong><br/>&nbsp; 1、期刊理事会是由行业内知名企业家、研究人员组成，常设机构由中国产业用纺织品行业协会秘书处承担服务工作。<br/>&nbsp; 2、期刊理事会的办事机构及日常工作由《技术纺织品》杂志社承担。</span></span></p><p style="font: 12px/21px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><span style="font-size: 12px;"><span style="font-family: 微软雅黑;">联系人：王宁<br/>电话：13810858074&nbsp;&nbsp; E-mail：<a style="color: rgb(51, 51, 51); font-size: 12px; text-decoration: none;" href="mailto:wangning19862008@126.com">wangning19862008@126.com</a></span></span></p><p style="font: 12px/21px 宋体, Arial; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; font-size-adjust: none; font-stretch: normal; background-color: rgb(255, 255, 255); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;"><span style="font-size: 12px;"><span style="font-family: 微软雅黑;">中国产业用纺织品行业协会<br/>2012年2月</span></span></p><p><br/></p>', NULL, N'', 11, NULL, N'《技术纺织品》期刊理事会', 0, NULL, 0, 0, CAST(0x0000A29000BD2608 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (18, N'组织构架', N'admin', N'本站', N'<table cellspacing="0" cellpadding="0" align="center" width="93"><tbody><tr><td class="introduce_center_css"><p><img style="WIDTH: 600px; HEIGHT: 325px" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/images/20130716132202472.jpg"/></p></td></tr></tbody></table><p><br/></p>', NULL, N'', 45, NULL, N'组织构架', 0, NULL, 0, 0, CAST(0x0000A29100B4044A AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (19, N'部门设置 ', N'admin', N'本站', N'<p><span style="FONT-FAMILY: 微软雅黑"><span style="FONT-SIZE: 16px">财务与综合事务部</span></span></p><p><span style="FONT-FAMILY: 微软雅黑"><span style="FONT-SIZE: 14px"><span style="FONT-SIZE: 12px">综合协调协会行政、人事、劳资、财税、党务、工会、外事和日常工作安排等业务；组织起草、修订和发布协会相关规章、制度、综合文件等；拟定、审核和报送相关公文。</span><br/>&nbsp;</span>&nbsp;<br/><span style="FONT-SIZE: 16px">会员与市场拓展部</span></span></p><p><span style="FONT-FAMILY: 微软雅黑">为会员提供基础服务，并积极创造会员之间相互交流的平台，其部门职能包括会员管理、国内外展览会组织、专业会议与论坛组织、企业信用等级评价和企业社会责任推广等。<br/>&nbsp;&nbsp;<br/><span style="FONT-SIZE: 16px">技术与国际交流部</span></span></p><p><span style="FONT-FAMILY: 微软雅黑">负责行业技术相关的业务，包括行业咨询、发展规划、市场调研、受托项目实施、技术培训等；与国际知名业内机构和企业进行沟通、交流与合作，积极推动行业的国际化发展。<br/>&nbsp;<br/><span style="FONT-SIZE: 16px">产业与信息统计部</span></span></p><p><span style="FONT-FAMILY: 微软雅黑">产业调查、行业统计及经济运行分析；协会手机报、网站的编辑、运营；产业集群建设和服务、公共服务平台建设，相关活动的组织策划；行业信息咨询服务。<br/>&nbsp;<br/><span style="FONT-SIZE: 16px">标准与产品开发部</span></span></p><p><span style="FONT-FAMILY: 微软雅黑">负责标准的体系建设及制修订工作；行业检测中心、应用研究中心、专项检测中心及研发生产基地的评审及日常管理；产品开发及质量管理的技术咨询及技术培训等。<br/>&nbsp;<br/><span style="FONT-SIZE: 16px">《技术纺织品》杂志社</span></span></p><p><span style="FONT-FAMILY: 微软雅黑">整合优势资源成立了期刊理事会，负责协会会刊《技术纺织品》的编辑、运营和发行；为企业提供品牌宣传、技术交流、资讯与服务等平台。</span></p><p><br/></p>', NULL, N'', 46, NULL, N'部门设置 ', 0, NULL, 0, 0, CAST(0x0000A29100B4BEED AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (20, N'工作人员', N'admin', N'本站', N'<table cellspacing="0" cellpadding="0" align="center" width="93"><tbody><tr><td class="introduce_center_title1">协会领导</td></tr><tr><td><table cellspacing="0" cellpadding="0" width="450"><tbody><tr><td style="" colspan="5" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=3">李陵申</a></td></tr><tr><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=5">郑俊林</a></td><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=6">李桂梅</a></td><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=7">张传雄</a></td><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=8">段守江</a></td><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=9">朱民儒</a></td></tr></tbody></table></td></tr><tr><td style="PADDING-TOP: 10px" class="introduce_center_title1">工作人员</td></tr><tr><td><table cellspacing="0" cellpadding="0" width="450"><tbody><tr><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=4">李燕立</a></td><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=10">李昱昊</a></td><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=125">黄景莹</a></td><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=111">孙蓓蓓</a></td><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=112">白晓</a></td></tr><tr><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=113">季建兵</a></td><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=114">刘东明</a></td><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=115">赵瑾瑜</a></td><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=116">何荣芳</a></td><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=117">韩竞</a></td></tr><tr><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=118">王宁（杂志社）</a></td><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=119">赵东瑾</a></td><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=127">祝秀森</a></td><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=120">夏文文</a></td><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=121">赵学增</a></td></tr><tr><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=126">王宁（办公室）</a></td><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=123">张爱华</a></td><td style="" width="90" height="25"><a href="http://www.cnita.org.cn/china/assopersoninfo.aspx?sid=10&amp;pid=124">许秀玲</a></td><td style="" width="90" height="25"><br/></td><td style="" width="90" height="25"><br/></td></tr></tbody></table></td></tr></tbody></table><p><br/></p>', NULL, N'', 47, NULL, N'工作人员', 0, NULL, 0, 0, CAST(0x0000A29100B53BF6 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (21, N'副会长单位-常熟市飞龙机械有限公司 ', N'admin', NULL, N'<table cellspacing="0" cellpadding="0" align="center" width="93"><tbody><tr><td style="font-size: 12px; padding-top: 6px;"><p style="TEXT-ALIGN: center"><img style="WIDTH: 450px; HEIGHT: 158px" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-08/images/20130801132846072.jpg"/></p><p>常熟市飞龙无纺机械有限公司创建于1987年，坐落在中国名城常熟，距离上海仅70公里。公司占地面积8万平方米，净资产1.8亿（约2500万美元）。中高级无纺技术人才150人，总员工350人.我司专门效力于无纺机械、无纺工程技术、无纺布产品的研发及生产。常熟市飞龙无纺机械有限公司属江苏省高新技术企业，连续21年获AAA特级信用企业，亚洲非织造行业协会理事，中国产业用纺织品行业协会副理事长，企业通过ISO9001国际认证企业，在无纺机械专项技术产品，如：针刺机系列、水刺机系列多次获得国家级、省级重大奖项。公司与几十大院校联合自制成立无纺工程技术研发中心，具有十多项发明及自制创新技术专利.</p></td></tr></tbody></table><p><br/></p>', NULL, N'', 39, NULL, NULL, 0, NULL, 0, 0, CAST(0x0000A29100B5E837 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (22, N'副会长单位-大连瑞光非织造布集团有限公司 ', N'admin', N'本站', N'<table cellspacing="0" cellpadding="0" align="center" width="93"><tbody><tr><td style="font-size: 12px; padding-top: 6px;"><p>&nbsp;</p><p style="TEXT-ALIGN: center"><img style="WIDTH: 450px; HEIGHT: 153px" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-08/images/20130801133345415.jpg"/></p><p><span style="FONT-FAMILY: 微软雅黑">大连瑞光非织造布集团有限公司始建于1991年，占地面积为75000平方米，固定资产4.0亿元，共有员工500余人。历经二十年的发展，集团公司现已拥有四家分公司；一条C-C双梳理机水刺生产线、一条SPC气流成网木浆三层复合水刺生产线、一条木浆纸复合水刺生产线，年产各类水刺布40000吨；拥有四条纺粘法非织造布生产线，年产纺粘法非织造布16000余吨；两条熔喷法非织造布生产线，年产熔喷及SMS复合非织造布5000吨；三条纺粘复合生产线，年产各类纺粘复合布8000吨；三条色母粒生产线，年产色母粒600余吨。产品远销北美、欧洲各国、加拿大、马来西亚、印度、日本、韩国等国家及地区。</span><br/>&nbsp;</p><p><span style="FONT-FAMILY: 微软雅黑">集团公司始终坚持“成功源于每个人，更新生活每一天”的企业理念，在设备技术改造、升级、产品研发、企业管理上不断进行创新和持续改进，并通过了ISO9001质量体系认证和ISO14001环境体系认证。</span></p></td></tr></tbody></table><p><br/></p>', NULL, N'', 39, NULL, N'副会长单位-大连瑞光非织造布集团有限公司 ', 0, NULL, 0, 0, CAST(0x0000A29100B6E00C AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (23, N'关于召开中国产业用防静电纺织品研讨会的通知', N'admin', N'本站', N'<p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">各会员单位及相关单位：</span></strong></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">防静电纺织品是高性能防护纺织品类别之一，主要是应石油、化工、电力、煤炭、航空、航天、电子、汽车、环卫、水泥以及无尘无菌等行业作业环境要求而设计。随着人们安全意识的增强和技术的发展，不仅对防静电性能提出了更高的要求，同时也在舒适性和多功能化方面提出了要求。 为加强产业间的技术交流，促进防静电纺织品多功能的设计研发水平提升，中国产业用纺织品行业协会定于2013年12月17日在浙江省湖州市召开“中国产业用防静电纺织品研讨会”。 协会将邀请中国纺织工业联合会、中国工程院、中国纺织科学研究院、中国人民解放军总后勤部军需装备研究所、中国化学纤维工业协会、国家劳动保护用品质量监督检验中心和中国职业安全健康协会等机构的领导及防静电纺织品领域的专家做专题技术报告，相关事项通知如下：</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">一、 会议组织</span></strong></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">主办单位：中国产业用纺织品行业协会</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">承办单位：浙江蓝天海纺织服饰科技有限公司</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">协办单位：江苏省纺织研究所 湖州市服装商会 中国纺织科学研究院江南分院特种面料研发中心</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">二、 会议议题</span></strong></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">防静电纺织品应用相关的国家政策、法律、法规要求；国内外防静电纺织品现状、存在的问题及其发展趋势；防静电纺织品及防静电服标准解读。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">三、 参会人员</span></strong></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">产业用功能性纤维、纺织品等相关领域的科研院所、高等院校、地方协会及生产企业的相关人员。</span></p><p><strong><span style="font-family: 微软雅黑;">四、 会议时间</span></strong></p><p><span style="font-family: 微软雅黑;">报到时间：2013年12月16日下午14：00～20：00 会议时间：2013年12月17日 9：00开始</span></p><p><strong><span style="font-family: 微软雅黑;">五、 会议地点</span></strong></p><p><span style="font-family: 微软雅黑;">浙江省湖州市湖州皇冠大酒店（湖州吴兴区美欣达路1025号米兰广场） 酒店联系人：胡 雯 电话：13157295596 0572-2606999 请参会人员自行联系当地酒店，并提前确认好交通路线。</span></p><p><strong><span style="font-family: 微软雅黑;">六、 会务费用</span></strong></p><p><span style="font-family: 微软雅黑;">中国产业用纺织品行业协会会员单位免收会务费，非会员单位按1000元/人收取会务费。参会人员住宿费自理。</span></p><p><strong><span style="font-family: 微软雅黑;">七、 报名方式</span></strong></p><p><span style="font-family: 微软雅黑;">请参会人员于12月10日前将报名回执表发送到邮箱cnita@sina.com。</span></p><p><span style="font-family: 微软雅黑;">联 系 人：何荣芳 段守江</span></p><p><span style="font-family: 微软雅黑;">联系电话：010-85229287/9584/9474转608 、602</span></p><p><span style="font-family: 微软雅黑;">传 真：010-85229425</span></p><h3 style="color: blue;"><span style="font-family: 微软雅黑;">附件：&nbsp;<a href="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-11/files/20131121160547275.rar" style="text-decoration: none; font-size: 12px; color: rgb(51, 51, 51);">1、</a></span><a href="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-11/files/20131121160547275.rar" style="text-decoration: none; font-size: 12px; color: rgb(51, 51, 51);"><span style="font-family: 微软雅黑; font-size: 12px;">会议通知</span></a></h3><h3 style="color: blue;"><a href="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-11/files/20131121160447228.doc" style="text-decoration: none; font-size: 12px; color: rgb(51, 51, 51);"><span style="font-family: 微软雅黑;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2、</span><span style="font-family: 微软雅黑; font-size: 12px;">报名回执表</span></a></h3><p><br/></p>', NULL, N'', 18, NULL, N'关于召开中国产业用防静电纺织品研讨会的通知', 0, NULL, 0, 0, CAST(0x0000A29101775493 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (24, N'关于推荐第十二届中华技能大奖全国技术能手候选人和国家技能人才培育突出贡献候选单位候选个人的通知', N'admin', N'本站', N'<p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">各有关单位：</span></strong></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　根据《人力资源和社会保障部关于推荐第十二届中华技能大奖全国技术能手候选人和国家技能人才培育突出贡献候选单位候选个人的通知》（人社部发[2013]60号），按照《中华技能大奖和全国技术能手评选表彰管理办法》的有关规定，人力资源和社会保障部决定于2014年组织开展第十二届中华技能大奖、全国技术能手和国家技能人才培育突出贡献单位、个人评选表彰活动。现就有关事项通知如下：</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">　　一、本届表彰活动将在全国范围内表彰30名中华技能大奖获得者，300名全国技术能手，100家国家技能人才培育突出贡献单位和80名国家技能人才培育突出贡献个人。</span></strong></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">　　二、全国技术能手评选条件</span></strong></p><p><span style="font-family: 微软雅黑;">　　《中华技能大奖和全国技术能手评选表彰管理办法》（原劳动和社会保障部第7号令）规定：凡中华人民共和国公民，具有良好的职业道德和敬业精神，已获得省（行业）级技术能手称号，且具有高级以上职业资格或同等资格，技术技能水平在国内本职业（工种）中有较大影响，并具备下列条件之一的可参加能手的评选：</span></p><p><span style="font-family: 微软雅黑;">　　（一）在本职业（工种）中具备较高技艺，并在培养徒弟，传授技术技能方面做出突出贡献的；</span></p><p><span style="font-family: 微软雅黑;">　　（二）在开展技术革新、技术改造活动中做出重要贡献，取得重大经济效益和社会效益的；</span></p><p><span style="font-family: 微软雅黑;">　　（三）在本企业、同行业中具有领先的技术技能水平，并在某一生产工作领域总结出先进的操作技术方法，取得重大经济效益和社会效益的；</span></p><p><span style="font-family: 微软雅黑;">　　（四）在开发、应用先进科学技术成果转化成现实生产力方面有突出贡献，并取得重大经济效益和社会效益的。</span></p><p><span style="font-family: 微软雅黑;">　　全国技术能手候选人从已取得省（行业）技术能手称号的人员中推荐产生，原则上不能推荐中央企业的人员。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">　　三、中华技能大奖评选条件</span></strong></p><p><span style="font-family: 微软雅黑;">　　《中华技能大奖和全国技术能手评选表彰管理办法》（原劳动和社会保障部第7号令）规定：凡中华人民共和国公民，已获得全国技术能手称号，在本职业(工种)中的技术技能水平在国际国内有重要影响，并具备下列条件之一的可参加大奖的评选：</span></p><p><span style="font-family: 微软雅黑;">　　（一）在技术创新、攻克技术难关等方面做出突出贡献，并总结出独特的操作技术方法，产生重大经济效益和社会效益的；</span></p><p><span style="font-family: 微软雅黑;">　　（二）在本职业（工种）中，具备某种绝招绝技，并在带徒传艺方面做出突出贡献，在国际国内产生重要影响的；</span></p><p><span style="font-family: 微软雅黑;">　　（三）在推广应用先进技术等方面做出突出贡献的。</span></p><p><span style="font-family: 微软雅黑;">　　中华技能大奖候选人原则上从历届全国技术能手和具有高级技师职业资格人员中推荐。具备以下条件之一者，也可酌情推荐：（1）获得国家科技进步奖或全国劳动模范、五一劳动奖章等奖项，并坚持在企业生产一线工作的高技能人才；（2）在生产实践和工作岗位上贡献特别突出或实现重要发明创造的高技能人才；（3）在国际、国内重大职业技能竞赛活动中取得优异成绩的高技能人才。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">　　四、国家技能人才培育突出贡献单位和个人评选条件</span></strong></p><p><span style="font-family: 微软雅黑;">　　（一）国家技能人才培育突出贡献单位评选条件</span></p><p><span style="font-family: 微软雅黑;">　　《国家技能人才培育突出贡献奖评选表彰管理办法》（试行）（劳技办发[2004]2号）规定：凡中华人民共和国境内具有法人资格、严格遵守国家各项政策、法律、法规和财经纪律，照章纳税，经营状况良好，无违法乱纪行为的企业，具备下列条件的，可申报参加“突出贡献奖”的评选：</span></p><p><span style="font-family: 微软雅黑;">　　1、在高技能人才队伍建设方面，积极贯彻落实有关人才队伍建设的方针政策，有较完善的高技能人才队伍建设政策、措施，具有一支高素质的技能人才队伍；</span></p><p><span style="font-family: 微软雅黑;">　　2、在高技能人才培养和使用方面，积极参与国家有关部门组织的人才培养试点工作，具有积极的、行之有效的办法和措施，取得了较好的社会效益和经济效益；</span></p><p><span style="font-family: 微软雅黑;">　　3、在全面推行职业资格证书制度方面，按照国家相关规定，建立健全职业技能鉴定岗位职责，完善职业技能鉴定工作考核和监督检查措施，取得较好的经济效益和社会效益；</span></p><p><span style="font-family: 微软雅黑;">　　4、在职业培训方面，通过开展多种形式的岗位培训、岗位练兵、职业技能竞赛等活动，较好地提高了劳动者的就业能力和技能水平，为促进就业和再就业做出了积极的贡献。</span></p><p><span style="font-family: 微软雅黑;">　　（二）国家技能人才培育突出贡献个人评选条件</span></p><p><span style="font-family: 微软雅黑;">　　人力资源和社会保障部全国技能人才评选表彰办公室《关于印发国家技能人才培育突出贡献奖获奖个人申报条件的通知》（人技表彰函[2010]2号）规定：凡具备下列条件的，可申报参加“突出贡献奖个人”的评选：</span></p><p><span style="font-family: 微软雅黑;">　　1、坚持以邓小平理论和“三个代表”重要思想为指导，深入贯彻落实科学发展观，模范遵守国家法律法规，热爱技能人才培养工作，勤奋敬业，无私奉献，师德高尚；</span></p><p><span style="font-family: 微软雅黑;">　　2、企业生产一线的师傅，具有技师及以上职业资格，技艺高超，在培养徒弟，传授技术技能方面做出突出贡献，在技能人才培养工作中献计献策，总结并提出过合理化建议，被本企业或行业采纳、应用并推广；</span></p><p><span style="font-family: 微软雅黑;">　　3、技工院校等职业院校一线的教师，至2013年底，从事一线教学工作满15年，并获得过省级以上行政部门表彰奖励的教师。认真钻研业务，能高质量完成教学任务，努力推进职业教育教学方法创新，在教学研究、校企合作、技术推广，提高教学质量方面成绩突出，为人师表，在培养技能人才促进就业方面成绩突出。所教授的班级学生学习表现好、动手能力强、职业技能鉴定通过率、就业率高，或在省部级以上各类竞赛中获得奖励。</span></p><p><span style="font-family: 微软雅黑;">　　国家技能人才培育突出贡献单位和个人，应从基层企业和技能人才培养院校中推荐产生，主要包括国家级高技能人才培养示范基地、技工院校等职业院校、企业技能人才评价试点企业等。其中，个人应从企业生产一线员工、技能人才培养院校教师、各类培训机构和基层企业从事技能人才培养工作者中推荐。</span></p><p><span style="font-family: 微软雅黑;">　　上述四个奖项每个专业协会可推荐1名候选人（候选单位）。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">　　五、“大奖候选人”、“能手候选人”和“突出贡献候选个人”申报材料要求</span></strong></p><p><span style="font-family: 微软雅黑;">　　（一）《中华技能大奖申报表》（一式3份）；</span></p><p><span style="font-family: 微软雅黑;">　　（二）《全国技术能手申报表》（评选表彰用）（一式3份）；</span></p><p><span style="font-family: 微软雅黑;">　　（三）《国家技能人才培育突出贡献奖申报表》（个人）（一式3份）；</span></p><p><span style="font-family: 微软雅黑;">　　（四）候选人事迹材料（2份）；</span></p><p><span style="font-family: 微软雅黑;">　　1、事迹材料主要内容：（1）候选人的主要事迹及为本企业（单位）、本行业和国家做出的突出贡献；（2）候选人取得的成绩在同行业领域中（地区、国家或世界范围三个层次）的重要影响和作用；（3）候选人在本职工作岗位上做出的贡献及所产生的经济效益（要求用数字量化反映）；（4）候选人曾获得的省部级以上荣誉称号。</span></p><p><span style="font-family: 微软雅黑;">　　2、事迹材料的撰写要求：（1）实事求是，简明扼要。“大奖候选人”、“能手候选人”事迹材料着重突出技能技术方面内容；“突出贡献候选个人”事迹材料突出在技能人才培养方面内容；（2）事迹材料中可简要体现候选人所获荣誉称号，要求由低一级向高一级（即地区-国家-国际）依次写明。</span></p><p><span style="font-family: 微软雅黑;">　　3、事迹材料的格式：（1）“大奖候选人”事迹材料要求在2000字左右；（2）“能手候选人”和“突出贡献候选个人”事迹材料按两种格式申报：一种要求字数在1500字左右；另一种要求精选提炼在500字以内；（3）以候选人姓名为文件名、以Microsoft Word格式报送电子版。</span></p><p><span style="font-family: 微软雅黑;">　　（四）候选人技术技能水平、主要技术成果证明材料（3份）；证明材料要求：</span></p><p><span style="font-family: 微软雅黑;">　　1、候选人职业资格证书复印件（包含照片页、职业资格等级页、职业工种页）；</span></p><p><span style="font-family: 微软雅黑;">　　2、候选人所获各种荣誉称号的复印件或旁证材料，并要求整洁、清晰，统一用A4纸复印或打印。</span></p><p><span style="font-family: 微软雅黑;">　　（五）候选人所在单位及行业协会推荐函（1份）。行业协会推荐函请写明评选推荐上报流程，如：我行业协会开展评选活动，共收到10份上报材料，经过组织相关人员进行评选，同意推荐某某同志为我行业协会上报推荐人选。</span></p><p><span style="font-family: 微软雅黑;">　　（六）候选人近期正面免冠正装2寸彩色照片（“大奖候选人”每人10张；“能手候选人”、“突出贡献候选个人”每人5张）。红色背景，平光拍摄，成像清晰，光线反差小。“大奖候选人”工作照10张，其中横版照片8张，竖版照片2张，工作照以体现其在本岗位的工作情况为主，要能反映出“大奖候选人”的精神风貌。照片电子版刻制成光盘报送。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">　　六、“突出贡献候选单位”申报材料要求</span></strong></p><p><span style="font-family: 微软雅黑;">　　（一）《国家技能人才培育突出贡献奖申报表》（单位）（一式3份）；</span></p><p><span style="font-family: 微软雅黑;">　　（二）“突出贡献候选单位”事迹材料（2份）；</span></p><p><span style="font-family: 微软雅黑;">　　1、事迹材料的内容应包括申报单位概况，重点反映在高技能人才培育、使用方面的举措，取得的成绩，及通过开展职业培训、技能鉴定等工作对本单位产生的重要影响和作用（尽量用数字量化反映），以及申报单位在就业、培训、职业技能鉴定等工作中曾获得的奖项等。字数控制在3000字以内。</span></p><p><span style="font-family: 微软雅黑;">　　2、事迹材料要实事求是，简明扼要，突出重点；所获奖项，要求由低一级向高一级（即地区-国家-国际）依次写明。</span></p><p><span style="font-family: 微软雅黑;">　　3、事迹材料以申报单位名称为文件名、报送Microsoft Word格式电子版。</span></p><p><span style="font-family: 微软雅黑;">　　（三）申报单位有关证明材料（一式3份）；</span></p><p><span style="font-family: 微软雅黑;">　　证明材料包括：（1）企业法人营业执照（副本）复印件，培训机构还应提供办学培训资质证明（办学许可证等）复印件；（2）申报单位在就业、培训、职业技能鉴定等所获各种荣誉称号，需提供复印件或旁证材料，并要求整洁、清晰。证明统一用A4纸复印或打印。</span></p><p><span style="font-family: 微软雅黑;">　　（四）申报单位彩色照片10张，刻制成光盘申报。照片应重点展示单位整体概貌，以及生产、培训及有关活动场面。</span></p><p><span style="font-family: 微软雅黑;">　　（五）候选人所在单位及行业协会推荐函（各1份）。行业协会推荐函请写明评选推荐上报流程，如：我行业协会开展评选活动，共收到10份上报材料，经过组织相关人员进行评选，同意推荐某某同志为我行业协会上报推荐人选。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">　　七、材料申报的其他要求</span></strong></p><p><span style="font-family: 微软雅黑;">　　（一）本着勤俭节约原则，避免申报材料的过渡装帧、装订和修饰。申报材料采用黑白打印（复印）确保内容清楚、清晰即可；材料装订简单简洁。</span></p><p><span style="font-family: 微软雅黑;">　　（二）所有申报材料（包括事迹材料、照片、音像资料等）属于涉密范围的，须按照保密规定，经相关保密部门审核把关，进行脱密处理后再行申报。</span></p><p><span style="font-family: 微软雅黑;">　　（三）《中华技能大奖申报表》、《全国技术能手申报表》、《国家技能人才培育突出贡献奖申报表（单位）》和《国家技能人才培育突出贡献奖申报表（个人）》电子版请从中国劳动力市场网（www.lm.gov.cn）表彰栏目下载。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">　　八、有关材料上报时间</span></strong></p><p><span style="font-family: 微软雅黑;">　　中华技能大奖、全国技术能手候选人和国家技能人才培育突出贡献候选单位候选个人申报推荐材料请于2014年1月10日前报中国纺织工业联合会人事部。</span></p><p><span style="font-family: 微软雅黑;">　　联 系 人：吴末寒、孙晓音</span></p><p><span style="font-family: 微软雅黑;">　　联系电话：（010）85229131（9171）</span></p><p><span style="font-family: 微软雅黑;">　　传　　真：（010）85229161</span></p><p><span style="font-family: 微软雅黑;">　　电子信箱：sunxy@cntac.org.cn</span></p><p><span style="font-family: 微软雅黑;">　　邮政编码：100742</span></p><p><span style="font-family: 微软雅黑;">　　通讯地址：北京市东长安街12号（中国纺织工业联合会）</span></p><h3 style="font-family: 微软雅黑, Arial; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255); color: blue;"><a href="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-11/files/20131118093120712.zip" style="text-decoration: none; font-size: 12px; color: rgb(51, 51, 51);"><span style="color:#990303;font-family:????;font-size:3px"><span style="line-height: 28px;">附件：</span></span><span style="font-size: 12px;">点击下载</span></a></h3><p><br/></p>', NULL, N'', 18, NULL, N'关于推荐第十二届中华技能大奖全国技术能手候选人和国家技能人才培育突出贡献候选单位候选个人的通知', 0, NULL, 0, 0, CAST(0x0000A291017D80EB AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (25, N'关于召开2013中国纺织创新年会的通知', N'admin', N'本站', N'<p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">各省、自治区、直辖市纺织（服装）协会，纺织服装企业，产业集群地区及相关单位：</span></strong></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">为全面总结行业2013年度产品开发创新成果，探索全球经济增长趋缓环境下行业转型升级发展的优选路径，我联合会定于2013年12月6日在北京召开“2013中国纺织创新年会”。</span><span style="font-family: 微软雅黑;">现将会议有关事项通知如下：</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">一、 会议时间和地点</span></strong></p><p><span style="font-family: 微软雅黑;">时间：12月6日9：00-20：00</span></p><p><span style="font-family: 微软雅黑;">地点：北京，首都大酒店，紫云厅。北京东城区前门东大街3号（正义路与前门东大街交汇处东侧）</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">二、 会议内容</span></strong></p><p><span style="font-family: 微软雅黑;">1.年会主题</span></p><p><span style="font-family: 微软雅黑;">产业发展的新红利——新浪潮与新路径</span></p><p><span style="font-family: 微软雅黑;">2.年会内容</span></p><p><span style="font-family: 微软雅黑;">（1）主题报告：结合《纺织工业“十二五”发展规划》中期评估，全面分析2013年中国纺织行业整体发展形势，围绕科技、品牌、可持续发展和人才战略，重点探讨行业所面临的政策环境和新时期行业转型升级的机遇和路径。</span></p><p><span style="font-family: 微软雅黑;">（2）主题论坛：将邀请国务院发展研究中心领导、专家，知名产业经济和财经专家分别就经济金融政策走势、产业发展与经济变革进行解读和分享。</span></p><p><span style="font-family: 微软雅黑;">（3）创新论坛：优选2013年度“中国纺织工业联合会产品开发贡献奖”获奖企业总裁与行业当家人深度对话和碰撞，重点讨论行业新时期转型升级的方向与路径启示。</span></p><p><span style="font-family: 微软雅黑;">（4）颁奖典礼</span></p><p><span style="font-family: 微软雅黑;">本届年会期间将举行2013年度“中国纺织工业联合会产品开发贡献奖”颁奖典礼。</span></p><p><span style="font-family: 微软雅黑;">（5）本届年会期间，将同期举行“纺织科技与时尚论坛暨国家纺织产品开发基地成员日活动”，“纺织企业家论坛暨国家纺织产品开发基地总裁俱乐部活动”，详情将另行通知。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">三、 参会人员</span></strong></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">国家发展改革委,工业和信息化部领导，中纺联领导及各职能部门负责人，各专业协会负责人，各省、自治区、直辖市纺织（服装）协会负责人，2013年度中国纺织工业联合会产品开发贡献奖获奖企业总裁，国家纺织产品开发基地企业总裁，纺织产业集群（专业市场）代表及纺织产业链知名企业高管人员，国内外主要财经、行业媒体代表等。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">四、报名咨询：</span></strong></p><p><span style="font-family: 微软雅黑;">拟参会单位请填写会议回执（详见附件），于11月25日前传真或E-mail报送会务组。</span></p><p><span style="font-family: 微软雅黑;">传真：010-85229747</span></p><p><span style="font-family: 微软雅黑;">Email：gxj@ctei.gov.cn</span></p><p><span style="font-family: 微软雅黑;">1．2013年度中国纺织工业联合会产品开发贡献奖获奖企业</span></p><p><span style="font-family: 微软雅黑;">联系人：郑爱明 010-85229709</span></p><p><span style="font-family: 微软雅黑;">2．国家纺织产品开发基地企业</span></p><p><span style="font-family: 微软雅黑;">联系人：解廷儒 010-85229742</span></p><p><span style="font-family: 微软雅黑;">陈培培 010-85229727</span></p><p><span style="font-family: 微软雅黑;">3.其他</span></p><p><span style="font-family: 微软雅黑;">联系人：冯欢 010-85229678</span></p><p>&nbsp;</p><h3 style="font-family: 微软雅黑, Arial; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255); color: blue;"><a href="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-11/files/20131118090317915.pdf" style="text-decoration: none; font-size: 12px; color: rgb(51, 51, 51);">附件： 2013中国纺织创新年会日程及参会回执</a></h3><p><br/></p>', NULL, N'', 18, NULL, N'关于召开2013中国纺织创新年会的通知', 0, NULL, 0, 0, CAST(0x0000A291017DBE56 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (26, N'关于召开产业用纺织品标准化工作会议暨标准审定会的通知', N'admin', N'本站', N'<p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">各位委员和专家：</span></strong></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">兹定于2013年11月25日～26日在天津召开产业用纺织品标准化工作会议，并审定《手术衣用机织物》等6项标准，请各位委员和专家参加。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">一、会议主要内容</span></strong></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">1.<span class="Apple-tab-span" style="white-space: pre;"> </span>标准化工作会议。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">2.<span class="Apple-tab-span" style="white-space: pre;"> </span>审定下列标准：</span></p><p><span style="font-family: 微软雅黑;">—<span class="Apple-tab-span" style="white-space: pre;"> </span>手术衣用机织物</span></p><p><span style="font-family: 微软雅黑;">—<span class="Apple-tab-span" style="white-space: pre;"> </span>美妆用品非织造布</span></p><p><span style="font-family: 微软雅黑;">—<span class="Apple-tab-span" style="white-space: pre;"> </span>袋式除尘用针刺非织造过滤材料</span></p><p><span style="font-family: 微软雅黑;">—<span class="Apple-tab-span" style="white-space: pre;"> </span>洁净室用擦拭布</span></p><p><span style="font-family: 微软雅黑;">—<span class="Apple-tab-span" style="white-space: pre;"> </span>柔性灯箱广告喷绘布</span></p><p><span style="font-family: 微软雅黑;">—<span class="Apple-tab-span" style="white-space: pre;"> </span>遮阳篷和野营帐篷用织物</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">二、会议具体事项</span></strong></p><p><span style="font-family: 微软雅黑;">1. 会议日期：2013年11月25日～26日(24日报到，25日9:00开会。因24日下午安排参观活动，故请各位委员在24日14:00前报到)。</span></p><p><span style="font-family: 微软雅黑;">2. 会议地点：天津市滨海新区三号酒店（地址：滨海新区大港区轻纺经济区轻一街69号，电话：022-63318888，见附图）。</span></p><p><span style="font-family: 微软雅黑;">3. 乘车路线：从机场打车约170 元（60 公里）；从塘沽站打车约100 元（40 公里）；从天津站打车约130 元（50 公里），也可从天津站坐地铁9 号线到塘沽站下车（约40 分钟），再打车到酒店。</span></p><p><span style="font-family: 微软雅黑;">（注：天津机场和天津站安排接站车，13:30发车开往酒店。）</span></p><p><span style="font-family: 微软雅黑;">4. 会议费用：会务费1500元，食宿费自理。</span></p><p><span style="font-family: 微软雅黑;">5. 为便于安排住宿，请参加会议的委员和专家于11月14日前将回执发给秘书处（请用E-mail回复）。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">联系人：刘飞飞</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">E-mail: liufeifei@cttc.net.cn</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">联系电话：010-65987279 &nbsp; &nbsp;</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">抄送：中国纺织工业联合会</span></p><h3 style="font-family: 微软雅黑, Arial; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255); color: blue;"><a href="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-11/files/20131111095820119.zip" style="text-decoration: none; font-size: 12px; color: rgb(51, 51, 51);"><span style="font-family: 微软雅黑;">点击下载：会议通知及回执</span></a></h3><p>&nbsp;</p><p><br/></p>', NULL, N'', 18, NULL, N'关于召开产业用纺织品标准化工作会议暨标准审定会的通知', 0, NULL, 0, 0, CAST(0x0000A291017DF3D6 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (27, N'关于召开中产协特种纺织品分会第一届理事会第三次会议的通知', N'admin', N'本站', N'<p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">各有关单位：</span></strong></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">中国产业用纺织品行业协会特种纺织品分会第一届理事会第三次会议暨2014年度纺织军工配套衔接交流会，将于2013年11月22～23日在桂林召开，请贵单位届时派代表及有关专家出席。本次会议由中国产业用纺织品行业协会主办，中国产业用纺织品行业协会特种纺织品分会承办。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">具体事项通知如下：</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;"><strong>一、会议时间：</strong></span></p><p><span style="font-family: 微软雅黑;">2013年11月22～23日(11月21日全天报到)</span></p><p><span style="font-family: 微软雅黑;">所有会议代表请持会议通知和名片在桂林桂湖饭店报到</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">二、会议地点：</span></strong></p><p><span style="font-family: 微软雅黑;">桂林桂湖饭店 &nbsp;&nbsp;</span></p><p><span style="font-family: 微软雅黑;">地 &nbsp; &nbsp;址：广西桂林市叠彩区螺蛳山路1号</span></p><p><span style="font-family: 微软雅黑;">电 &nbsp; &nbsp;话：0773-2552155</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">三、会议内容：</span></strong></p><p><span style="font-family: 微软雅黑;">1. 中国产业用纺织品行业协会特种纺织品分会年度工作汇报；</span></p><p><span style="font-family: 微软雅黑;">2. 分会专家委员会例会，讨论有关技术事项；</span></p><p><span style="font-family: 微软雅黑;">3．交流纺织军工配套科研、生产、销售事宜,沟通纺织新产品、新技术在相关领域的发展与应用。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">四、会议费用：</span></strong></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">会议将收取会务费每人1800元(需住单间者每人另收160元/天房费)，非会员单位或未交会费单位代表会务费每人2800元（需方代表除外），会务组统一安排食宿。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">五、其他事项：</span></strong></p><p><span style="font-family: 微软雅黑;">1．请出席会议的代表于11月15日前将附件《会议报名表》以传真或邮件方式返回，会务组根据报名表安排食宿。</span></p><p><span style="font-family: 微软雅黑;">2. 会务联系人：</span></p><p>&nbsp;</p><p><span style="font-family: 微软雅黑;">（1）上海市延安西路1882号（邮编200051）</span></p><p><span style="font-family: 微软雅黑;">全国产业用纺织品科技情报站</span></p><p><span style="font-family: 微软雅黑;">张文光 &nbsp;021-62373086, 13301774876</span></p><p><span style="font-family: 微软雅黑;">张承瑜 &nbsp;021-62373116, 13301889393</span></p><p><span style="font-family: 微软雅黑;">传 &nbsp;真 &nbsp;021-62754501</span></p><p><span style="font-family: 微软雅黑;">E-mail &nbsp;infor@dhu.edu.cn</span></p><p>&nbsp;</p><p><span style="font-family: 微软雅黑;">（2）北京市东长安街12号（邮编 100742）</span></p><p><span style="font-family: 微软雅黑;">中国产业用纺织品行业协会</span></p><p><span style="font-family: 微软雅黑;">季建兵 &nbsp;010-85229425, 18611445189</span></p><p><span style="font-family: 微软雅黑;">E-Mail &nbsp;jijianbing@gmail.com</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">附件：&nbsp;</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><a href="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-11/files/20131111095520103.doc" style="text-decoration: none; font-size: 12px; color: rgb(51, 51, 51);"><span style="font-family: 微软雅黑;">一、会议报名表</span></a></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><a href="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-11/files/20131111095530306.doc" style="text-decoration: none; font-size: 12px; color: rgb(51, 51, 51);"><span style="font-family: 微软雅黑;">二、酒店交通信息</span></a></p><p><br/></p>', NULL, N'', 18, NULL, N'关于召开中产协特种纺织品分会第一届理事会第三次会议的通知', 0, NULL, 0, 0, CAST(0x0000A291017E5B16 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (28, N'中产协调研在京产业用纺织品企业', N'admin', N'本站', N'<p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">为进一步了解企业需求，提升协会服务水平和能力，促进产业用纺织品行业的发展，12月4~5日，中产协郑俊林副会长、段守江副秘书长等一行调研了北京五洲燕阳特种纺织品有限公司、北京五洲佳泰新型涂层材料有限公司、北京东方大源非织造布有限公司和北京英特莱科技有限公司四家企业。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">北京五洲燕阳特种纺织品有限公司作为一家成功实现军品转民品的生产企业，借助其二十多年来在军工领域积累的经验、技术和严谨的产品控制，经过3年多的产品开发和市场开拓，终于在民用市场上获得了成功。公司的谭晶副总工介绍说，公司以军工科技带动民用科技发展，以军品质量作为民用产品的有力保证，重视科研创新，设备自主研发，形成了&quot;生产一代、储备一代、研发一代&quot;的企业生命线。目前公司民用产品的总销售额达到95%以上，订单饱满；公司在廊坊市固安县新投资的项目也已经完成，完成后北京厂区将作为产品研发基地，持续进行产品研发和创新。谭总工还指出，现在企业面向民用的产品种类越来越多，因此迫切需要完善相关标准，同时成立权威检测机构，以使产品的市场推广更为顺畅。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">北京五洲佳泰新型涂层材料有限公司主要生产涂层织物材料及相关制品，近年来公司借助紧急救援产业快速发展的契机，积极开展多功能“帐篷城”、快速营房系列产品，功能性救灾产品和家庭应急产品的技术研发和产业化生产，逐步向都市服务业方向调整产业结构。调研中，朱振啟总经理介绍了公司在技术创新和产品开发上所做的工作，展示了公司最近研发的高寒地区保暖房等产品。据悉，公司在北京顺义区5万平方米的新厂房已经建成，目前正在组织搬迁。新厂区正式运行后，将形成5亿元产值的生产能力，可继续扩大市场占有率。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">北京东方大源非织造布有限公司(DDN)是我国最早从事水刺法非织造布生产、制造的专业生产企业之一，发展至今已有二十多年专注生产水刺非织造布的经验，在技术实力和研发能力上都有一定的积淀。公司现拥有一条全套从欧洲引进的水刺生产线和一条自主改进配备的水刺生产线，年产能约1万吨，其中70%以上供应国外客户，产品质量多年来稳定优良。张志宇总经理表示，虽然近几年在产量上没有太大扩张，但公司专注产品品质，得到了客户的信赖和认可，有着稳定的供需关系。不过随着国内水刺行业的快速发展，公司今后会在扩大产能、研发新产品、开拓国内市场方面投入更多力量，以在激烈的竞争中脱颖而出。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">北京英特莱科技有限公司是致力于环保科技、保温隔热和消防安全的高新技术企业。在“起步，就与世界同行”经营目标的指引下，公司始终坚持创新，从新型纤维的应用研究到产品结构设计各方面密切与客户沟通合作，共同开发了多项产品并产业化。现公司产品包括环保滤材、个人防护、建筑防火、保温隔热、非石棉摩擦材料五大系列产品，近千个品种。韩永超副总经理在介绍时说，随着国家对安全生产和个人防护的重视，具有高防护性能的消防服和特殊用途防护服的列装越来越多，为特种纺织品的发展提供了良好契机。不过与国外产品相比，国内产品的性能仍须不断提高，也需要国家出台相关法规推动各种防护产品的普及应用，从而更好地保护国家利益和人民的生命财产安全。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">调研中郑俊林副会长表示，协会的宗旨是服务会员企业，维护会员企业的利益，通过近年来不断完善多个服务平台，协会在服务内容上有了很大突破，今后将与企业共同努力，在上下游对接方面加大工作力度，发挥协会资源优势，就行业中出现的标准、技术和市场等共性问题，发挥应有的作用，促进行业健康发展。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;"><span style="font-family: 微软雅黑;"><img alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-12/images/20131206170539822.jpg" style="border-width: 0px; border-style: none; width: 400px; height: 266px;"/></span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;"><span style="font-family: 微软雅黑;"><img alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-12/images/20131206170550900.jpg" style="border-width: 0px; border-style: none; width: 400px; height: 298px;"/></span></p><p>&nbsp;</p><p><br/></p>', NULL, N'', 49, NULL, N'中产协调研在京产业用纺织品企业', 0, NULL, 0, 0, CAST(0x0000A291017F609E AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (29, N'广东无纺布协会第29次会员大会召开', N'admin', N'本站', N'<p><span style="color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 11.818181991577148px; line-height: 20.99431800842285px;  background-color: rgb(255, 255, 255);">11月27日，广东无纺布协会第2</span><span style="color: rgb(51, 51, 51); font-family: 微软雅黑; font-size: 11.818181991577148px; line-height: 20.99431800842285px;  background-color: rgb(255, 255, 255);">9次会员大会暨专题技术交流会在汕头召开。来自当地政府、广东非织造布企业、香港无纺布协会、台湾不织布工会、四川大学、华南理工大学等单位的百余位代表与会。中产协李陵申会长应邀出席了会议，并介绍了行业发展情况，同时希望广东的企业充分利用先发优势，在结构调整和产业升级中借助精细化管理、优良品质和较强的自主创新能力引领行业拓展非织造产品的适用性和企业向下游产业的渗透。广东无纺布协会吴淑焕会长介绍了广东无纺布行业的发展及协会工作，据悉2013年广东非织造行业的产能将突破90万吨。佛山斯乐普、必德福、三辉无纺机械等企业获广东协会创新“红棉奖＂。会议期间，李会长还参观了汕头三辉无纺机械有限公司等企业。</span></p>', NULL, N'', 49, NULL, N'广东无纺布协会第29次会员大会召开', 0, NULL, 0, 0, CAST(0x0000A291017F9749 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (30, N'产业用纺织品标准化工作会议暨标准审定会召开', N'admin', N'本站', N'<p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">11月25～26日，产业用纺织品标准化工作会议在天津滨海新区轻纺经济区召开，全国纺织品标准化技术委员会产业用纺织品分技术委员会主任李陵申、副主任方锡江，中产协秘书长李桂梅等领导及标委会委员和骨干企业代表70多人参加了此次会议。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">李陵申介绍了今年产业用行业的发展情况，并对行业标准的制修订和协会近一年来开展的标准化工作进行了总结。目前产业用纺织品行业发展增速继续居全纺织子行业之首，未来仍将稳定增长。行业的快速发展对标准体系的完善也提出了更高要求，从去年年初正式发布《产业用纺织品标准化工作“十二五”规划》以来，各有关单位结合实际做了大量工作，使行业标准体系得到不断完善。产业用纺织品标准化工作“十二五”规划为行业标准的制修订工作指明了思路，在今后要认真贯彻执行，理清行业需要完善的标准，加强标准化体系建设。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">他指出，在标准化工作中，很关键也是难度较大的一部分就是上下游之间、跨部门之间标准化工作的推进和对接。例如，在医疗卫生用和过滤用纺织品领域，如何实现生产与应用的对接、如何将标准宣贯下去是目前遇到的难点。在制定过滤用纺织品标准时，要考虑产品的物理指标、在试点企业的应用情况、在不同领域应满足的技术指标，包括对原料的使用等方方面面，从而实现与下游行业使用要求的衔接。<span style="font-size: 12px;">今年协会共牵头制定9项行业标准，此外公布实施2项、报批3项；对民用标准和军用标准进行了大力清理和整顿，这也成为协会标准化工作的重要部分。除推动国内行业标准体系的建设外，协会还通过与美国、欧洲广泛的交流合作为提升国内标准的国际化作出了很多努力。</span></span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">方锡江对国际标准化组织（ISO）体系、ISO的基本制定程序和纺织领域ISO/T38工作范围、国内对口单位等内容进行了系统介绍。他说，最近十年我国持续积极参与ISO的实质性工作，取得很大进展。从2009年开始，我国承办的ISO/T38会议越来越多，在国际标准化工作方面的影响正逐渐提升，如在针对消费品安全强制标准等方面进行的国际交流、积极参加国际间联合试验为指定标准提供数据。在国内，目前产业用纺织品中的土工布标准大多已将ISO标准等同或等效转化，其他领域标准则根据我国的行业情况进行制定。因此，为了实现更多产业用标准与国际标准接轨，相关部门和企业还要不断努力，使标委会专家队伍逐渐扩大、专家结构日益完善，以推动行业标准化工作顺利进行，并通过组团参加ISO会议，提升我国的话语权，尽快使我国的产业用标准进入ISO。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">中产协副秘书长段守江从7个方面就医疗卫生用纺织品联合推进机制工作的进展情况发言。他表示，最近几年我国医疗与卫生用纺织品有了快速发展，但是产品档次仍然属于中低端，进出口产品档次和价格差距很大。介于这一实际情况，今后政府机构、上下游协会、中产协和相关企业之间要加强沟通，在技术升级，加强行业自律和他律，推广优质、高端产品，如人造血管、血液透析材料、可吸收医用缝合线、一次性手术衣、老年失禁用品等进入市场，打造医疗卫生用纺织品精品等方面加大投入力度，共同推进医疗卫生用纺织品行业健康发展；协会将宏观微观并重，发挥自身优势，加快公共服务平台建设，为完善产业链上下游配套做更多工作。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">会议期间与会代表站在为行业健康发展的角度,本着对行业负责的原则对《手术衣用机织物》、《美妆用品非织造布》、《袋式除尘用针刺非织造过滤材料》、《洁净室用擦拭布》、《柔性灯箱广告喷绘布》、《遮阳篷和野营帐篷用织物》6项标准进行了认真、热烈的讨论，并全部通过。此外，与会人员还考察了滨海新区轻纺经济区，并与经济区领导就招商引资进行了座谈。</span></p><p><img alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-11/images/20131126143805478.jpg" style="border-width: 0px; border-style: none; width: 400px; height: 264px;"/></p><p>&nbsp;</p><p><img alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-11/images/20131126143820197.jpg" style="border-width: 0px; border-style: none; width: 400px; height: 264px;"/></p><p><br/></p>', NULL, N'', 49, 36, N'产业用纺织品标准化工作会议暨标准审定会召开', 0, NULL, 0, 0, CAST(0x0000A291017FC85B AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (31, N'中产协特种纺织品分会召开年会', N'admin', N'本站', N'<p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">11月22日中国产业用纺织品行业协会特种纺织品分会在桂林召开第一届三次理事会议，中国工程院院士姚穆、中产协李陵申会长、解放军总后军需装备研究所施楣梧博士、特种纺织品分会陈旭炜会长等专家、领导以及来自行业内的企业家60余人参加了本次会议。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">姚穆院士在专题报告中结合国家制造业强国战略研究课题阐述了我国纺织产业在新世纪面临的机遇和挑战。目前我国已经成为全球纺织经济第一大国，根据联合国预测，到2050年全球纤维加工总量将达到2.53亿吨，其中产业用纺织品1.7亿吨，占总量的67.4%，纺织产业还有巨大的发展空间。但是我国的纺织工业同时也面临着基础性资源、环境的挑战和加工生产成本；印度、越南等国家纺织产业的发展使我国在中低档产品领域的优势不复存在，美国和西欧的再工业化步伐加快占领纺织产业的高端市场，对我国的产业发展形成了双重挤压。面对困难和挑战，姚院士就我国纺织工业的发展提出了以下建议：整顿产品、提升品质、面向高端市场需求做出特色；注重技术创新占领世界前沿；延伸产业链条；建立产业技术创新联盟；做强制造业，向服务业延伸；建立产业集群；注重环境保护和可持续发展。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">李陵申会长在报告中介绍了2013年我国产业用纺织品行业的发展和技术创新情况，指出产业用纺织品与国计民生产业具有密切的关系，我国经济的持续发展、巨大的人口基数和城镇化建设为行业的发展提供了广阔的国内市场，行业近年来一直保持了较高的增速，希望大家抓住发展机遇，重视技术和人才的作用，为行业的发展做出贡献。由于行业的特殊性，特种纺织品业内的企业对行业全貌一直没有全面认识，分会陈旭炜会长在报告中全面介绍了我国特种纺织品行业的主要产品种类、发展情况和为国防、航空航天事业发展做出的贡献，并向会员报告了分会2013年的工作情况和今后的工作计划。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">施楣梧博士为大会作了题为“个体防护用纺织品的现状及发展趋势”的学术报告，分析了个体防护领域的市场需求、技术现状和产品开发重点与发展趋势，他重点强调在产品开发中要注意性能和价格的平衡，这样才利于产品的推广和应用。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">在年会上还通过了人事任免决议，并举行了供需双方衔接交流会。</span></p><p><br/></p>', NULL, N'', 49, 36, N'中产协特种纺织品分会召开年会', 0, NULL, 0, 0, CAST(0x0000A291018018B2 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (32, N'中产协调研江苏省结构增强用纺织品情况', N'admin', N'本站', N'<p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">11月13～16日，中产协郑俊林副会长和江苏省产业用纺织品行业协会朱知辉会长等一行5人，对江苏省的部分结构增强用纺织品企业进行了调研，先后参观了江苏奥神新材料有限公司、连云港神特新材料有限公司、中复神鹰碳纤维有限责任公司、连云港中复联众复合材料集团有限公司、苏州芳磊蜂窝复合材料有限公司、江苏天常复合材料股份有限公司、常州同维佳业新材料科技有限公司、常州市宏发纵横新材料科技股份有限公司、江苏恒神纤维材料有限公司、江苏航科复合材料科技有限公司、中材科技股份有限公司南京玻璃纤维研究设计院等骨干企业，南通大学、江南大学等相关科研人员参加了座谈会。通过调研和座谈，大家共同讨论了关于结构增强用纺织品专项联盟的一些想法和建议。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">高性能纤维，如碳纤维、芳纶、高强高模聚乙烯纤维、聚酰亚胺纤维等，对于支持产业升级和提升国民经济整体水平等具有重要意义，因此，各国都将发展高性能纤维及其复合材料提升到了战略高度。目前，我国高性能纤维的个别产品已经达到国际先进水平，但从产品的整体水平，特别是高端产品来看，与国际水平仍有相当差距。而且，目前国内一些通用级别纤维产品的产能仍未得到有效释放。这种现象是由多方原因造成的，比如产品基本性能仍有欠缺、稳定性较差，产品价格距离大规模使用仍有差距，各类纤维未形成系列产品，下游配套制品设计、加工工艺仍不成熟，应用领域缺乏相应工程设计和使用规范等。因此，如何提高纤维产品性能、配套制品加工设备及工艺、制定和规范工程设计应用等课题，成为一个需要整体考虑和全产业链合作的问题。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">江苏省是我国高性能纤维及其复合材料生产大省，省内几乎涵盖了我国全部高性能纤维材料品种，产业链上下游配套相对齐全，行业整体技术和产品水平处于国内领先地位。因此，对江苏省内资源进行整合，结合省外部分行业重点企业、高校和研究院所，以产业技术创新战略联盟的形式形成全产业链合力，势必将对高性能纤维及其制品的发展形成有效的强力推动。在调研和座谈过程中，企业、高校、科研院所等代表纷纷表示，产业技术创新战略联盟是一种科学的产学研用相结合的模式，便于梳理出行业关键共性技术，组织产业链优势力量进行重点攻关，及时将科技成果转化为现实生产力。同时，联盟的形式也可以有效分解整体研发投入和风险压力。当然，在联盟搭建和运行的过程中，也要重视体系建设和课题规划，让联盟成员能够合理分工、各尽其职，更好地集聚各方优势，提高运作效率，在提升行业整体水平的同时让联盟成员共享其利。中产协和江苏省产业用协会的领导均表示，协会将结合行业内骨干企业的阶段工作总结、项目梳理和推动，形成联盟工作的技术路线图和近、中、远期目标，在条件成熟时积极申请国家试点联盟。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;"><img alt="" src="http://localhost:10000/error!ue_separate_ueerror!" style="border-width: 0px; border-style: none; width: 400px; height: 266px;"/></p><p><br/></p><p><br/></p>', NULL, N'', 49, NULL, N'中产协调研江苏省结构增强用纺织品情况', 0, NULL, 0, 0, CAST(0x0000A29101806757 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (33, N'探讨行业转型发展之路', N'admin', N'本站', N'<p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">12月6日，2013中国纺织创新年会在北京召开。中国纺织工业联合会会长王天凯，工业和信息化部党组成员、总工程师朱宏任，工业和信息化部消费品司司长王黎明，中国纺织工业联合会副会长孙瑞哲、张延恺、张莉、夏令敏，中国纺织工业联合会党委副书记陈伟康、纪委书记王久新，工业和信息化部消费品司纺织处处长曹学军等领导出席。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">中国产业用纺织品行业协会李陵申会长出席会议并主持了分论坛“新方向 新机遇 行业转型发展之路”，邀请政府、行业协会、骨干企业的领导就产业转型的时机把握、方向选择、技术和人才储备、管理跟进、风险控制、企业家精神、政府与行业协会的角色等热点问题展开了精彩对话，分享各自经验和感悟。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">李会长在论坛引题演讲中首先向大家展示了产业用纺织品在建筑、医疗卫生、交通工具、国防等领域的应用，指出产业用纺织品拓展、也模糊了传统纺织产业的边界，发达国家产业用纺织品行业的充分发展为我国纺织行业的转型提供了可资借鉴的优秀案例。由于巨大内需市场的支持、多元化的应用领域以及产业链的协同支撑，我国产业用纺织品行业得到了快速发展，引起了政府、行业和企业家的关注，大量有抱负的企业家也将产业用纺织品作为企业转型的选择方向。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">海斯摩尔生物科技有限公司董事长胡广敏首先介绍了公司转型升级、二次创业的情况。公司坚定企业转型升级的方向，坚持科技创新和商业模式创新，致力于壳聚糖核心技术的研发、产业化生产，最终实现了纯壳聚糖纤维产业化突破等一系列科研成果，并通过价值营销和品牌合作向服饰面料、医疗、卫生、航天、军品等领域延伸，最终将打造覆盖全产业链的壳聚糖纤维产业。胡广敏在回答关于在转型升级中企业家精神的提问时表示，企业家要有成功的自信、坚定的信念、对选择事业持之以恒的坚持、对企业社会责任的坚守，这是他在公司发展中最深的体会。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">上海汽车地毯总厂有限公司副总经理龚杜弟介绍了上海地毯总厂抓住发展机遇由一家化纤企业转型成为产业用纺织品企业并成功为宝马等世界知名汽车制造商配套的历程。在谈到公司的转型经验时，龚杜弟总结为：依靠最初的桑塔纳项目完成资金和技术的原始积累；通过中级车型项目实现技术跨越，缩小与国外先进企业差距，提升企业形象，进行合资扩张；消化吸收和自主创新，高端产品和经济产品并行，向产业链前端延伸；打造优秀开发团队，重研发资源投入；与国内外高校和研究机构广泛交流、合作；管理模式和管理手段不断改进和探索，实现与汽车厂商的同步开发和精细化管理。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">浙江金三发集团有限公司董事长严华荣与大家分享了公司在发展过程中如何准确抓住发展机遇，找准发展方向和积极储备技术、人才来适应公司的发展。金三发经历了三次比较大的发展阶段，每次都是在宏观经济环境趋紧的时候公司加大投资上大项目。公司审慎选择投资项目，最终确定将非织造布和衬布作为公司业务重点，并且积极向非织造布的终端制品领域拓展，提高了企业在行业中的话语权。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">中国化学纤维工业协会会长端小平会长指出正是由于化纤行业的成功转型升级为服装、家纺和产业用纺织品提供了高质量的纤维原料，特别是近年来各种高性能纤维的成功研发使得生物医用、结构增强、高温过滤用纺织品行业的发展成为可能。对于大家关心的化纤产能问题，端小平从化纤行业近10年的产量变化和市场需求两个角度进行了阐述，认为目前化纤产能处于惯性增长通道，产能增长与需求相比还是温和的。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">地方政府在企业的转型升级发展中发挥了重要的作用，特别是在产业集群地区由于同类企业高度集中，政府的支持效应尤为明显。江苏省阜宁县阜城镇党委书记高曙红介绍了阜城镇支持滤料产业发展的做法。阜城镇通过土地、财政、税收等手段来支持企业的固定资产投资、技术创新、设备改造、展会和人才引进与培养。通过行业自律的形式来规范竞争企业行为，避免过度竞争造成内耗。阜城不仅对大企业的发展给予重点关注，对于区域内的小微企业也给予了足够支持，主要体现在小微企业的贷款、引导小微企业为大企业做配套、通过支持大企业产业升级和产业链延伸为小微企业的发展留空间，降低小微企业的税费负担，对于引进的人才给予补贴等。通过政府的支持和行业的努力，形成了产业链条完整，技术先进，大中小企业协调发展的可喜局面。</span></p><p><img alt="" src="http://localhost:10000/error!ue_separate_ueerror!" style="border-width: 0px; border-style: none; width: 400px; height: 267px;"/></p><p><br/></p>', NULL, N'', 50, NULL, N'探讨行业转型发展之路', 0, NULL, 0, 0, CAST(0x0000A2910180AF8A AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (34, N'产业用纺织品“十二五”发展规划', NULL, NULL, N'<p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;"><span style="font-family: 微软雅黑;">&nbsp;</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;"><span style="font-family: 微软雅黑;"><a style="font-size: 12px;" name="123"></a></span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;"><span style="font-family: 微软雅黑;"><img alt="" name="top1" src="http://localhost:10000/error!ue_separate_ueerror!" style="border-width: 0px; border-style: none; width: 400px; height: 241px;"/></span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;"><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;<a style="font-size: 12px; color: rgb(51, 51, 51);" name="top"></a>产业用纺织品是指经专门设计、具有特定功能，应用于工业、医疗卫生、环境保护、土工及建筑、交通运输、航空航天、新能源、农林渔业等领域的纺织品。产业用纺织品技术含量高，应用范围广，市场潜力大，其发展水平是衡量一个国家纺织工业综合实力的重要标志。“十一五”期间，我国产业用纺织品快速发展，产业规模持续扩大，技术进步成效明显，应用领域不断拓宽，已逐步成为纺织工业新的经济增长点。2009年国务院制定的《纺织工业调整和振兴规划》,将加快产业用纺织品开发应用作为提高自主创新能力和调整结构的重点任务，有力地促进了产业用纺织品的发展。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;“十二五”是我国实现经济结构调整和发展方式转变的关键时期，是纺织工业实现由大变强，实现科学发展的重要机遇期。战略性新兴产业发展、绿色发展、人民生活质量改善等目标任务的确立，将为产业用纺织品提供更广阔的市场空间。为促进我国产业用纺织品行业持续健康发展，增强纺织工业综合实力，更好地满足国民经济和社会发展需求，制定《产业用纺织品“十二五”发展规划》，规划期为2011—2015年。&nbsp;</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;一、“十一五”发展成就<br/>&nbsp;&nbsp;&nbsp;&nbsp;（一）行业规模持续扩大</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;2010年，产业用纺织品纤维加工总量达到822万吨，比2005年增长124.9%，“十一五”期间年均增长16%，占国内纺织纤维加工量的20％，比2005年提高6.4个百分点。2010年产业用纺织品现价产值超过5000亿元，比2005年增长1.7倍，“十一五”期间年均增长22%。2010年出口额138亿美元,比2005年增长1.5倍，五年年均增长19%。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;</span><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">（二）技术进步成效明显</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;非织造技术的突破性发展大幅提高了产业用纺织品加工效率，降低了成本，扩大了产业用纺织品的应用。我国纺粘、水刺非织造布生产装备与技术接近国际先进水平，综合生产成本降低了20%。产业用经编和立体编织技术的进步，实现了风力发电叶片、卫星支架、火箭喉衬等异型材料的稳定生产，满足了航空、新能源领域需求。新型纤维应用技术的进步，丰富了产业用纺织品的品种，扩大了应用领域，芳纶、聚苯硫醚等高技术纤维应用于气体过滤材料，使过滤用纺织品使用环境扩展到高温、易腐蚀的复杂环境，延长了产品的使用寿命，显著提高了滤尘效能。2010年产业用纺织品行业劳动生产率达到15万元/人·年，年均增长率达18%。&nbsp;</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;</span><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">&nbsp;（三）骨干企业和产业集群初步形成</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;产业用纺织品骨干企业实力不断增强，2010年销售收入超过5亿元的企业20家，超过10亿元的企业10家。骨干企业在交通工具用、医疗与卫生用、合成革用、土工用纺织材料领域均占有较大的市场份额，在推动相关标准制修订和拓展市场应用等方面起到了引领作用。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;产业集聚发展趋势明显，浙江、广东、江苏、山东、福建、上海等六省市产业用纺织品产能和产量约占全国的80%，形成了浙江海宁经编复合材料、江苏阜宁过滤材料、山东陵县土工合成材料、湖北仙桃医疗与卫生用材料等主导产业突出的产业集群，集群规模化效应初步显现。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;</span><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">（四）重要领域应用效益显著</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;产业用纺织品的发展为促进国民经济相关领域的发展和技术进步做出了积极贡献。在医疗领域，病毒阻隔效率高的一次性手术衣、口罩等医用防护产品的开发应用，有效应对了“非典”、“甲型流感”等疫情，降低了交叉感染几率，提高了医疗防护水平。在节能环保领域，袋式除尘技术的应用可将火力发电的粉尘排放截留效率提高5倍以上，并能分离回收珍贵稀有金属，变废为宝。土工用纺织品在青藏铁路建设中的应用，对解决高原地质裂缝、冻土隔断、保温、防渗等系列难题发挥了重要作用。轻质高强的纺织复合材料在动车、汽车、飞机等交通工具制造中部分替代了传统的合金材料，在减轻结构重量的同时，实现了节能降耗。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;二、“十二五”发展面临的形势<br/>&nbsp;&nbsp;&nbsp;&nbsp;（一）发展机遇</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;1.培育战略性新兴产业为产业用纺织品的发展创造了机遇。随着全球产业分工和经济增长模式的调整，以新能源、新材料、节能环保、生物制造等为代表的新兴产业，将成为未来经济发展的新引擎。我国也将培育战略性新兴产业作为发展现代产业体系的重点，产业用纺织品既与新材料产业密不可分，也是新能源、节能环保、高端制造等新兴产业不可或缺的配套材料，发展前景广阔。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;2.经济结构的战略性调整为产业用纺织品发展提供了市场空间。我国区域协调发展、城镇化水平的提高以及社会保障条件的改善，将拉动产业用纺织品需求持续较快增长。到2015年，我国铁路运营里程将达到12万公里以上，铁路、公路等基础设施建设所用土工纺织品年均增长率将超过10%。未来五年，我国一次性卫生及医用纺织品年均增长率将超过15%，尤其是目前我国60岁以上老龄人口总量已超过1.7亿，成人卫生用品的市场需求将成倍增长。目前我国袋式除尘在燃煤电厂的应用比例不到10%，远低于欧洲60%的水平，随着国家对粉尘排放要求的提高，袋式除尘应用将逐步推广，未来五年袋式除尘用过滤材料年需求增长将超过15%，2015年用量将达2000万平方米。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;3.发展产业用纺织品是纺织工业结构调整和转型升级的重要方向。发达国家传统纺织服装行业不断萎缩，产业用纺织品发展势头强劲，美、日等国产业用纺织品加工量占纺织纤维加工量的比例超过40%。我国纺织工业产能占全球的50%，纺织服装出口占全球的比重超过30%，而我国产业用纺织品加工量只占纺织纤维加工量的20%。进一步发展传统纺织服装行业既面临资源和环境的制约，也面临国际竞争激烈、贸易摩擦加剧的压力。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;通过加快发展产业用纺织品，不断开拓新兴应用领域，促进纺织工业结构调整、转型升级，是实现我国纺织工业由大变强的重要举措。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;</span><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">（二）主要挑战</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;1.产需衔接不足。产业链协同开发不足，专用纤维原料、装备、制品及应用领域不能形成有效对接，影响产业用纺织品的市场开拓。生产领域的产品标准与应用领域的使用规范不够协调统一，产业用纺织品的权威检测和认证机构的缺失，制约产品进入高端应用市场。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;2.产业结构矛盾突出。产业用纺织品企业数量多，对完整产业链具有影响力的企业少，整体技术水平不高，中低档产品市场竞争激烈，高性能产品主要依赖进口或由跨国公司主导。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;如国内一半以上纺粘非织造生产线年产能仅1500吨，近90%的6生产线是单一丙纶纺粘品种，而美国单线平均产能8000吨左右，主要是复合纺粘生产线。全行业研发投入少，跨学科复合型人才缺乏，行业技术服务平台缺失，制约了高技术含量、高附加值产品的开发。如国内企业生产的车用内饰纺织品只能为中低档轿车配套，高级轿车内饰材料由跨国公司提供，高端生物医用纺织品主要依赖进口。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;3.国际产业格局调整加大我国发展高性能产品的难度。发达国家凭借技术和供应链整合优势占据着全球垂直分工的高端和主动地位，垄断了大部分高技术和高附加值产业用纺织品市场。随着发达国家再工业化战略实施，将进一步巩固和扩大其在产业用纺织品领域的主导地位，加大了我国产业用纺织品行业进行结构调整发展高性能产品和进入高端市场的难度。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;三、指导思想、基本原则和发展目标<br/>&nbsp;&nbsp;&nbsp;&nbsp;（一）指导思想</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;以邓小平理论和“三个代表”重要思想为指导，以战略性新兴产业发展为契机，以满足国民经济相关领域需求为导向，以转变发展方式为主线，加快自主创新，加强产需衔接，完善公共服务，注重环境友好，大力提升产业用纺织品关键技术研发、产品质量控制和高端产品设计应用水平，全面提高产业用纺织品综合竞争力，促进产业用纺织品行业与相关领域健康协调发展。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;</span><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">&nbsp;（二）基本原则</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;1.以市场需求为导向，加强产需衔接。注重市场需求研究，加强产业衔接配合，形成部门协调、企业对接、跨行业协同推进的产业用纺织品行业发展新机制。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;2.以自主创新为支撑，加快技术进步。强化自主创新，突破制约产业用纺织品的关键共性技术装备，扩大高技术含量和高附加值产品的生产应用，实现行业发展的高质量和高效益。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;3.以骨干企业为依托，促进集约发展。支持优势企业实施兼并重组，壮大骨干企业，完善产业配套，形成以骨干企业为核心，中小企业协同配套的集约化发展模式。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;4.以平台建设为抓手，完善公共服务。加强共性技术开发、标准规范制定、质量检测以及认证平台建设，提高产品质量保障水平和行业公共服务能力。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;</span><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">（三）发展目标</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;“十二五”期间，产业用纺织品行业的纤维加工总量稳步增长，自主创新能力明显增强，产业配套环境逐步改善，行业发展的质量和效率大幅提高，使产业用纺织品成为我国纺织工业实现由大到强转变的重要增长极。到“十二五”末的具体指标：</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;1.规模效益保持稳步增长。产业用纺织品纤维加工总量达到1290万吨左右，年均增长9.5%；高性能纤维用量由目前的5万吨提高到10万吨；产业用纺织品纤维加工总量占纺织行业纤维加工总量的比重由目前的20%提高到25%左右；行业总产值达到1万亿元左右，年均增长15%左右。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;2.自主创新能力明显增强。规模以上企业研发投入占销售</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;收入比重达到1.5%，建成具有国家级水平的企业技术中心3～5家，以骨干企业或产业集群为依托的行业公共研发、检测服务平台20家左右，全员劳动生产率年均增长10%以上。耐高温气体过滤材料、病毒级医用防护材料、土工用纺织品等生产技术水平跨入国际先进行列。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;3.产业结构进一步优化。培育形成具有国际竞争力、销售规模超过50亿元的骨干企业3～5家，销售规模超过100亿元的产业集群3-5家，形成东中西部优势互补的产业格局。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;4.资源利用和节能减排显著进步。主要产业用纺织品单位增加值能耗降低21%，回收用纤维占产业用纺织品纤维加工总量的比例由目前的10%提高到20%，水刺非织造布工艺用水回用率由目前的80%提高到95%以上。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;四、主要任务<br/>&nbsp;&nbsp;&nbsp;&nbsp;（一）加快自主创新，突破技术瓶颈</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;1.加强产业用纺织品基础技术研究。支持纺织科研院所、高校与应用领域研究机构联合开展纤维材料功能优化设计、制品成型加工理论以及应用特性分析研究，实现生物医用纺织品、高温气体过滤材料、永久性膜结构纺织材料、电池隔膜用纺织材料等产品的基础加工技术和应用评价技术的突破，为产业化应用创造条件。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;2.加快织造和非织造成型技术装备开发。加快高速宽幅非织造技术升级，加快熔喷、纺粘及针刺等多种工艺在线复合成型、多层复合成型技术的产业化，推动重磅宽幅剑杆织造、经编和多轴向立体编织成型等技术装备的产业化，提高装备的功能集成化、生产自动化及设备配套水平，提高产品质量与生产效率，拓展产品应用领域。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;</span><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">专栏1：行业共性关键技术</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;1.非织造成型技术。研究高速宽幅非织造梳理铺网技术装备，高性能纤维织造加工中的低损伤高速缠结技术，发展双组份熔喷、静电纺纳米非织造等新</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;型成型技术。梳理成网速度提高到100米/分以上，静电纺纳米非织造布平均纤维细度小于500纳米。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;2.织造成型技术装备。研究重磅、宽幅、高速、高性能产业用机织和产业用经编技术，突破800-3000克/平方米的宽幅异厚织物的织造技术，达到相同</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;紧密度和均匀度，其变形率控制在1％以内。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;3.复合加工技术与装备。突破各种非织造材料之间的在线复合以及非织造材料与传统织物、薄膜等材料的复合加工技术，提高在线生产自动控制水平。SMS纺熔成网速度达到500米/分。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;3.加快功能性后整理技术装备开发。研究专用涂层、贴合、定型等整理装备、助剂及工艺，提高产品抗酒精、防渗漏、吸附臭味、阻燃、抗菌、抗老化、防辐射、防霉蛀、耐酸碱等功能性水平。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;</span><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">（二）促进产需衔接，完善产业配套</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;1.发展产业用纺织品专用纤维。配合纤维原料企业开发碳纤维、聚苯硫醚、聚四氟乙烯、聚酰亚胺等高性能纤维，稳定纤维质量、降低纤维生产成本，提高纤维的耐热、耐腐蚀、抗氧化等功能。推动亲水、高吸水、抗菌、强吸附、阻燃、异细度、高弹、低缩等产业用纺织品专用纤维的开发与生产。开展生物质纤维的开发应用研究，满足医疗与卫生用纺织品、结构增强用纺织品等对纤维原料的需求。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;2.推进产业用纺织品材料与终端制品的协同开发。跟踪下游应用领域发展动向，注重与设计单位及终端用户的协调沟通，推进产业用纺织品企业与终端制品企业的联合与融合，实现产业用纺织品与终端制品的协同开发，完善产业链配套。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;3.提高为终端制品及工程用户服务能力。加强产业用纺织品企业多学科人才培养，增强服务意识，注重加强对产品工程应用的研究与指导，提高工程化和专业化服务能力，促进应用领域设计应用水平的提高。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;</span><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">（三）完善平台建设，增强服务功能</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;1.推动研发与检测认证服务平台建设。推动医疗与卫生用、过滤与分离用、土工用、结构增强用、安全与防护用纺织品等跨行业、跨学科的应用评价测试服务平台和认证服务平台建设，强化产品检测和质量监督，保障产品使用安全。推动建设以骨干龙头企业为主体、大专院校、科研院所为技术支撑、配套和设计应用单位参加的产业技术联盟，发挥产业联盟共性技术开发与技术转移服务的平台作用，加快技术创新和成果转化。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;2.加强行业信息咨询服务。构建行业信息平台，提供国内外上下游行业发展的动态信息以及新产品、新工艺和新市场的发展动向，引导行业理性投资和科学决策。加强专业展会、论坛的组织，促进国际交流及上下游企业的对接。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;3.完善标准管理体系。加大标准化工作力度，加强产业用纺织品标准体系研究，支持标准化工作机构建设，完善产业用纺织品跨行业的标准协调机制，在重点产品领域，推动生产、应用部门联合制定系列产品标准和应用标准，加强配套测试方法标准的制修订，推动实现标准术语与检测方法的协调统一。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;</span><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">&nbsp;专栏2：标准制定</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;1.医疗用纺织品使用指南，完善紧急医疗防护用、手术防护用纺织品等领域的产品及测试方法标准。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;2.耐高温过滤材料、过滤袋、中空纤维膜材料及过滤器膜元件等产品标准及测试方法标准。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;3.适用于铁路、水利、公路等工程用土工合成材料的产品及测试方法标准。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;4.防弹、防刺、防爆、防火等防护服装及用品的产品及测试方法标准。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;5.多轴向经编骨架材料、立体编织及其复合材料等产品及测试方法标准。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;6.交通工具用座椅面料、地毯、安全气囊等产品及测试方法标准。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;7.农业用纺织品的产品及测试方法标准。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;</span><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">（四）优化产业结构，促进集约发展</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;1.优化产品结构。提高量大面广类产品的质量和技术水平，丰富产品品种，增加产品功能,拓展高技术含量、高附加值产品的生产应用。开发推广一次性医用防护材料、耐高温耐腐蚀环保滤料、隧道、高铁、垃圾填埋等专用土工用纺织品、复合增强骨架材料等高端产业用纺织品，组织工程示范，满足相关领域应用需要。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;2.增强骨干企业实力。加强现代企业制度建设，推进企业管理创新，鼓励采用信息化技术提升企业生产经营水平。支持企业按照终端产品应用和市场准入要求，完善质量保证体系建设，开展企业资质认证。鼓励产业用纺织品企业与相关上下游企业间的并购、重组、联营，形成一批集纤维原料开发、材料加工、终端制品生产和应用研究、设计、服务为一体的大型骨干企业，提高企业对全产业链的影响力。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;3.促进特色产业集群发展。结合产业用纺织品终端消费市场层次多、需求广的特点，以骨干企业为核心，培育形成一批专、精、特、新的专业化生产企业，完善产业配套，促进产业集聚发展，发展一批主导产品突出、主流技术先进、公共服务较为完善的新型产业集群。到“十二五”末，建设3-5家销售收入达到100亿元以上的产业集群。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;4.优化产业区域布局。以市场需求为导向，依托已有产业基础和相关技术资源，加强区域协调配套，形成东中西部优势互补的区域布局。东部地区发挥人才、技术及信息等优势，着重加强研发创新，大力发展医用、环保、复合增强材料等高技术含量、高附加值产业用纺织品。中部地区结合当地产业基础，发展卫生材料、土工合成材料以及车用配套用等纺织品。西部地区利用特色资源，发展农业用、卫生材料、基础设施用纺织品。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;</span><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">（五）推动节能减排，注重资源循环</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;1.加快产业用纺织品专用纤维回收技术的开发。利用非织造布能适应多种纤维原料的特点，突破聚酯瓶片、纤维废料、废旧服装等可再生资源的回收利用技术，提高回收再利用纤维的强力，稳定纤维质量，增加粗旦、细旦和功能性品种，发展产业用回收再利用专用纤维。研究安全与防护用、过滤与分离用等产品中的废旧高性能纤维及边角料的回收再利用技术。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;2.加强回收再利用纤维在产业用纺织品中的应用。支持采用回收再利用纤维开发除医疗卫生领域以外适宜的产业用纺织品，保证产品质量和使用功能。在新型建材领域，开发具有保暖、阻燃、防水等多种功能的建筑用绝缘和密封材料；在土工用纺织品领域，开发施工过程中临时使用的土工纺织品；扩大回收再利用纤维在包装、农业等领域的应用。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;3.推进节能减排。完善节能减排制度管理，注重清洁生产技术开发，推广在线控制、在线计量管理技术，加大纺前着色纤维在产业用纺织品中的应用。扩大先进技术装备应用比重，淘汰单线能力小、生产效率低、质量控制差的纺粘、针刺、熔喷等设备。加强生产过程余热、废水回收利用。提高水刺非织造废水处理和回用技术水平，吨产品耗水量由目前的20吨左右降低到10吨以下。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;五、重点领域和产品<br/>&nbsp;&nbsp;&nbsp;&nbsp;（一）医疗与卫生用纺织品</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;1.医用组织器官材料。加强人造皮肤、可吸收缝合线、疝气修复材料等组织器官替换材料，以及透析材料等生物医用纤维和制品的开发研究，突破特殊纺丝成形加工技术以及组织器官成型、功能涂覆技术，提高生物相容性，实现部分产品进口替代目标。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;2.高端医用防护产品。开发生产基于非织造布材料的医用一次性手术衣、一次性防护口罩及手术铺单，提高病毒阻隔过滤效率、抗菌吸水或阻水性能，提高材料柔软、透湿、透气等服用性能，满足急性传染病、高感染几率手术防护要求。开发基于长丝织的耐洗涤、抗静电重复用手术衣。开发实验室专用防护服，推广具有耐久抗菌、抗污功能的医用床单、病员服。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;3.新型卫生用品。采用生物可降解型、抗菌、超吸水等功能性纤维原料，提升婴儿尿布、妇女卫生用品、成人失禁用品、功能湿巾和工业擦拭布等产品的技术性能指标。重点开发面层材料和导流层材料，研究开发材料的可降解性能，提高面层材料的柔软性和功能性，以及导流层的蓬松性和复合化，增强可持续的差动导流性能。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;</span><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">专栏3：医疗用纺织品推广示范工程</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;探索建立医疗用纺织品配送服务体系，扩大一次性手术衣、高级别防护口罩、一次性手术铺单等在传染病医院、ICU病房、重点手术室等场所推广应用；推广具有抗菌、抗污、抗酒精、耐久性好的功能性重复用医用床单（垫）、病员服，提高常规医疗防护水平。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;</span><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">（二）过滤与分离用纺织品</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;1.耐高温袋式除尘滤料。研究耐高温、耐腐蚀、高吸附、长寿命袋式除尘材料，提高高性能纤维的可加工性能，减少加工过程对纤维功能的损伤，分别满足高温、高粉尘量、高酸性、高氧化性等气体的过滤需求，解决袋式除尘在钢铁、水泥、冶金等行业应用技术问题。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;2.复合过滤材料。选取具有不同性能的多种纤维加工制成滤材，解决非织造和织造复合技术，滤料表面精细加工后处理技术，覆膜技术和在线自动复合加工技术，开发高功能或专一功能的滤料，实现高效率、可分解二噁英、可回收重金属等功能，满足实际生产要求。利用合成木浆（SWP）开发耐腐蚀、高吸附、高精度、多层组合的过滤材料，代替传统的滤纸，缓解进口木材和木浆的紧张局面。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;3.中空纤维及膜材料。加强中空纤维纺丝技术和膜技术研究，提高中空纤维膜通透量和抗污染性，扩大其在污水深度治理、水净化等领域的应用。研究生物材质中空纤维膜材料制备技术，突破中空纤维在血液净化器或膜式血液氧化器等体外过滤器中的应用。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;4.医药、化工、食品、造纸等过滤用纺织品。提高单丝高密织造技术水平，开发推广具有分离精度高、抗菌、高导湿等性能的滤料，扩大在医药、食品等领域的应用。研究微纳米复合纤维非织造超精细过滤材料，扩大在精细化工领域的应用。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;专栏4：袋式除尘在发电、冶金、建材等领域推广示范工程</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;开发耐腐蚀、可分解、高吸附、耐高温、长寿命袋式除尘材料，燃煤电厂高温烟气过滤材料全面实现国产化，滤袋使用寿命达到4年，火力发电袋式除尘应用比例由10%提高到30%以上，垃圾焚烧领域袋式除尘应用比例达到100%。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;</span><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">（三）土工与建筑用纺织品</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;1.功能性土工布、土工膜（格栅）。开发高强定伸长土工布，提高高铁专用结构层土工布材料在不稳定工作温度下的持久耐磨性。加强防水卷材基布技术研究，提高防水卷材的强力、热稳定性及使用寿命。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;2.生态化土工用纺织品。发展生物可降解天然纤维土工布、生态型垃圾填埋用复合土工布膜，提高土工用纺织品生态相容性，减少环境破坏。推广秸秆、树皮、椰壳等生物质天然纤维土工布在人工栽培、生态修复、沙漠化治理等工程中的应用。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;3.新型建筑用纺织品。突破轻型建筑用永久性膜结构材料的产业化技术，提高膜结构材料强度、耐老化性能、自清洁性能。推进新型纤维增强防裂材料、内墙保温节能非织造布、隔声阻燃材料、建筑室外遮阳材料的产业化。提高防水防渗基材质量水平，扩大建筑难燃保温隔热材料的应用，提高建筑防火安全等级。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;4.高技术土工合成材料。探讨带有光纤传感器（地基工程用）和相关监控系统的智能土工织物开发，一体化提供土壤加固、结构安全监控和预警等功能。开发应用在地铁、隧道等高要求工程中的防渗、排水土工合成材料，提高非织造布、排水板、膜等多种材料的系统性复合加工工程技术。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;</span><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">（四）交通工具用纺织品</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;1.车用坐椅内饰面料。研究车用坐椅面料的纤维选择、面料设计织造及后整理技术，提高内饰制品的强吸附、防异味、抗菌、阻燃、防霉防蛀、自清洁等性能水平。研究新型功能性合成革加工技术和绿色环保加工技术，开发具有良好回弹性、柔软性、仿真性、透气性的生态型超细纤维合成革，满足中高档轿车配套要求。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;2.车用其他纺织材料。突破安全气囊的纤维、面料、制品加工一条龙产业化技术，提高安全带用纤维强力、耐磨以及耐气候性能，扩大非织造布在车内过滤材料、缓冲消音装置、隔热填充材料中的应用。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;3.多功能篷盖材料。研究基布织造技术和宽幅涂层技术，开发具有紧密度大、轻质高强、自清洁、防水、耐气候、防辐射等特性的新型篷盖材料。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;</span><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">（五）安全与防护用纺织品</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;1.防弹防刺纺织品。提升超高分子量聚乙烯纤维、芳纶纤维等高强纤维的应用技术，解决防弹防刺面料加工技术，实现柔性复合防刺防割面料的产业化。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;2.功能性防护服装。加强功能整理研究，开发同时具备耐超高/低温、隔热、阻燃、毒气分解、防辐射等多功能的防护面料，研制新型消防服、抢险救援服、矿工防护服、防生化服、电焊防护服等产品。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;3.消防救生用纺织品。研发并推广消防专用灭火毯，高强、阻燃、轻质救生索、安全绳。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;</span><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">（六）结构增强用纺织品</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;1.传输用骨架材料。采用高强低缩纤维，开发强力高、变形小的工业输送带、传动带用骨架材料，扩大在化工、食品、矿山、纺织机械等领域的应用。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;2.风力发电叶片用骨架材料。研究开发多经轴单独捆绑技术和缝合线，提高同幅异厚织物紧密度和均匀度，降低幅宽变形率，提升玻璃纤维风力发电叶片的物性指标。采用碳纤维开发2.5兆瓦以上规格的风力发电叶片用骨架材料，提升碳纤维预浸料技术、碳纤维/玻璃纤维混杂编织技术以及相关的真空导入工艺技术水平。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;3.航空、航天及电网传输用骨架材料。运用碳纤维、芳纶等高性能纤维，加强织物设计和织造成型技术开发，提高骨架与基材的结合性能，开发在航空航天、交通运输、海洋石油、智能电网、救生装备等高端市场的应用。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;</span><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;六、政策措施</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;</span><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">（一）发挥产业政策引导功能</strong><br/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;加强产业政策与信贷、土地、环保等政策的协调配合，鼓励发展高技术含量、高附加值产业用纺织品，淘汰落后产能，防止低水平重复建设，增强产业用纺织品行业的可持续发展能力。</span><br style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);"/><span style="line-height: 25px; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp;&nbsp;</span><strong style="line-height: 25px; font-family: 宋体; color: rgb(0, 0, 0);">（二）加大对技术进步的政策支持<br/>&nbsp;&nbsp;&nbsp;</strong><span style="line-height: 21px; font-size: 10.5pt;"><span style="font-size: 12px;">落实国家支持自主创新、技术进步的各项政策措施，利用好各级科技、技术改造、中小企业等现有政策性资金渠道，支持产业用纺织品技术基础研究，重点领域产品技术改造、开发推广示范、检测认证平台及产业技术联盟建设。</span><br/>&nbsp;&nbsp;&nbsp;&nbsp;<strong>（三）加强对企业兼并重组的引导</strong><br/>&nbsp;&nbsp;&nbsp;<span style="font-size: 12px;">&nbsp;落实《国务院关于促进企业兼并重组的意见》，鼓励产业用纺织品企业通过兼并、合并和收购等多种方式进行重组，完善产业配套，做强做大。加强兼并重组的风险监控，完善外资并购安全审查机制，保障产业安全。</span><br/>&nbsp;&nbsp;&nbsp;&nbsp;<strong>（四）建立部门协调推进机制</strong><br/>&nbsp;&nbsp;&nbsp;<span style="font-size: 12px;">&nbsp;建立由工业、发展改革、交通、建筑、卫生、环保、质检等部门组成的产业用纺织品联合推进机制，协调产业用纺织品标准与使用规范的对接，推进产业用纺织品开发、生产、应用及相关政策的对接。积极运用政府采购政策，扶持重点领域产业用纺织品企业的发展。在医疗领域，研究将一次性医用防护纺织品纳入全国医疗服务价格项目规范。</span><br/>&nbsp;&nbsp;&nbsp;&nbsp;<strong>（五）完善产业用纺织品应急储备机制</strong><br/>&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 12px;">对突发性公共事件中急需的特殊产业用纺织品，如救灾帐篷、医用防护口罩和防护服、防洪抗汛土工膜袋、油回收用高吸油材料等，在现有实物储备的基础上，研究建立企业生产能力储备机制，保障紧急需求下的产品供给。</span><br/>&nbsp;&nbsp;&nbsp;&nbsp;<strong>（六）充分发挥行业协会作用</strong><br/>&nbsp;&nbsp;&nbsp;<span style="font-size: 12px;">&nbsp;加强行业协会在技术咨询、标准制定、公共服务平台建设、行业自律、市场推广、人才培训、信息服务等方面的作用，促进产业与上下游相关应用领域的合作交流，加强行业引导和产需对接，促进产业用纺织品在相关应用领域的推广应用。</span></span></span></p><p style="font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255); font-family: 宋体;"><span style="font-family: 微软雅黑;"><strong><span style="line-height: 21px;">下载&nbsp;<a href="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/files/20130720205326043.pdf" style="text-decoration: none; font-size: 12px; color: rgb(51, 51, 51);">产业用纺织品“十二五”发展规划</a></span></strong></span></p><p style="font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255); font-family: 宋体;"><span style="font-family: 微软雅黑;"><strong><a href="http://www.cnita.org.cn/china/newsdetail.aspx?sid=23&amp;aid=267#123" style="text-decoration: none; font-size: 12px; color: rgb(51, 51, 51);"><span style="line-height: 21px;">返回页面顶部</span></a></strong></span></p><p><br/></p>', NULL, N'', 51, NULL, NULL, 0, NULL, 0, 0, CAST(0x0000A2910180E36F AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (35, N'领略“老板眼界”', N'admin', N'本站', N'<p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">作为杭州老板实业集团旗下的上市公司,“老板”厨房电器在消费品领域耳熟能详；不过，业界较少知道老板集团2002年投资设立的杭州诺邦无纺股份有限公司。诺邦无纺拥有多条国际先进水平的水刺非织造布生产线，是老板集团耕耘的另一个产业领域。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">说到缘何从老板电器到诺邦无纺的跨越，诺邦董事总经理张杰向笔者解释说：“其实，在成立诺邦之前，集团早已涉足非织造行业，也是因为这样的尝试让我们感受到这个行业的发展前景，进而成立了诺邦无纺的独立公司。”</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">走产业拓展方向</span></strong></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">从2004年一期工程投产至今，诺邦无纺已经有七条水刺生产线，分别采取交叉铺网、平行铺网，年产能约25000吨。公司产品涉及了工业电子擦拭、高档美容卫材、静电提花去尘、民用清洗擦布、工业合成革基布、医疗护理卫用、汽车隔音等多用途的领域，成为行业中的领军企业。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">或许是老板集团秉承的信心和勇气，或许老板集团原本就离不开消费领域，几年后，诺邦无纺开始尝试拓展产业链，从纯粹的非织造布卷材生产，延伸到下游制成品的制造。张杰说，“以目前来看，我们仍以非织造布生产为主，但已经尝试在终端产品上开发和建立新品牌。虽然这个领域有别于厨房电器，但毕竟满足市场需求，迎合消费者使用的方向总是正确的。”</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">他也讲到，这还需要一个市场适应和成长过程，现阶段，公司卷材与制品基本保持4∶1的比例，湿巾、面膜、家用清洁抹布等非织造布制品已经逐步进入常规百性的日常生活中。湿巾生产和市场发展十分迅速，家用清洁抹布更是一种引导居民提高生活质量和开启生活便利的消费产品，据介绍，家用清洁抹布作为老板厨房电器的赠品给消费者是相当受欢迎的。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">张杰表示，产业链式的发展模式，优势在于可以更好地将诺邦的产品特色以自我优势形态的方式呈现给客商。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">靠创新体系建设</span></strong></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">诺邦十年，遇到过非织造行业的动荡起伏，也经历了世界金融危机、欧债危机的种种不利影响，用张杰的话讲是“真实感受了这个行业一路走来的发展脉搏”。当然，伴随行业的逐年提升，竞争也逐年提升。值得肯定的是，诺邦无纺凭“法”建立多种制度及方案，不仅平稳渡过了金融危机，并且在欧债危机时期得以逆势增长。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">公司自成立以来，一直在不断建立与完善创新体系以及创新制度，营造一个良好的创新环境，在内部形成尊重知识、重视人才的良好科研学习氛围。公司专门设立“创新基金”，配备检测实验室，并为技术人员设立研发实验室，积极鼓励研发人员多提技术创新合理化整改意见，支持其实现探索、发明新技术、工艺领域。公司的信息化建设有条不紊地进行，已投入并建成包含财务、营销、供应、生产、设备、检验、仓库在内的ERP管理系统，为公司整体运作打下了基础，实现业务流程自动化，同时为快速实现设计开发内容转化为实际产品提供了快速通道。公司推行ISO9001∶2000质量管理体系，拥有ISO9001∶2008、ISO14001∶2004双体系认证，并于2011年对质量环境手册进行第四次修订，不断完善质量管理体系建设，在个性化产品里以“稳定、改善”为重点，来满足不同客户对产品差异化需求。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">公司坚持走国际化路线，努力打造“集水刺非织造布及其相关产品的品牌企业”的发展战略。成立国际贸易部，又结合国内贸易国际化的转型，全力开发国际市场，经过多年努力，已从当初10%左右的出口额迅速提升至目前50%左右的出口额，诺邦无纺以特色化、差异化的中高端产品在国际市场上体现了较强的竞争实力，国际市场用户遍及美洲、欧洲、亚洲、澳洲、非洲五个区域的30多个国家，国际贸易数量仍处上升阶段。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong><span style="font-family: 微软雅黑;">奔引领行业目标</span></strong></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">诺邦无纺在老板集团旗下，一定会得益于集团以及上市公司的规范化经验，从而加快诺邦无纺的发展进程。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">正如张杰说：“当然，有一个集团化的上市公司作为引导方向，肯定是有一定的积极作用的，在经营规范化和运营模式化方面，可以让我们借鉴的经验很多，少走弯路的同时，加快发展的速度，同时，结合诺邦自身的特点，融合产业不同上的差异性，来建设更加稳健和进步的发展模式。”</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">例如，诺邦无纺实行员工股份制，这既是上市进程的需要，更是企业人才建设和长远发展规划的需要。一方面，出于人才培养及留用机制的健全考虑，另一方面从企业长远发展走上市的道路考虑，公司于2007年就完成了企业股份制的改造，公司主要技术力量及管理骨干均持有公司股份，通过企业每年人才平台的逐步健全以及公司规模的不断壮大，人才建设已走上良性发展轨道。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">有人才储备，诺邦才能在具有技术含量的差异化路线上走得更快更远。从2005年至今，公司已向国家知识产权局申请专利60多项，其中发明专利20多项，申报多个国家级火炬计划项目。是目前国内水刺行业产品种类最齐全，新产品数量最多的企业。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">经过十年努力，诺邦充分适应市场变化，创造出一个诺邦特色的经营路线。为追求更大目标，公司2013年3月顺利完成了拥有第7条非织造布生产线的建设，并已开始试生产运营。张杰相信：创新的技术，优质的产品，诺邦将引领非织造布行业进入一个全新时代。</span></p><p><br/></p>', NULL, N'', 52, NULL, N'领略“老板眼界”', 0, NULL, 0, 0, CAST(0x0000A29101812451 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (36, N'姚穆：资源匮乏下的纺织产业出路', N'admin', N'本站', N'<p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;"><span style="font-family: 微软雅黑;"><img alt="" src="http://localhost:10000/error!ue_separate_ueerror!" style="border-width: 0px; border-style: none; width: 150px; height: 200px;"/></span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">联合国联合多国专家发布的一份意见称，到2050年，全球纺织纤维加工总量将达到2.53亿吨。其中，服装部分将达到4150万吨，家用纺织品部分占4100万吨。而产业用纺织品，将达到1.705亿吨，占总量的67.4%。也就是说，在接下来的近40年里，纺织业还会大发展。<br/>但是，要推进可持续发展，必须要考虑资源的来源问题。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;"><strong>转型升级的必要性　</strong></span><br/><span style="font-family: 微软雅黑;">首先是资源问题。纺织纤维受到了几大制约。一是全球人口暴增。联合国2001年发布全球人口预测时，宣布2050全球人口将达到76亿，2009年修改为92亿，2011年又修改为94亿，2013年5月修改为96亿。到那时，全球的全部耕地只种粮食也不够地球上所有的人吃，这意味着，除了粮食以外，棉、油、麻、丝、茶、糖、菜、烟、果、药、杂等11个种类的植物不能再种植了。<br/>中国也一样，我们甚至更快进到了制约期。2009年，中国已经从粮食净出口国变成了粮食净进口国。在这个背景下，2009年3月，温家宝在政府工作报告中提出了18亿亩耕地红线的概念，也就是说，再过十多年，棉毛丝麻不仅不能利用现在的种粮食地种植，也不能利用耕地，只能走新的道路。<br/>其次，粘胶纤维用的浆粕，受到木材的极大制约。目前合成纤维已经占到纤维总量的60%，但是制造合成纤维的原料用的是石油等化工资源，而联合国最近6年里，反复发布有关石油天然气等资源问题。现在的结论是，已经勘探到的石油天然气的总量，再加两倍计算，2050年将会全球枯竭。<br/>在资源受到严重制约的情况下，纺织产业纤维的出路是什么？只有两条。<br/>第一条，尽量开发利用可以再生的、可以降解的、可以循环的，对环境友好的生物质资源。天然纤维，想办法利用盐碱地、荒滩地、山坡地等种植；再生纤维和合成纤维，尽量利用农废产品里面的许多生物质资源，经过生物化工技术的加工后，把它们变成纤维资源。<br/>第二条，更为重要的资源，是废旧纺织品的再生利用。<br/>现在全球纺织品的废弃量（仅指纤维量）远远超过了3000万吨，这部分能否得到合理利用，是当前必须关注的重要问题。世界发达国家在这方面已经有了很多发展，尤其是经济发达的国家。<br/>美国于2010年正式通过法律，只要是利用废旧纺织品再生循环利用加工出来的纺织品，特别是服装，可以直接挂吊牌标记这是废旧纤维循环利用的产品。这些产品比用原生纤维制作的产品性能有时要低10%，但是美国教育全国人民为了保护地球爱护环境，应该多花钱买这些服装。只要挂这个吊牌的，大多比同类新纤维的产品贵10%。<br/>2011年，法国国会也正式通过了决议，允许再生纺织品更贵，倡导人民去支持并充分利用再生资源。<br/>我们在这方面研究多年，但是进展缓慢，非常艰难，恐怕还要经过一段宣传教育的过程，消费者才能接受这种观念。</span><br/><br/><span style="font-family: 微软雅黑;"><strong>废旧纺织品利用的出路</strong></span><br/><span style="font-family: 微软雅黑;">废旧纺织品再生利用的出路是非常广泛的。<br/>产业领域中，建筑上的保温材料，相当一部分也可以利用废旧纺织品来替代，只需加上相应的阻燃处理之后就可以了。另外，高速公路、高铁经过居民区时两边的隔音层，利用废旧纺织品做成的原料制造，技术已比较成熟。农用也可以用废旧纺织品原料，用得最多的是大棚的保温层，保温层材料只需要保温，不用顾及颜色、花样，这方面已经受到广泛的关注并开始加以应用。有些果实的防护材料，同样可以用废弃纺织材料来制造。<br/>现在一些再生利用工厂用到的原料是回收的聚酯瓶，熔融之后可以做成新原料。但是这在中国还需要一个过程，因为江苏、浙江利用聚酯瓶子做的涤纶丝，绝大多数用的瓶都是美国进口的，美国的瓶体瓶盖都是分开，标签也都是揭掉的，并且每一批来的都是一个型号、一种颜色、一种品种，使用起来较为方便，现在我国回收废旧瓶体系还有一个完善的过程。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;"><strong>共同配合搞活产业链</strong></span><br/><span style="font-family: 微软雅黑;">首先我们需要关注的是，对于一般纺织品，尤其是废旧衣服等，回收后能否保证没有病毒和病菌。按照规定，回收衣服必须严格消毒，不能变成传染源，影响社会稳定。消毒成本很高，加上相关检测，成本更高，这部分也是我们要关注的事实。<br/>纺织品纤维原料种类繁多，混纺产品很常见，要精确的分析原料成分比较困难，费时费力，混纺的种类越多，分解越困难，这些都需要进一步研究解决。<br/>科技研发的同时，我们更加注重的是，必须围绕着最终产品的开发应用和市场。谁来买谁来用，用在哪里等都必须弄清楚，这样才能成为一条完整的产业链。前道工序要为后道工序服务。比如消毒，不能等到织完布之后再去消毒；后道工序也要为前道工序补台。有的问题前道工序解决不了，后道工序就要负责完成。这样这个产业链才能搞活。</span></p><p><br/></p>', NULL, N'', 53, NULL, N'姚穆：资源匮乏下的纺织产业出路', 0, NULL, 0, 0, CAST(0x0000A291018153F7 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (37, N'走近军用纺织品', N'admin', N'本站', N'<p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">军队的发展离不开现代化的装备，虽然纺织工业提供不了坦克、大炮、导弹、火箭等现代武器装备，但毫无疑问，军事力量也有纺织行业的一份贡献。军用常服、礼服、普通工作服、生活用纺织品等军队里使用的一般纺织品更强调功能性，有更高的附加值，也是各国纺织科研人员的重点攻关研究对象。而包括防弹衣、防化服、导弹推进剂防护服、核生化沾染防护服、防酸防碱工作服、阻燃作战服、迷彩伪装服、电磁辐射防护服等军用特种纺织品是军人抵御各种武器损伤和各种恶劣自然环境的最后一道防线。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　军用纺织品究竟是什么？它的发展脉络是什么？纺织企业又应该如何参与到军队建设中来？这一期，让我们走进军营，走近军用纺织品。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　军用纺织品是什么？</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　军用纺织品可不仅仅是当兵的所穿的军装和所盖的被子。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　“目前军用纺织品种类很多，品种可达上千种，但是要分类的话，大概可以分为四种。”中国人民解放军总后勤部军需装备研究所所长张建春介绍说，军用纺织品包括常服、礼服、工作服和防护类服装。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　常服主要是平时工作时穿着，外穿常服与常服上配备的各种服饰；礼服主要是重大礼仪场合和外交场合穿着，与常服最大的区别在于加戴了授带。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　而工作服主要是各种特殊工作场合穿着，这类服装所用材料通常都有功能性，如油库的防静电服，舰船上的防火服。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　防护类服装，主要是针对战场士兵可能遇到的伤害研制的服装，以防弹、救生为主要功能，如防弹衣、救生衣、阻燃作战服等。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　军装发展五阶段</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　目前，军用纺织品已经发展到第五个阶段精良化阶段。第一阶段是统一着装阶段，第二阶段是统一单一着装阶段，第三阶段是统一多制式着装阶段，第四阶段是较精良阶段。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　当然，上述的种类只是当下的分类。张建春对《纺织服装周刊》记者介绍，我国的军用纺织品已经发展了好几代，目前已发展到第五个阶段。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　他说，解放战争前，我国的纺织工业集中在国民党统治区，人民军队完全靠缴获衣物和自己动手解决着装问题，衣服谈不上规整，款式差别很大，属于不正规阶段。建国后，人民军队有了真正统一的军装。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　上世纪50年代，我国兴建了不少纺织工业基地，但仍然不能满足军队日益增长的军服需求。而这个时期，则属于统一单一着装阶段。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　1955年军衔制的实行，首次打破了中国人民解放军只有单一制式军服的历史，标志着军服正规化的开始，但当时部分礼服的面料还要从苏联进口。这个阶段是统一多制式着装阶段。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　改革开放以来，我国纺织工业领域有了根本性的进步和发展，成为世界瞩目的纺织品生产大国，在产业链的系统性、完整性、先进性等方面与国际先进水平的差距明显缩小。这时的军用纺织品则为较精良化阶段。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　最近几年，随着我国纺织大国地位逐渐稳固，新的军用纺织品研究和开发处于高峰段，新的军用纺织品装备跟国外差距进一步缩小，同时还根据我国实情逐步开发一些新的，在世界上处于领先地位的纺织服装产品。精良化阶段现在则成为趋势。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　纺织国防相互促进</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　据不完全统计，近年来，我国纺织科技人员研制成功了1300多种复合材料、40多种特种纤维，满足了国防建设对纺织品的需求。军事工业中的高新技术向民用领域的扩散、转移和产业化，对带动纺织业的结构优化和产品升级起到了十分重要的作用。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　军队、国防建设与纺织工业的发展是相互促进、相辅相成的，良好的纺织工业为国防建设奠定良好的基础，同时新的军工纺织品的开发对纺织工业的提升换代起到促进作用。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　回顾历史，因为军事的需要，间接也促进了中国纺织行业的机器化大生产。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　据《中国纺织发展史》介绍，鸦片战争以后，有些当权人物认为中国失败的原因在于武器不良。因此从19世纪60年代起，逐步兴办了官营军事工业。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　1870年代以后，又扩展到了军用纺织品生产。如左宗棠办的兰州织呢总局，于1880年投产，这是中国除缫丝以外第一家采用全套动力机器的纺织工厂。但机器购自外国，聘请外国技师管理生产，产品直接供应军需。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　“而如今，纺织品在部队装备方面，纺织纤维制品是仅次于钢铁材料的第二大装备品，对保存和提高部队战斗力具有重要和特殊的作用。”张建春说。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　“我国是世界第一大纺织大国，目前世界上50%以上的纺织品产自中国。在军队里，纺织品是除武器装备外的第二大军队装备品，单兵、武器、舰艇等多方面都涉及纺织品。所以强大的纺织工业是我国建设强大国防的重要基础，纺织工业为国防建设做了巨大的贡献。”</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　建国以来，纺织工业为国防建设提供的各种纤维、面料、绳、带、线、篷盖材料、降落伞绸、包装及填充材料等均以亿米或万吨计算。据不完全统计，近年来，我国纺织科技人员研制成功了1300多项复合材料、40多种特种纤维，满足了国防建设对纺织品的需求。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　而军队防弹装备的研发不仅促进了纺织、冶金、化学、机械工业的发展，防弹装备转为民用后，为有合法需求的公安、检察院、法院、保安体系提供了服务，又为以上行业提供了新的市场和产品开发领域。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　防护涂层、涤棉阻燃、抗油拒水、防静电、防水透湿薄膜、化纤仿毛等技术都源自军队的研究单位，经过军转民后带动了地方纺织企业参与，采用这些技术生产的产品广泛应用于石油、冶金、勘探、电子等行业领域。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　军事工业中的高新技术向民用领域的扩散、转移和产业化，对带动纺织业的结构优化和产品升级起到了十分重要的作用。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　军用纺织品是如何炼成的？</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　“常服、礼服的研发已经非常成熟。”据中国人民解放军总后勤部军需装备研究所专家介绍，目前工作服也完成了部分攻关，部队也有装备。但是近几年来，原装备的部分品种已不能满足实际需要，或存在技术水平低、档次不高的问题。目前正在立项研究中的项目有灭火服、防蚊虫服、防静电服等。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　仍需大力攻关</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　在防护服方面，据介绍，防护类服装在过去的20年中，主要是作为战储物资进行了部分储备，部队实际发放的较少。现在随着军费的提高，这些装备将陆续发放给部队试用。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　这类服装存在的最大问题是，所用材料均为高性能纤维，目前尚未实现国产化，需从外国进口；或虽已国产化，但性能指标不稳定，不能实现大批量应用。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　据了解，过去军用防护服的主要功能是为士兵抵御雨、雪、风、严寒、酷暑等环境影响，使战士能行动自如。随着化学、生物、热核等杀伤性更强的武器、小型侦视装备和传感系统的发展，对军用防护服的要求显著提高。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　在现代局部战争条件下，防护服有着极为重要的作用。军用防护服的作用就是最大限度地帮助士兵有效地抵御、防范和抗击恶劣的气候条件及常规、生物和化学战争。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　“因为防护服的阻燃抗熔滴性要求高，目前大部分国家通过芳纶1313和棉混纺织物作为作战服面料主要原料，但存在价格高、难染色等问题，目前我所研究的聚酯阻燃抗熔滴的织物有一定的进展。”张建春告诉记者。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　军需市场巨大</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　目前，军工一些领域已经有大量民企的影子，特别是军用纺织品领域，民企的影子显得更多一些。这得益于国家的政策。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　2006年，国务院颁布的《关于非公有资本进入军工领域的若干规定》、《国务院鼓励非公经济发展的若干意见》等相关规定，非公有资本能够获得更多机会进入国防建设领域，参与军工科研生产项目的竞争。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　而《中国人民解放军装备采购条例》也明确允许民营企业好的产品进入军队建设，鼓励有条件的民营企业逐步进入军品市场，这意味着军用装备生产只能由军工厂垄断生产历史的结束，也意味着军品采购逐步走向市场化和公开化。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　同时，纺织品作为军需品的一个重要门类，历来是军队建设不可或缺的重要资源。军品采购的市场化和公开化必将促进更多的纺织企业参与到军工产品研发、生产和成果转换中来，促使更多、更好的化纤及纺织产品进入军队采购之列。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　除了政策上的支持外，军需纺织品这一巨大的市场对于企业来讲也拥有巨大的吸引力。公开资料显示，早在2010年，中国现役军人为228.5万人，预备役51万人，准备军人员66万，是世界人数最多的军队。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　“我军人数众多，军用纺织品的需求也十分巨大，每一年的产值都达到百亿元以上。” 总后勤部军需装备研究所的一位工程师告诉记者。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　军企民企齐开发</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　这位工程师介绍说，军用纺织品不同于一般的纺织品，无论从材料选用还是款式设计上都与民用纺织品存在巨大的区别。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　军用纺织品的适应性明显优于民用纺织品。一种军用纺织材料可能需要适应从南到北、从东到西全国各地驻军的需要，因此在研制时要综合考虑复杂多变的地理环境和使用条件对纺织品的要求，有时常常需要牺牲服用舒适性来满足大区域应用的需要。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　这个现状也得到参与军用纺织品研发和生产企业的认可。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　际华三五四三针织服饰有限公司是专门从事针织服饰产品生产，有几十年为军队提供服务的历史。该公司总经理助理李宁军告诉记者，军队对纺织品的要求相对于民品更具体化。“主要是因为军队是个特殊群体，其所穿着的服装具有不同功用，因此针对其功用不同，整体的设计研发亦会不同。”</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　据悉，军用纺织品的研发模式是：由军队研究所承担军用研发任务，在具体的材料研制、结构设计、系列配套、性能检测等方面，军队研究所根据项目研究需要，寻找国内相关的大学、研究所或企业（国有或民企皆可）合作。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　研发过程中可能根据需要支付相应费用，研发出的技术归军队所有，但装备的生产由企业负责完成。研发过程中需根据保密需要，合作双方签订保密协议或在合作协议中增加保密条款。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　除了与企业、科研所合作外，总后勤部军需装备研究所目前已经和中国纺织工业联合会签署了战略合作框架协议。双方希望建立协同一致的机制，潜心研究高科技的产品，广泛运用新材料、新技术、新工艺进行军用产品的科研和生产，用最新的纺织产品武装军队。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　李宁军说，与军方合作后，收益稳定，资金回收更快捷、更规范。不过他也坦言，因为每年军需部门要对军品进行考价，产品价格是按照军队要求执行，所以毛利率不一定高。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　企业需要硬实力</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　当然，与军方合作，也需要企业的硬实力。李宁军告诉记者，企业成功竞标，资质、投价都很重要。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　产业链上端的企业们也耐不住寂寞，瞄准了军用纺织品市场。比如位于天津的泰达洁净材料有限公司。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　它和中国人民解放军总后勤军需装备研究所、天津工业大学共同研制的复合熔喷非织造布材料其过滤效率达到99.99%。这种材料的保暖性极佳，且重量较轻，现在已经成为军队指定的保暖填充材料。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　之所以能取得如此先进的技术，公司总经理邢克琪将其归因于合作。“天津工业大学理论性强，擅长基础研究和测试，泰达是生产企业，了解市场，实践能力强，而总后军备研究所属于应用单位，这几年的不断创新正是得力于产学研用的结合。”</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　值得注意的是，虽然这家企业与军方有合作，但是却不参与竞标。“因为公司生产的材料主要是供给给下游的服装商，而军方直接与服装企业接洽，要求产品性能，而服装企业再将意见反馈给我们。”</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　另外，这些参与军用纺织品建设的企业们也考虑着如何将提供给军方的产品转到民用市场。“公司一直在朝着这个方向努力，而且纵观各行业的军用技术也是在顺着转化为民用的趋势发展的。”李宁军告诉记者。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　符合环保可持续发展、对人体无害的生态纺织品已成为服用纺织品的一大方向，而军用纺织品自然更需践行生态、环保。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　向绿色环保进发</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　环保性早就成为了共识。据了解，军用纺织品的绿色环保要求一方面体现在生产过程的清洁化(例如采用天然染料和超临界二氧化碳，染色技术、无甲醛交联技术、物理整理技术等)。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　另一方面体现在对军人健康的重视，例如采用对人体有益(至少无害)的纤维材料如有抗菌作用的甲壳素纤维、竹纤维；天然着色的彩色棉纤维；具有良好力学性能的Lyocell纤维等。当然，纤维资源的多元化利用也成为趋势。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　“通常情况下军方对原材料的选择更多的注重于穿着舒适性要求，如棉纤维、莫代尔纤维。”李宁军告诉记者。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　总后勤部军需物资油料部军事代表局高级工程师俞玮表示，与战场防护服装相比，军队的常服、礼服及绒衣、大衣等服装的性能要求，与民用服装有更多的相似之处。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　俞玮认为，随着社会的进步和人民生活水平的提高，军人的服装也应该有更好的美观和舒适性能，能有利于官兵的身心健康，并在穿着使用、洗涤收藏方面具有更好的便利性。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　更加突出功能性</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　军用纺织品里，对功能性要求最为强烈的是防护类服装。这类服装主要是针对战场士兵可能遇到的伤害进行研制的服装，以防弹、救生为主要功能，如防弹衣、救生衣、阻燃作战服等。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　它们比军用常服、礼服、普通工作服、生活用纺织品等一般纺织品更强调功能性，有更高的附加值，也是各国纺织科研人员的重点攻关对象。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　据解放军总后勤部军需装备研究所高级工程师施媚梧介绍，从增强防护功能要求和发挥单兵战斗力的目的来看，军用特种纺织品应该致力伪装功能。在精确打击武器的技术水平日益发展的今天，“发现即被摧毁”。由于非常规纤维材料及添加特殊粒子的功能性纤维的成纱能力较差，难以正常纺纱织布，且伪装装备不需要很强的力学性能，故对于非织造布而言是一种经济高效的加工方式。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　信息化功能也是趋势。未来战场的最显著特点是高技术信息化，纺织品本身尚难实现信息化功能，但可以作为信息化的载体和平台、例如各国竟相研究的生命体征测试背心，有可能采用非织造布作为微型传感器的承载体使用。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　还有就是远程医疗功能。在信息化和生命体征实时测试的基础上，利用微胶囊技术将必须的药物存放在纤维中，这种纤维适合于非织造布的加工方式进行加工，在需要是对人体提供药物。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　舒适卫生功能也必不可少。基于微胶囊技术，可将相变控温材料、抗菌防臭材料加入到纤维中，以非织造布的形式制成特种军品纺织品，对军人起到舒适、卫生的作用。　</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　链 接</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　■美军的凯夫拉Kevlar防弹内裤。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　这种凯夫拉Kevlar内裤一套两件，内裤“protective under-garment”简称PUG，可以为士兵提供基本的裤裆防护；外裤“protective outer-garment”简称POG，防护能力比内层要更强。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　■军事装备采用的耐磨Cordura面料。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　杜邦Cordura (考杜拉) 面料，具有轻、速干、柔软、耐久性强的功能性面料，长时间使用也不易变色。而且Cordura面料的耐用性更体现在它的抗撕裂强度和抗磨损性均异常出色。事实上，因为Cordura面料的耐用性与强度，全球领先的军队都在使用该产品制造性能卓著的军事装备。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　■解放军多功能雪地伪装服。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　雪地伪装服以白色布料为主，辅以枯叶、沙漠等米黄色，既吻合雪地、冰面的颜色，又能适应草丛、沙漠等环境，官兵们一卧倒便隐入了雪中。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">　　几十年来，东北部队雪地训练一直靠披白床单伪装，隐蔽性差，保暖效果不好。为此，总后军需装备研究所专门研制了这种新型雪地伪装服，不仅轻便透气，方便官兵闪转腾挪、匍匐跳跃，而且挡风阻燃，防热辐射，伪装效果特别好，用手轻轻一拍，沾在衣服上的雪水和灰尘一扫而光。</span></p><p><br/></p>', NULL, N'', 54, NULL, N'走近军用纺织品', 0, NULL, 0, 0, CAST(0x0000A291018657A8 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (38, N'2013年中国国际非织造布会议隆重召开', N'admin', N'本站', N'<p><span style="FONT-FAMILY: 微软雅黑">10月25日，“2013年中国国际非织造布会议”在绍兴县柯岩鉴湖大酒店隆重召开。会议由中国产业用纺织品行业 
协会、美国非织造布协会（INDA）、欧洲非织造布协会（EDANA）、浙江省绍兴县人民政府共同主办，旨在加强国内外非织造布行业的交流与合作，促进我 
国非织造布工业的产业转型升级，帮助企业了解国外同行业的先进技术和应用，学习国外行业在经营理念、市场推广、基础研究、产业链配套等方面的先进经验。中 
国纺织工业联合会王天凯会长、高勇副会长、陈伟康副书记、工信部消费品司王伟副司长，INDA、EDANA、台湾不织布同业公会和香港无纺布协会会长，绍 
兴县相关领导以及百余名企业代表参会。</span></p><p style="text-align:justify;">&nbsp;</p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑"><img style="WIDTH: 400px; HEIGHT: 266px" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031154653009.jpg"/></span></p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑">会议现场</span></p><p style="text-align:justify;">&nbsp;</p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑"><strong>集企业智慧、促企业共赢</strong></span></p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">本次会议分为非织造布技术发展论坛、2012/2013中国非织造布行业10强企业及优秀供应商颁奖以及行业专家针对非织造布市场与发展的主题演讲三个环节。</span></p><p style="text-align:justify;">&nbsp;</p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑"><img style="WIDTH: 400px; HEIGHT: 274px" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031154734634.jpg"/></span></p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑">绍兴县人民政府周树森副县长致辞</span></p><p style="text-align:center;">&nbsp;</p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑"><img style="WIDTH: 400px; HEIGHT: 300px" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031154812306.jpg"/></span></p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑">国家工业信息化部纺织品消费司副司长王伟</span></p><p style="text-align:center;">&nbsp;</p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑"><img style="WIDTH: 400px; HEIGHT: 284px" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031154842572.jpg"/></span></p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑">中纺联副会长高勇</span></p><p style="text-align:justify;">&nbsp;</p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">论坛中，来自国内外知名非织造布供应商及企业高层针对当前先进的技术创新、应用市场以及前景等问题进行交流。 
上海申达股份有限公司汽车内饰事业部技术总监龚杜弟就申达公司目前非织造布在汽车零部件中的应用及功能进行了详细的阐述。例如，汽车内部的空调过滤器、前 
围隔音部件、备胎槽等部件都应用到非织造物。</span></p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">来自东华大学的王洪副教授从土工布领域为现场嘉宾分享了土工合成材料技术现状及应用前景。</span></p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">广州市纤维产品检测院作为中国产业用纺织品行业测试中心广东站，承担着产业用纺织品中非织造布、医用纺织品、 
卫生用纺织品、过滤用纺织品以及交通工具用纺织品这五大领域的检测任务。王向钦博士介绍了非织造布及制品的检测技术，目前检测院在研的产业用项目包括非织 
造材料可生物降解性能测试方法研究、玄武岩基增强芳纶浆粕纤维非织造材料耐热性评价等。</span></p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">海斯摩尔生物科技有限公司董事长胡广敏针对公司研制的专用纤维海斯摩尔纯壳聚糖纤维做了介绍。例如，壳聚糖纤维具有极好的抗菌性，用于医用领用可有效避免传统纱布包扎伤口带来的二次创伤。</span></p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">烟台万华超纤股份有限公司副总经理李革在论坛中介绍了当前国内外合成革的整体情况，并介绍了万华定岛超细纤维合成革的技术开发，自2010年以来，这项技术开发的革系列包括服用绒衣、海陆空解放军及武警手套系列等，产量达到150万平方米。</span></p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">厦门三维丝环保股份有限公司技术中心市场部经理单磊为在座嘉宾分享了袋式除尘滤料发展与技术创新。</span></p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">作为一家全球化的领先设备供应商，安德里兹公司Alexandre 
Butte为现场嘉宾介绍了非织造布生产设备系统的创新，包括为水刺、针刺完整生产线的技术设备提供可持续的技术解决方案。</span></p><p style="text-align:justify;">&nbsp;</p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑"><img style="WIDTH: 400px; HEIGHT: 278px" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031154910869.jpg"/></span></p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑">中产协李陵申会长做主题演讲</span></p><p style="text-align:justify;">&nbsp;</p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑"><strong>高屋建瓴、提振行业发展信心</strong></span></p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">绍兴县人民政府周树森副县长在致辞中介绍了中国非织造布名镇夏履镇10年来的发展情况，同时表示政府会大力扶持，以传统产业转型升级为目标，帮助企业进行结构性调整。</span></p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">国家工业信息化部纺织品消费司副司长王伟从宏观角度谈到，近年来中国非织造布在调整结构、纺织品转型升级方向 
上呈现了较快的增长势头。但在质量、品种、工艺以及市场应用领域等方面与国际先进水平还有差距。出口产品单价仅有进口的60%，缺少整合所有产业链的龙头 
企业，同质化问题以及价格竞争依然比较激烈。王副司长表示工信部行业主管部门将按照纺织工业转型升级的总体要求，重点开展三点工作：一是支持、拓展终端市 
场为核心的技术开发和技术改造，重点扩大非织造布在医疗、环保、过滤等等领域的应用；二是加强基础研究和质量评价等公共服务能力的建设；三是支持全寿命、 
绿色、环保产品的开发生产，支持节能减排和回收利用技术的开发和推广。</span></p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">中国纺织工业联合会副会长高勇在致辞中认为，国内非织造布业的发展，要坚持工业调整，紧跟发达国家的先进步 
伐。高会长分析了目前我国非织造布行业的优劣势，他认为国内企业的优势是供应链短，低成本，人才培养体系完善。而不足之处则是目前我国行业标准相对落后， 
产品质量良莠不齐，设备偏重依赖进口。</span></p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑"><strong>2012/13年度中国非织造布行业10强企业及优秀供应商评选揭晓</strong></span></p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">由中国产业用纺织品行业协会举办的“2012/13年度中国非织造布行业10强企业及优秀供应商评选”活动是 
继2011年评选的10强基础上，扩展到本届评选中国非织造布行业最具成长性企业和中国非织造布行业优秀供应商。本届评选更为完善，综合考核规模和效益、 
装备和研发创新、市场和品牌、节能减排、社会责任等5个维度，最终评选出行业12家10强企业、10家最具成长型企业和12家优秀供应商。</span></p><p style="text-align:justify;">&nbsp;</p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑"><img style="BORDER-RIGHT-WIDTH: 0px; WIDTH: 400px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; HEIGHT: 266px; BORDER-LEFT-WIDTH: 0px" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031155214869.jpg"/></span></p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑">中纺联会长王天凯（左七）为2012/13年度中国非织造布行业10强企业颁奖</span></p><p style="text-align:justify;">&nbsp;</p><p style="text-align:justify;">&nbsp;</p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑"><img style="BORDER-RIGHT-WIDTH: 0px; WIDTH: 400px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; HEIGHT: 266px; BORDER-LEFT-WIDTH: 0px" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031155229447.jpg"/></span></p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑">工信部纺织品消费司副司长王伟（左五）、中纺联副会长高勇（左六）为行业最具成长型企业颁奖</span></p><p style="text-align:center;">&nbsp;</p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑"><img style="BORDER-RIGHT-WIDTH: 0px; WIDTH: 400px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; HEIGHT: 264px; BORDER-LEFT-WIDTH: 0px" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031155241228.jpg"/></span></p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑">中纺联党委副书记、常务副秘书长陈伟康（左七）、中产协会长李陵申为优秀供应商颁奖</span></p><p style="text-align:center;">&nbsp;</p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">评选结果揭晓后，中国纺织经济信息网记者采访了两家获得10强企业的企业高层，询问企业如何脱颖而出。晋江市 
兴泰无纺制品有限公司董事长王火烟自豪的谈到目前公司水刺、纺粘以及复合非织造布生产线共14条，水刺法非织造布9285.3吨；纺粘非织造布 
40132.5吨。同时公司拥有发明专利4项，实用新型专利25项，还获得了多个省部级各类的奖项。来自山东泰鹏集团的范铭总经理、副董事长在记者问及企 
业强在哪儿时，范总毫不犹豫的说是技术创新。公司多元化的产品结构和高精度的技改能力增强了企业的核心竞争力。</span></p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑"><strong>政府推动、产学研结合</strong></span></p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">此次会议的另一亮点是东华大学夏履教育基地签约仪式，夏履镇与东华大学共同签署了夏履镇人民政府与东华大学合作办学协议签字仪式。</span></p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑"><strong>专题讲座、技术创新驱动行业进步</strong></span></p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">中产协李陵申会长就“快速发展的中国非织造布工业”话题做了报告，介绍了近年来我国产业用纺织品及非织造行业 
的经济运行情况。他谈到“2007年至2012年中国非织造布产量呈逐年递增趋势，2012年我国进口非织造布13.6万吨，出口额8.39亿美元。 
2013年上半年行业规模以上非织造布销售收入、利润分别增长了21.62%和23.76%，利润率5.4%；非织造布出口26.6万吨，价值9.3亿美 
元，分别增长12.5%、17.73%。行业投资同比下降5.05%。非织造布生产依然保持了12.65%的增速。技术创新驱动行业进步，李会长认为原材 
料的多样化和差别化助推应用领域拓展，装备提升产品档次，后整理技术提高产品性能。个性化的解决方案、多种符合技术获得性能优势，高效和轻量化完美组合， 
性价比与可替代性等非织造布的优势都将进一步推动产业用纺织品行业的发展，同时我国非织造布工业也面临着行业集中度较低、产业主要集中在中低端等挑战。</span></p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">美国非织造布协会主席David Rousse 
为与会嘉宾分享了世界范围内非织造布工业统计数据及其发展趋势。全球范围内，非织造布产量主要集中欧洲、北美和中国，他们分别占有26%、25%和 
22%。David说到未来五年非织造布年度增长非常乐观，预计为7.6%，高于前5年的6.4%水平。由于美国的天然气和劳动力成本降低，预计美国的制 
造业将重新抬头。同时中国将涌现大批的非织造龙头企业。</span></p><p style="text-align:justify;">&nbsp;</p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑"><img style="WIDTH: 400px; HEIGHT: 287px" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031154944775.jpg"/></span></p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑">美国非织造布协会主席David Rousse 
演讲</span></p><p style="text-align:center;">&nbsp;</p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">对于2020年非织造布预测以及EDANA的产品工作策略，欧洲非织造布协会总经理 Pierre 
Wiertz做了详细的阐述。目前欧洲非织造布产量约为1800万吨，而50%应用于卫生、医疗和擦拭布领域。展望2020年，Pierre谈到全球一体 
化的核心趋势，面临着可持续发展的挑战，而唯一的解决方法就是技术创新。未来的非织造布市场很有可能出现两极化，即世界中产阶级以及高收入人群国家。最 
后，他认为非织造布市场将会面对越来越多的来自公众和环境的压力。通过持续的监督、检验，避免可能产生的不和谐因素，从而获得高质量产品以及良好的商业氛 
围。</span></p><p style="text-align:justify;">&nbsp;</p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑"><img style="WIDTH: 400px; HEIGHT: 289px" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031155007556.jpg"/></span></p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑">欧洲非织造布协会总经理 Pierre 
Wiertz演讲</span></p><p style="text-align:justify;">&nbsp;</p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">台湾不织布同业公会理事长邱正中介绍了台湾不织布产业发展现况并探讨了台湾不织布业的未来发展趋势，从演讲中，邱理事长介绍了台湾不织布龙头企业，并期待两岸企业更密切的合作。</span></p><p style="text-align:justify;">&nbsp;</p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑"><img style="WIDTH: 400px; HEIGHT: 299px" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031155025806.jpg"/></span></p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑">台湾不织布同业公会理事长邱正中演讲</span></p><p style="text-align:justify;">&nbsp;</p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">香港非织造布协会会长杨自然介绍了中国香港地区非织造布产业发展情况，杨会长深切的感觉到目前香港中小企业的生存困难现状，香港政府给予了很大的支持，他希望中纺联能更多的扶持中小型企业，呼吁更多关心中小型企业的可持续发展。</span></p><p style="text-align:justify;">&nbsp;</p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑"><img style="WIDTH: 400px; HEIGHT: 293px" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131031155046869.jpg"/></span></p><p style="text-align:center;"><span style="FONT-FAMILY: 微软雅黑">香港非织造布协会会长杨自然演讲</span></p><p style="text-align:justify;">&nbsp;</p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">随着人们环保意识的日益增强，大众对于生活环境的要求愈发苛刻，因此派生出各类节能环保产品。芳纶纸即产业用纺织品中的一类环境友好型非织造布。烟台泰和新材料股份有限公司技术中心副主任黄钧铭介绍了芳纶纸的耐高温绝缘性、绿色环保、可做轻质高强蜂窝基材的产品特性。</span></p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">在医药用纺织品市场占有领先地位的佛山必德福公司董事长邓伟雄分享了公司市场发展的经验。邓董信心满满的介绍公司发展的未来目标，致力于5年后达到与美国同等水平。</span></p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">美国非织造布协会执行董事、美亚无纺布有限公司董事长黄祖基在会上带来了公司开发的PLA可降解环保新材料成品，通过实物展示与课件讲座详细介绍了公司持续研发的PLA天然原料的少排放、低能耗、污染少、可循环利用以及可降解性，符合目前产业发展的环保要求。</span></p><p style="text-align:justify;"><span style="FONT-FAMILY: 微软雅黑">此次会议就国际非织造行业的技术创新、产品性能及应用、检测技术等方面的发展现状和趋势进行了交流。美国和欧 
洲非织造布协会专家分享和介绍了国外的先进经验，中国企业得到了很好的学习交流机会，国内外同行进行广泛交流，探讨非织造布发展的新思路和新技术，分享各 
地区产业发展的成功经验，共同推动非织造布行业的发展。</span></p><p><br/></p>', NULL, N'', 60, NULL, N'2013年中国国际非织造布会议隆重召开', 0, NULL, 0, 0, CAST(0x0000A29201124B90 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (39, N'中国非织造布行业10强揭晓 ', N'admin', N'本站', N'<p><span style="FONT-FAMILY: 微软雅黑">10月25日，中产协在浙江绍兴隆重发布2012/2013年度中国非织造布行业的10强企业、最具成长性企业以及优秀供应商名单。中纺联王天凯会长、高勇副会长、陈伟康副书记，工信部消费品司王伟副司长等领导为获奖企业颁奖。本次评选自5月启动，共有62家企业报名，经过专家两轮严格评审最终选出2012/2013年度非织造布行业的“中国优势力量”。其中，浙江金三发等企业获得10强企业称号，宏祥新材料等企业获得最具成长性企业称号，烟台泰和、青岛纺机等企业获得优秀供应商称号。他们中既有国有企业，又有民营企业和外资企业。中国的产业沃土给了企业优良的发展资源，企业进步推动了产业发展的车轮。此次评选如同中国非织造布行业的奥斯卡奖，注定在业内激发起产业可持续发展的活力，并向世界宣言发展壮大中的中国产业与中国市场！</span></p><p>&nbsp;</p><p><strong><span style="FONT-FAMILY: 微软雅黑">2012/2013年度中国非织造布行业10强企业：</span></strong></p><p><span style="FONT-FAMILY: 微软雅黑">浙江金三发集团有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">山东泰鹏无纺有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">广东俊富实业有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">大连瑞光非织造布集团有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">普杰无纺布(中国)有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">福建鑫华股份有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">晋江市兴泰无纺制品有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">浙江和中非织造股份有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">佛山市南海必德福无纺布有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">杭州诺邦无纺股份有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">上海博格工业用布有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">绍兴县庄洁无纺材料有限公司</span></p><p><img style="WIDTH: 400px; HEIGHT: 263px" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131026234943353.jpg"/></p><p><strong><span style="FONT-FAMILY: 微软雅黑">2012/2013年度中国非织造布行业最具成长性企业是：</span></strong></p><p><span style="FONT-FAMILY: 微软雅黑">宏祥新材料股份有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">德州东方环保科技股份有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">徐州工业用呢厂</span></p><p><span style="FONT-FAMILY: 微软雅黑">南京际华三五二一环保科技有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">福建南纺股份有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">厦门三维丝环保股份有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">泉州市东翔化工轻纺有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">江苏东方滤袋有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">恒天嘉华非织造有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">杭州萧山航民非织造布有限公司</span></p><p><img style="WIDTH: 400px; HEIGHT: 264px" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131026235003915.jpg"/></p><p><strong><span style="FONT-FAMILY: 微软雅黑">2012/2013年度中国非织造布行业优秀供应商是：</span></strong></p><p><span style="FONT-FAMILY: 微软雅黑">烟台泰和新材料股份有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">永安市宝华林实业发展有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">苏州市相城区江南化纤集团有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">温州朝隆纺织机械有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">青岛纺织机械股份有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">江苏迎阳无纺机械有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">大连华阳化纤科技有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">易特斯（烟台）精密纺织器械有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">常州市武进广宇花辊机械有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">台州宇星制针有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">浙江传化股份有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑">南京炫胜塑料科技股份有限公司</span></p><p><span style="FONT-FAMILY: 微软雅黑"><img style="WIDTH: 400px; HEIGHT: 266px" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-10/images/20131026235021322.jpg"/></span></p><p style="text-align:left;"><strong>2012/2013</strong><strong>年度中国非织造布行业10</strong><strong>强企业点评：</strong></p><p style="text-align:left;">&nbsp;</p><p style="text-align:left;"><span style="FONT-FAMILY: 微软雅黑"><strong>浙江金三发集团有限公司</strong></span></p><p style="text-align:left;"><span style="FONT-FAMILY: 微软雅黑">金三发集团从自身技术特色出发，应用差别化、功能型、绿色环保特性，开发高端服装粘合衬和医疗卫生用非织造布系列产品，延伸产业链，拉宽产品品种，踏出了一条成功道路。</span></p><p style="text-align:left;"><strong style="FONT-FAMILY: 微软雅黑">山东泰鹏无纺有限公司</strong></p><p style="text-align:left;"><span style="FONT-FAMILY: 微软雅黑">山东泰鹏多元化的产品结构和高精度的技改能力，增强了企业的核心竞争力，使民族品牌在国际市场赢得主动权。</span></p><p style="text-align:left;"><strong style="FONT-FAMILY: 微软雅黑">广东俊富实业有限公司</strong></p><p style="text-align:left;"><span style="FONT-FAMILY: 微软雅黑">广东俊富立足中国本土，实现海外扩张，以高效的流程化运作、优质的产品与超值的服务创造价值，成为世界非织造布40强企业之一。</span></p><p style="text-align:left;"><strong style="FONT-FAMILY: 微软雅黑">大连瑞光非织造布集团有限公司</strong></p><p style="text-align:left;"><span style="FONT-FAMILY: 微软雅黑">大连瑞光集团在自主创新和引进技术的基础上，丰富产品品种，体现“绿色、环保”创新理念，使企业从瑞光制造转向瑞光创造。</span></p><p style="text-align:left;"><strong style="FONT-FAMILY: 微软雅黑">普杰无纺布（中国）有限公司</strong></p><p style="text-align:left;"><span style="FONT-FAMILY: 微软雅黑">普杰是世界非织造布40强企业，普杰（中国）是较早在中国设立生产基地的企业，公司的全球网点和国际市场专长使其成为全方位供应商，带来高品质、高附加值、多功能、舒适、环保、安全的解决方案。</span></p><p style="text-align:left;"><strong style="FONT-FAMILY: 微软雅黑">福建鑫华股份有限公司</strong></p><p style="text-align:left;"><span style="FONT-FAMILY: 微软雅黑">鑫华公司走循环经济路线，拥有再生资源利用的差别化纤维和清洁生产的工程结构型非织造材料两个支柱产业，不仅给消费者提供更为现代化、便捷化的生活，更在潜移默化中保护了我们无可替代的绿色环境。</span></p><p style="text-align:left;"><strong style="FONT-FAMILY: 微软雅黑">晋江市兴泰无纺制品有限公司</strong></p><p style="text-align:left;"><span style="FONT-FAMILY: 微软雅黑">兴泰无纺从中国品牌远销海外，到重视国内市场开发，实现了以优质产品和完美服务满足生活消费提升，形成一个分布合理的营销服务网络，推动企业驶入持续、健康发展的“快车道”。</span></p><p style="text-align:left;"><strong style="FONT-FAMILY: 微软雅黑">浙江和中非织造股份有限公司</strong></p><p style="text-align:left;"><span style="FONT-FAMILY: 微软雅黑">和中公司采用进口生产线，注重技术创新，适应消费需求，开发能引导潮流的新产品，以体制创新和科技创新带动产业结构和资本结构的战略性调整，实现产业升级和经济效益稳定快速增长。</span></p><p style="text-align:left;"><strong style="FONT-FAMILY: 微软雅黑">佛山市南海必得福无纺布有限公司</strong></p><p style="text-align:left;"><span style="FONT-FAMILY: 微软雅黑">必得福，一次性医疗用纺织品的出口型生产企业，有着成熟的生产和品质控制程序，并不断配合客户整合一条完整的生产链，让客户享受高品质、高效率、低成本的“必得福”式的服务。</span></p><p style="text-align:left;"><strong style="FONT-FAMILY: 微软雅黑">杭州诺邦无纺有限公司</strong></p><p style="text-align:left;"><span style="FONT-FAMILY: 微软雅黑">诺邦无纺以水刺工艺为核心，发展多工艺组合技术，实现差异化竞争模式，创造出一条诺邦特色经营路线，取得市场认可。</span></p><p style="text-align:left;"><strong style="FONT-FAMILY: 微软雅黑">上海博格工业用布有限公司</strong></p><p style="text-align:left;"><span style="FONT-FAMILY: 微软雅黑">博格学习借鉴世界先进的环保知识，开发出新型耐高温过滤材料，创立“博格”国际品牌，打造过滤材料生产基地，较好地满足了工业过滤需求。</span></p><p style="text-align:left;"><strong style="FONT-FAMILY: 微软雅黑">绍兴县庄洁无纺材料有限公司</strong></p><p style="text-align:left;"><span style="FONT-FAMILY: 微软雅黑">庄洁无纺寻求差异化经营，逐步从医卫用非织造布扩展到生产革基布、电池隔膜等多元化产品，并且从卷材延伸到生产湿巾、擦布等非织造制品，既增加了企业的产品附加值，又丰富了产业集群的产品结构。</span></p><p><br/></p>', NULL, N'', 60, NULL, N'中国非织造布行业10强揭晓 ', 0, NULL, 0, 0, CAST(0x0000A292011922DE AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (40, N'2013年中国国际非织造布会议日程 ', N'admin', N'本站', N'<p><strong>会议将安排同声传译</strong></p><p><strong>10月25日上午日程</strong><br/> 非织造布技术发展<br/>8:30~8:50&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;汽车用非织造布发展<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 上海申达股份有限公司副总经理、汽车内饰事业部总经理&nbsp; 姚明华<br/>8:50~9:10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;非织造布在土工和建筑用领域的应用<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;东华大学纺织学院副院长 靳向煜教授<br/>9:10~9:30&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;全球非织造布技术进展<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; INDA教学培训主讲专家Ed Vaughn博士<br/>9:30~9:50&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;非织造布及制品的检测技术<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;广州市纤维产品检测院&nbsp; 王向钦博士<br/>9:50~10:10&nbsp;&nbsp;&nbsp;&nbsp;短纤维梳理成网非织造布加工技术<br/>10:10~10:30&nbsp;&nbsp;超纤革基布技术应用<br/>10:30~10:50&nbsp;&nbsp;可吸入颗粒物控制专用滤料技术<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;厦门三维丝环保股份有限公司技术中心主任 蔡伟龙<br/>10:50~11:10&nbsp;&nbsp;非织造布后整理加工技术<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中国纺织科学研究院研究员&nbsp; 吕世静<br/><strong>&nbsp;绍兴县政府午宴<br/>&nbsp;</strong></p><p><strong><strong>10月25日</strong>下午日程1</strong><br/> 13:30~14:00&nbsp; 2012/2013中国非织造布行业10强企业与优秀供应商发布会<br/><strong><strong>10月25日</strong>下午日程2</strong><br/>领导致辞<br/>14:00~14:10&nbsp;&nbsp;浙江省绍兴县领导致辞<br/>14:10~14:20&nbsp;&nbsp;中国纺织工业联合会领导致辞<br/>14:20~14:30&nbsp;&nbsp; 政府行业主管部门领导致辞</p><p>非织造布市场与发展<br/>14:30~14:50&nbsp;&nbsp;中国非织造布行业发展<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中国产业用纺织品行业协会会长&nbsp; 李陵申<br/>14:50~15:10&nbsp;&nbsp;美国非织造布行业发展情况<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;美国非织造布协会主席（INDA）David Rousse<br/> 15:10~15:30&nbsp;&nbsp;欧洲非织造布行业发展<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欧洲非织造布协会（EDANA）主席Pierre Wiertz<br/> 15:30~15:50&nbsp;&nbsp;中国台湾地区非织造布产业发展<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;台湾不织布同业公会会长邱正中<br/>15:50~16:10&nbsp;&nbsp;医卫用纺织品市场的发展<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;佛山稳德福公司董事长&nbsp; 邓伟雄<br/>16:10~16:30&nbsp;&nbsp;环境友好的非织造布发展趋势<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;美国太平洋非织造布工业有限公司技术总监Larry C. Wadsworth<br/> 16:30~16:50&nbsp;&nbsp; 非织造布专用纤维发展<br/><br/>17:00~17:30&nbsp;&nbsp;讨论和交流<br/><br/><strong>18:00~20:00&nbsp;&nbsp;&nbsp;晚宴&nbsp;</strong></p><p><strong>本日程为会议的暂定日程，主办方将根据演讲实际情况对日程进行适当调整。</strong></p><p><br/></p>', NULL, N'', 60, NULL, N'2013年中国国际非织造布会议日程 ', 0, NULL, 0, 0, CAST(0x0000A292015EE09D AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (41, N'中美两国协会共同主办中国国际非织造布会议将于10月召开', N'admin', N'本站', N'<p style="color: rgb(51, 51, 51); line-height: 21px; font-family: 微软雅黑, Arial;"><strong><span style="font-family: 微软雅黑;">各有关单位：</span></strong></p><p style="color: rgb(51, 51, 51); line-height: 21px; font-family: 微软雅黑, Arial;"><span style="font-family: 微软雅黑;">非织造布是产业用纺织品的重要原材料，广泛应用于医疗卫生、过滤、土工和交通工具等领域。经过多年的发展，我国的非织造布工业得到了长足的进步，国际竞争力显著提高，海外市场开拓取得明显成效；同时，我国巨大的内需市场也吸引了国外非织造布巨头纷纷进驻，我国已经成为全球最大的非织造布生产国和消费国。</span></p><p style="color: rgb(51, 51, 51); line-height: 21px; font-family: 微软雅黑, Arial;"><span style="font-family: 微软雅黑;">为了加强国内外非织造布行业的交流与合作，促进我国非织造布产业的产业升级，帮助企业了解国外行业的先进技术、拓展国外市场，学习国外行业在经营理念、市场推广、基础研究、产业链配套和专业人才等方面的先进经验，中国产业用纺织品行业协会将联合美国非织造布协会、欧洲非织造布协会，于10月25日在浙江省绍兴县举办2013年中国国际非织造布会议，同期还将举办非织造布高级培训班。邀请行业内企业和对行业发展感兴趣的人士参加本次会议。</span></p><p style="color: rgb(51, 51, 51); line-height: 21px; font-family: 微软雅黑, Arial;"><span style="font-family: 微软雅黑;">现将部分事项通知如下，协会将于9月份发布正式通知。</span></p><p style="color: rgb(51, 51, 51); line-height: 21px; font-family: 微软雅黑, Arial;"><span style="font-family: 微软雅黑;"><strong>活动名称：</strong><br/>2013年中国国际非织造布会议<br/><span style="font-family: arial;">China International Nonwovens Conference(2013)，<em>CINC2013</em></span><br/><strong>会议时间：</strong>10月25日<br/><strong>会议地点：</strong>绍兴县<br/><strong>主办单位：</strong><br/> 中国产业用纺织品行业协会<br/> 美国非织造布协会（INDA）<br/> 浙江省绍兴县人民政府<br/><strong>承办单位：</strong>浙江省绍兴县夏履镇人民政府<br/><strong>支持单位：</strong>欧洲非织造布协会（EDANA）</span></p><p style="color: rgb(51, 51, 51); line-height: 21px; font-family: 微软雅黑, Arial;"><span style="font-family: 微软雅黑;"><strong>会议主要议程：</strong><br/>1. 2013年中国非织造布10强企业颁奖<br/>2. 国家政府部门领导、中国纺织工业联合会领导致辞。<br/>3. 中国、美国、欧洲非织造布协会代表演讲，介绍区域内的市场和技术情况<br/>4. 香港、台湾地区非织造布协会演讲，介绍区域内市场和技术情况<br/>5. 非织造布10强企业发言<br/>6. 专家发言，分别介绍非织造布行业的纤维、设备新技术情况和新工艺、新应用开发<br/>7. 非织造布产品小型展示和产业链对接活动</span></p><p style="color: rgb(51, 51, 51); line-height: 21px; font-family: 微软雅黑, Arial;"><span style="font-family: 微软雅黑;"><strong>联系方式：</strong><br/> 联系人：刘东明<br/> 电话：010-85229287转605<br/>传真：010-85229425<br/>电子邮件：<a style="color: rgb(51, 51, 51); text-decoration: none;" href="mailto:cnitatongji@163.com">cnitatongji@163.com</a></span></p><p><br/></p>', NULL, N'', 60, NULL, N'中美两国协会共同主办中国国际非织造布会议将于10月召开', 0, NULL, 0, 0, CAST(0x0000A292016101B4 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (42, N'CINTE2014展位预申请通知 ', N'admin', N'本站', N'<p>中国国际产业用纺织品及非织造布展览会创办于1994年，每两年一届，目前已成长为亚洲最大、行业认可的国际品牌展会。2012年举办的第十届中国国际产业用纺织品及非织造布展览会展出面积达25000平方米，来自22个国家和地区的437家企业参展，吸引了62个国家和地区的19066名专业观众观展，其中海外观众比例达到10%。2014年第十一届中国国际产业用纺织品及非织造布展览会招展工作已经启动，请各有关单位加以关注。</p><p>展会时间：2014年9月24-26日<br/> 展会地点：中国·上海新国际博览中心<br/> 主办单位：中国产业用纺织品行业协会<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;中国国际贸易促进委员会纺织行业分会&nbsp;<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 法兰克福展览（香港）有限公司</p><p>展品范围：设备、工艺技术、零配件；纤维、纱线、化纤聚合物原料；非织造布；涂层及层合织物；织造布、编网、编织物、针织布；复合材料；化学品；研发和咨询机构、相关媒体。</p><p>联系人：</p><p>白&nbsp;晓(13439379934)、孙蓓蓓(13811520525)<br/>电&nbsp;话：010-85229483/85229421-611<br/>传&nbsp;真：010-85229425</p><p>E-mail：<a href="mailto:henry1449@sina.com">henry1449@sina.com</a>&nbsp;<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;babytracy75@163.com</p><p><a href="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/files/20130724085433956.doc"><span style="color: rgb(255, 0, 0);"><strong>通知和申请表下载</strong></span></a></p><p><br/></p>', N'CINTE2014展位预申请通知 ', N'', 61, NULL, N'CINTE2014展位预申请通知 ', 0, NULL, 0, 0, CAST(0x0000A29201623F5C AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (43, N'CINTE介绍 ', N'admin', N'本站', N'<p><span style="font-family: 微软雅黑;"><strong>行业推崇的国际知名产业用纺织品及非织造布展会</strong><br/>　　<br/> 　　第十一届，创办于1994年，每两年一届，走过近二十年的中国国际产业用纺织品及非织造布展览会，已经成长为亚洲最大、行业认可的国际品牌展会。<br/> 　　大纺织，大展会。与中国国际纺织面料(秋冬)展览会同时间同地点举办。两展联袂，展出总面积将超过190,000平方米。预计展览会专业观众将达到8万人，其中海外观众超过1.5万人。<br/> 　　强强联手，专业运作。行业协会与专业办展机构，联合涵盖产业用纺织品应用的十四家协(学)会作为支持单位。<br/> 　　共享万亿市场，高科技，高附加值纺织品一站式商贸采购平台，纺织工业转型升级技术窗口。</span></p><p><span style="font-family: 微软雅黑;"><strong>与中国国际纺织面料（秋冬）博览会同时间同地点举办</strong><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 中国国际产业用纺织品及非织造布展览会将与中国国际纺织面料（秋冬）博览会同期举办，联袂打造中国纺织行业的盛会。总展出面积将超过10 万平方米，预计展会专业观众将创记录的达到6 万，海外专业观众超过1 万。功能面料，服装用辅料，运动休闲用纺织品等参展企业将受到特别关注。<br/><br/><strong>展品范围</strong></span></p><p><span style="font-family: 微软雅黑;">　　1．设备、工艺技术、零配件<br/> 　　用于生产产业用纺织品和非织造布的新的工艺流程、加工技术和设备，关键零部件，质量控制装置，废品回收技术，检测设备等；<br/> 　　2．涂层及层合织物<br/> 　　包括各种涂层织物，喷绘灯箱布，建筑膜材，气密织物，篷盖布，遮阳篷，防水油布，包装材料及相关辅料；<br/> 　　3．非织造布<br/> 　　包括纺粘、熔喷、针刺、水刺、气流成网、热粘合、化学粘合非织造布及其制品；<br/> 　　4．纤维、纱线、化纤聚合物原料<br/> 包括涤纶工业丝、玻纤及其产品，金属纤维，陶瓷纤维及其它各种耐高温纤维及制品等；<br/> 　　5．复合材料<br/> 　　包括预浸件，结构组件，过滤材料及其产品，纤维增强材料（包括加强混凝土的各种纤维增强材料），以及采用纤维增强的各种管道容器等；<br/> 　　6．织造布、编网、编织物、针织布机织、缝编、针织、编织加工而成的各种产业用纺织品；<br/> 　　7．化学品（粘合剂、切片及相关化工产品）<br/> 包括各种粘合剂，密封材料，各种添加剂，涂层材料，表面处理材料，等离子处理的设备和加工技术等；<br/> 　　8．研发和咨询机构，相关媒体<br/> 包括相关协会、研究机构、院校，策划咨询公司以及各种新闻媒体，各种刊物。</span></p><p><span style="font-family: 微软雅黑;">　　<strong>主办单位</strong></span></p><p><span style="font-family: 微软雅黑;">　　中国国际贸易促进委员会纺织行业分会<br/> 　　中国产业用纺织品行业协会<br/> 　　法兰克福展览（香港）有限公司<br/><br/> 　　<strong>支持单位</strong><br/><br/> 　　中国造纸协会生活用纸专业委员会<br/> 　　中国土工合成材料工程协会<br/> 　　中国农业工程学会<br/> 　　全国卫生产业企业管理协会<br/> 　　中国汽车工业协会汽车相关工业分会<br/> 　　中国公路学会<br/> 　　中国建筑行业协会<br/> 　　中国塑料加工工业协会<br/> 　　中国建筑防水材料工业协会<br/> 　　中国劳动保护工业企业协会<br/> 　　中国医药保健品进出口商会医用敷料分会<br/> 　　中国包装联合会<br/> 　　中国钢结构协会空间结构分会<br/> 　　上海科学会堂</span></p><p><br/></p>', NULL, N'', 61, NULL, N'CINTE介绍 ', 0, NULL, 0, 0, CAST(0x0000A29201626D00 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (45, N'领导参观cinte2012（1）', N'admin', N'本站', N'<p>中国纺织工业联合会会长王天凯、副会长兼秘书长高勇、副会长<span style="font-size: 12px;"><span style="line-height: 25px; font-family: 微软雅黑, 黑体;">张延恺、会长助理兼纺织贸促会常务副会长徐迎新、中国产业用纺织品行业协会会长李陵申等领导参观展会，与参展企业进行交谈。</span></span></p><p style="text-align: center;"><img style="width: 400px; height: 267px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/images/20130724182650792.jpg"/></p><p style="text-align: center;"><img style="width: 400px; height: 266px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/images/20130724182715303.jpg"/></p><p style="text-align: center;"><img style="width: 400px; height: 267px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/images/20130724182735919.jpg"/></p><p style="text-align: center;"><img style="width: 400px; height: 267px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/images/20130724182757569.jpg"/></p><p style="text-align: center;"><img style="width: 400px; height: 267px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/images/20130724182818455.jpg"/></p><p style="text-align: center;"><img style="width: 400px; height: 267px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/images/20130724182840602.jpg"/></p><p style="text-align: center;"><img style="width: 400px; height: 599px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/images/20130724182917652.jpg"/></p><p><br/></p>', NULL, N'', 61, NULL, N'领导参观cinte2012', 0, NULL, 0, 0, CAST(0x0000A29201633CCA AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (46, N'中德产业用纺织品可持续发展论坛召开 ', N'admin', N'本站', N'<p style="text-align: center;">&nbsp; &nbsp; &nbsp;<img style="width: 211px; height: 317px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/images/20130725105515343.jpg"/>&nbsp; <img style="width: 211px; height: 317px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/images/20130725105536523.jpg"/></p><p><span style="font-family: 微软雅黑;">由中国纺织工业协会，德国纺织服装工业协会主办，中国产业用纺织品行业协会，中国国际贸易促进委员会纺织行业分会承办的“中德产业用纺织品可持续发展论坛”于2011年9月15日在北京举办。<br/> 该论坛是中德两国在产业用纺织品领域首次举办的国际大型研讨与对接活动。德国纺织服装工业协会、德国产业用纺织品研究及检测机构、德国产业用纺织品重点企业以及在中国运营的德国产业用纺织品终端用户以及国内的产业用纺织品重点企业、科研单位、测试中心以及下游用户等近200位嘉宾代表都出席了论坛。<br/> 中国纺织工业协会许坤元副会长、德国纺织服装工业联合会Peter Schwartze名誉副会长、国家工业信息化部消费品工业司王伟副司长、德国联邦经济与技术部经济事务司Hendrik Luchtmeier博士致欢迎辞。<br/> 论坛有学术专家中国人民解放军总后军需装备研究所张建春副所长、德国纺织研究协会会长Jansen博士和德国德累斯顿工业大学纺织技术学院院长Cherif教授，分别讲述高性能纤维在产业用纺织品中的应用、产业用纺织品的研究现状、轻质结构型功能性纺织品等方面的最新研究成果。<br/> 论坛还有在相关产业的著名企业做了主题报告，如大众汽车(中国)投资有限公司--产业用纺织品在汽车领域的应用；稳健医疗集团有限公司李建全董事长--医疗与卫生用纺织品市场需求及前景。<br/> 本次论坛在精彩报告之外，还专门开设了产品展示区和对接交流会，有近20家德国和中国的企业进行现场的展示，两国企业共同展示在产业用纺织品领域可持续发展的新技术、新产品。在展示的同时还组织了中德企业的对接会，中德两国产业用品纺织品的制造商、终端用户以及检测机构参加，有70多家相关领域的企业参加对接，两国企业充分利用了本次对接会，相互了解两国产业用纺织品企业对各自产业需求和市场需求。企业通过设立的展台，实体展示企业最新技术及产品，在技术纺织品领域进行充分的交流，促进中德企业的对接、交流及跨国合作。<br/> 我国的产业用纺织品正处在发展的重要时期，产业用纺织品已成为我国纺织工业结构调整、转型升级的重要途径之一，成为我国纺织工业实现由大到强、由比较优势向竞争优势转变的重要举措之一。而德国作为产业用纺织品的先进生产国，在高性能纤维开发、产业用纺织品后整理技术研究，特别是在非织造布机械设备的研制等方面一直处于国际领先水平，在品牌推广和提升产业的市场渠道等方面都有许多值得中国企业借鉴的成功做法。通过此次论坛、展示及对接交流会，必将能整合中德两国产业链上下游的多种资源，加强两国企业技术信息和市场信息的对接，促进两国企业的深度合作，为中德两国的产业合作创造更多机遇，拓展更大空间。</span></p><p><br/></p>', NULL, N'', 62, NULL, N'中德产业用纺织品可持续发展论坛召开 ', 0, NULL, 0, 0, CAST(0x0000A2920163FFAA AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (47, N'中德产业用纺织品可持续发展论坛及产品展示交流会在北京召开 ', N'admin', N'本站', N'<p>由中德两国首次举办的中德产业用纺织品可持续发展论坛于2011年9月15日在北京召开。德国纺织服装工业协会、德国产业用纺织品研究及检测机构、德国产业用纺织品重点企业、在中国运营的德国产业用纺织品终端用户以及国内的产业用纺织品重点企业、科研单位、测试中心和下游用户等近200位嘉宾代表出席了论坛。<br/> 　　&nbsp;<br/>　　中国纺织工业协会许坤元副会长、德国纺织服装工业联合会Peter Schwartze名誉副会长、工业和信息化部消费品工业司王伟副司长、德国联邦经济与技术部经济事务司Hendrik Luchtmeier博士在会上致辞。<br/> 　　&nbsp;<br/>　　王伟同志在致辞中指出，中国是世界纺织生产大国，但传统纺织服装生产面临资源、环境、劳动力等要素制约，也面临其他发展中国家更低成本的竞争。产业用纺织品广泛应用于环境保护、建筑交通、新能源等领域，充分体现了环境友好、可持续发展的理念，发展产业用纺织品，是中国纺织工业结构调整、转型升级的重要方向。<br/> 　　&nbsp;<br/>　　王伟同志提出，目前，工业和信息化部正会同有关部门编制《产业用纺织品“十二五”发展规划》，不久就要颁布实施，这将对产业用纺织品行业发展具有指导作用。他表示，在经济全球化和新技术革命的背景下，中国产业用纺织品行业的发展离不开广泛的国际合作和跨国资源配置，世界也需要中国这一消费市场和制造基地。此次论坛，通过对接与交流，加强中德两国间产业、科技和人才往来，增进相互了解和友谊，对于中德两国产业用纺织品行业的优势互补、经济技术合作及产业的可持续发展都具有十分深远的意义。同时，王伟副司长希望本次论坛能够成为中德两国行业同仁探讨与借鉴的平台，并将各方面专家、学者、实践者的新思路、新观念、新设想、新提议汇聚成为产业发展的新举措、新造诣，共同推动中德两国产业用纺织品的快速发展。（工信部网站）　　&nbsp;</p>', NULL, N'', 62, NULL, N'中德产业用纺织品可持续发展论坛及产品展示交流会在北京召开 ', 0, NULL, 0, 0, CAST(0x0000A29201642E88 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (48, N'什么是产业用纺织品', N'admin', N'本站', N'<p style="text-align: center;"><span style="font-family: 微软雅黑;"><strong><img style="width: 450px; height: 113px;" alt="" src="http://www.cnita.org.cn/Doc/ArticleUpFile/2013-07/images/20130724172150203.jpg"/></strong></span></p><p><span style="font-family: 微软雅黑;"><strong>1</strong><strong>产业用纺织品的定义</strong></span></p><p><span style="font-size: 12px;"><span style="font-family: 微软雅黑;">纺织品分为服装、家纺和产业用纺织品三大部分。产业用纺织品在国外也称作技术纺织品，是指经过专门设计、具有特定功能，应用于工业、医疗卫生、环境保护、土工及建筑、交通运输、航空航天、新能源、农林渔业等领域的纺织品。产业用纺织品技术含量高，应用范围广，市场潜力大，其发展水平是衡量一个国家纺织工业综合竞争力的重要标志之一。</span></span></p><p><span style="font-family: 微软雅黑;"><strong>2</strong><strong>产业用纺织品分类</strong></span></p><p><span style="font-size: 12px;"><span style="font-family: 微软雅黑;">我国产业用纺织品共分16大类</span></span></p><p style="margin-left: 12pt;"><span style="font-size: 12px;"><span style="font-family: 微软雅黑;">1 医疗与卫生用纺织品 (Medical and Hygiene Textiles)<br/> 2 过滤与分离用纺织品 (Filtration and Separation Textiles)<br/> 3 土工用纺织品 (Geotextiles)<br/> 4 建筑用纺织品 (Building and Construction Textiles)<br/> 5 交通工具用纺织品(Transport Textiles)<br/> 6 安全与防护用纺织品(Protective and Safety Textiles)<br/> 7 结构增强用纺织品(Reinforcement Textiles)<br/> 8 农业用纺织品 (Agrotextiles)<br/> 9 包装用纺织品(Packaging Textiles)<br/> 10 文体与休闲用纺织品(Sport and Leisure Textiles)<br/> 11 篷帆类纺织品 (Canvas and Tarp Textiles)<br/> 12 合成革用纺织品(Textiles for Synthetic Leather)<br/> 13 隔离与绝缘用纺织品 (Isolation and Insulation Textiles)<br/> 14 线绳（缆）带类纺织品 (Threads, Ropes and Belts)<br/> 15 工业用毡毯（呢）类纺织品 (Industrial Felt and Blanket Textiles)<br/> 16 其他类产业用纺织品 (Other Industrial Textiles)</span></span></p><p><br/></p>', NULL, N'', 54, NULL, N'什么是产业用纺织品', 0, NULL, 0, 0, CAST(0x0000A2920164ABC7 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (49, N'兰精集团三季度收益下跌44%', N'admin', N'本站', N'<p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">全球知名纤维素纤维制造商兰精集团（Lenzing）前不久发布的业绩单显示，兰精第三季度净利润同比下滑了44.2%，为8660万欧元（合1.167亿美元），低于上年同期的1.551亿欧元。第三季度销售额下跌了7.7%，仅为14.5亿欧元，低于往年同期的15.7亿欧元的水平。目前，兰精集团不得不降低此前预估的全年盈利与销售额预期。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑; font-size: 12px;">为适应企业未来发展需求，并在日益激烈的市场环境中获取更多市场份额，兰精近日推出了大规模的削减成本新方案。计划包括：在未来两年内，在全球范围内裁减600个职位；到2015年，公司年开支控制在1.2亿欧元（合1.62亿美元），进一步加强集团的市场和销售部门。在市场拓展方面，纤维公司应把重点放在需求强烈的核心市场如亚洲及土耳其等。在产品开发上，应重点开发用于可持续性非织造布等领域的应用。事实上，自今年年初开始，兰精已开始实施成本削减的计划，但显然此次的节约成本、大规模降低运营成本的开支和全球裁员的力度更大。</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑; font-size: 12px;">据悉，兰精的这一新举措将使其全球业务深受影响，如该集团最大的生产基地奥地利，其2600个员工中约有15%将面临失业。兰精集团表示，今年前三季度，集团纤维生产设备保持满负荷运转，而产品销售价格与同期相比却下降了14%。该公司也称，来自中国的价格和利润的压力缘自生产能力过剩，持续的高棉花库存将不利整个纤维行业的发展。兰精集团CEO Peter Untersperger说：“这种艰难的市场形势将持续到2014年甚至2015年。面对这种不利形势，尽快调整成本结构显得尤为重要。虽然我们的许多产品具有极强吸引力及极大增长潜力，但控制成本和增加利润将成为我们未来几年的目标。”兰精目前预计全年销售额为19亿欧元，低于此前估计的20亿欧元。由于成本重组，税息折旧及摊销前利润（EBITDA）将达2.2亿~2.3亿欧元，也低于此前预计的2.8亿欧元。</span></p><p><br/></p>', NULL, N'', 63, NULL, N'兰精集团三季度收益下跌44%', 0, NULL, 0, 0, CAST(0x0000A292017AA839 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (50, N'东丽开发出新型碳纤维增强PPS树脂', N'admin', N'本站', N'<p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">日本东丽此次开发的碳纤维增强PPS树脂不仅抗拉强度与铝铸件相当，且实现了45%的减重，同时继承了PPS较好的的耐热性、阻燃性和耐化学性。生产所用设备与玻纤增强PPS树脂采用的注塑成型设备无异。与金属材料相比，产品设计更加灵活多变，生产时可采用多种复合成型技术。该产品在量产车、电器和机械制造领域预计将有广泛应用。目前，东丽正在加紧研发面向市场的工业化量产技术。&nbsp;</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">铝铸件是将高温熔化的铝液注入模具所得，生产效率高、抗拉强度大，因而在汽车/摩托车车轮、引擎部件和机械部件生产中被广泛应用。此次开发的碳纤维增强PPS树脂，采用了东丽专有的长纤维碳纤维增强颗粒生产技术、碳纤维/PPS树脂接触面粘结性改良技术以及可用于注塑成型工艺的PPS基树脂材料，抗拉强度与铝铸件相当，这在世界上尚属首次。&nbsp;</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">在此之前，东丽采用世界上采用率最高的PAN基碳纤维Torayca? ，结合东丽独有的聚合物-合金技术、聚合物性能改良技术，用热塑性树脂作为基体材料开发出可用注塑成型工艺生产的碳纤维热塑性增强树脂颗粒Torayca? Pellet，并实现了工业化量产。其轻质高强、低线性膨胀系数、可有效屏蔽电磁波以及滑动性能出色等特性使其在汽车部件、家电部件、笔记本电脑/数码相机外壳、自行车部件、钓鱼用具等领域被广泛使用。&nbsp;</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">此后基于PPS树脂开发出的Torayca? Pellet，除了上述的优势，更添加了耐热、阻燃、耐化学等优良特性，在泵、马达等部件产品上已有三年以上的实用记录。但是，存在抗拉强度较小等问题，难以在更广层面取金属材料而代之。&nbsp;</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">东丽公司在此基础之上，进一步对抗拉强度进行性能改良，通过控制其纳米结构，保证了长纤维碳纤维的高度均一性，并着力提高碳纤维和PPS树脂接触面的粘结性，顺利地攻克了这一难题。&nbsp;</span></p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 微软雅黑;">东丽公司既是碳纤维Torayca? 的品牌所有者，又是PPS树脂生产商。今后会继续两种材料的组合研究，推出更新更有价值的新材料。 &nbsp;</span></p><p><br/></p>', NULL, N'', 63, NULL, N'东丽开发出新型碳纤维增强PPS树脂', 0, NULL, 0, 0, CAST(0x0000A292017B1E4D AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (51, N'我国化纤行业陷入迷局', N'admin', N'本站', N'<p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;国际需求低迷，出口增长乏力；国内经济放缓，内需拉动不足；东南亚等新经济体靠着成本优势、关税优势异军突起；国内环境压力、原料压力、新增产能压力增大；效益明显下降；行业内部结构性矛盾和问题突出……致使中国化纤，这个占据全球70%产量的庞大产业，陷入了前所未有的迷局。中国化纤应该怎样走才能真正担当起世界化纤领军品牌的重任？怎样走才能真正实现化纤强国的目标？</p><p style="text-align:justify;color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);">　　近日，在浙江桐乡召开的第十九届中国国际化纤会议上，中国化纤协会会长端小平指出：“破解中国化纤迷局的根本途径是科技。当前，转变发展方式，增强自主创新能力，提高产品附加值等转型升级任务迫在眉睫。”</p><p style="text-align:justify;color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);">　　<strong>转变发展方式刻不容缓</strong></p><p style="text-align:justify;color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);">　　谈到中国化纤当前面临的不景气，端小平用下述几点来概括：第一，行业效益下降幅度明显，尤其是销售利润率，今年上半年的销售利润率从去年的3.8%下降到2.8%。“化纤是一个投入产出高的行业，也是负债率较高的行业，所以净资产负债率要能达到3.8%就算是很不错了，但今年上半年的2.8%确实下降比较明显。”第二，开工率低。从近两年的运行情况来看，化纤几乎所有主要品种都面临开工不足的情况，情况最差的涤纶短纤从去年年初开始开工率一直处于70%上下，最差时接近65%，明显低于去年同期；但氨纶行业今年以来开工率大幅上升，达到95%以上。“整个行业的开工率不足，说明产品不那么好卖了。”第三，出口，虽然同比小幅增长2.13%，但增速已经大幅下降，而且增长主要来自于价格的上升，数量的增幅更小，“这一方面源于国外市场需求不足，另一方面竞争主要来自新经济体，他们凭借劳动力成本的优势、关税的优势在瓜分原来属于我们的市场。而中国化纤的对外依存度接近40%，可想而知外需的乏力对中国化纤的影响。”最后一方面来自行业心态：明显地感觉到大家对宏观经济的走向判断不清，并倾向不乐观。中国国际化纤会议被誉为国际化纤行业的风向标，每年总会吸引包括来自全球所有化纤强国的代表在内的500来人与会，而今年的参会人数创纪录地达到了700人，而且囊括了几乎所有的化纤生产主要国家和地区，“说明大家都在观望、思索、打探，想看清未来的发展方向。”端小平说。</p><p style="text-align:justify;color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);">　　面对上述不大好看的成绩单，端小平认为，主要源于中国经济减速带来的需求不足。中国纺织工业协会副会长高勇也持同样的观点：“化纤作为重要的基础原材料行业，涉及到了航空航天、国防工业、汽车工业、医疗卫生等各个行业，化纤行业的产业链在新经济发展趋势下不断拓展，国家经济形势变化对相关产业的影响都将通过纺织行业的产业链传到了化纤产业而化纤行业的技术进步也将通过终端产品影响到很多领域。”端小平认为，中国化纤高速发展离不开中国经济黄金十年的大背景，“在这种大背景下想不快速发展都不行，市场经济无形的手推动了化纤工业的快速发展。”而现在，中国经济减速带来的需求不足，自然无法过多拉动化纤的增长。</p><p style="text-align:justify;color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);">　　另一个绕不过去的问题是：化纤产能的结构性过剩。常规品种产能增长过快，致使结构性过剩问题越来越突出。过去十年聚酯涤纶行业是技术进步的最大受益者，我们单位投资是十年前的八分之一，建设周期是原来的二分之一，产品的加工费用是原来的二分之一，而现在的纺丝速度是十年前的八倍。科技进步带来了对涤纶行业大量需求的同时，也引来了大量的投资。涤纶行业成为了化纤行业最重要的行业，占到了中国化纤产量的80%。哪怕在目前总需求不足的情况下，聚酯涤纶行业仍处于产能的惯性增长通道，今年上半年投产的聚酯项目合计超过了300万吨。中国纺织工业协会名誉会长许坤元说：“它不是落后产能的过剩，而是同等先进工艺装备发展过快造成的。”</p><p style="text-align:justify;color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);">　　中国纺织工业协会会长王天凯指出：“如果完全用增量来完成产业转型升级，已经是不全面也不可能的了。化纤作为一个基础原材料行业，应该看到过去的发展途径，很多企业采用规模优势来降低成本，这种途径不能说不对，可能将来还会有，但是现在纯粹用这种途径而不用质量提升来完成产业升级，一定不可行。”</p><p style="text-align:justify;color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);">　　徐坤元也说：“我们的企业家要记住，化纤产业靠一两台机器赚大钱的机会越来越少，或者说一去不复返了。人才、科技、资本这三个是市场最活跃的因素，才是发展的出路和获得最大利润的法宝。”</p><p style="text-align:justify;color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);">　<strong>　科技进步是第一法宝</strong></p><p style="text-align:justify;color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);">　　在中国经济转型已经无法持续地支撑单纯规模的扩张，传统的发达国家化纤产业进一步萎缩致使化纤行业技术进步的动力和能力不断下降，而未来伴随着科学技术的突飞猛进，作为战略性新兴材料的各类高新技术纤维材料，其技术突破与应用开发将成为各国纺织业竞相争夺的制高点，在此大背景下，端小平提出，化纤行业必须充分利用相关产业技术发展的有利时机，加强高新技术对纺织化纤产业的改造提升，加快纤维材料高新技术的创新与突破，提升产业核心竞争力，才能真正在新一轮的竞争中掌握主动权。</p><p style="text-align:justify;color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);">　　为此，端小平在本次会议上的主题报告题目为《科技进步与化纤工业》。报告指出，中国化纤工业经过几十年，特别是近十年的高速发展，已经形成完整的产业链配套体系，包括相适应的科研、人才培养和装备制造部门，在常规纤维生产领域拥有领先的设备和技术，生产的产品从常规化学纤维、高性能化学纤维到生物基化学纤维，成为产品覆盖面及应用范围最广的国家。这些优势都为中国化纤工业的科技进步奠定了扎实的基础，也是中国化纤工业实现转型升级，创新发展的有利条件。中国化纤工业的发展，无不渗透着“技术进步”的轨迹，每一项技术突破都伴随着增量的快速发展。科技进步也推动化纤产业结构调整，企业经济规模显著提高，产业技术已全面升级，具备了较强的国际、国内市场竞争力。报告从常规纤维的多功能化和高差异化、高性能化学纤维的低成本化生产和品质提升、生物基化学纤维及原料的研发，产业化生产及市场应用、常规纤维的绿色低碳生产技术等四个方面论述了现在及未来中国化纤工业的科技进步。</p><p style="text-align:justify;color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);">　　为了把上述理论落到实处，化纤协会已经有一套行之有效的措施在推进：用中国化纤协会恒逸基金来奖励化纤行业的优秀论文，以期给行业的科技进步做基础理论支撑；用中国纤维流行趋势的发布来推动产业链上下游的结合，为创新企业打开市场创造条件；积极做化纤协会标准，为刚刚上市还来不及制定国家标准、行业标准的新产品做第三方吊牌，帮助企业推广并保护知识产权。</p><p style="text-align:justify;color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);">　　<strong>差异化发展是有效途径</strong></p><p style="text-align:justify;color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);">　　“中国经济正在过路口，而对企业来说，过路口就要一慢二看三通过，看准了再走。”端小平说。在他看来，现阶段稳妥的途径是：产品创新，走差异化道路，“至于量的发展，我认为现在可以缓一缓。”</p><p style="text-align:justify;color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);">　　既然走差异化道路，那么企业可以尝试向下游发展，通过兼并重组等手段，拉长产业链，因为光做纤维，附加值不会太高。端小平特别提到一个例子：徐州斯尔克的“一步法异收缩混纤丝产业化成套技术与应用项目”在2011年荣获中国纺织工业联合会科技进步一等奖。运用该项技术纺出来的丝，两年前每吨能够赚到5000~10000元，但是随着该技术的大量推广，用该技术纺织的丝线产品供过于求，导致每吨只有100~200元利润，濒临亏损。但是斯尔克该项技术的利润并没有降低，为什么？它把该纤维技术运用到了面料上，它织出了与众不同的布，拉长了产业链。</p><p style="text-align:justify;color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);">　　而对于有实力的大企业，端小平鼓励走出去全球化配置资源，必须向产业链的上游去拓展。因为中国化纤的上游还受困于国外，中国化纤最终是要摆脱这些束缚的。“像乙二醇、PX就是重要的化纤原料，现在还面临这样的困局，而我国政府在炼油、石化产品的生产和投资方面的保护、管控还比较严，所以最好的途径就是走出去全球化配置资源。恒逸现在已经到文莱去投资石化产品。这是一个方向。”</p><p><br/></p>', NULL, N'', 63, NULL, N'我国化纤行业陷入迷局', 0, NULL, 0, 0, CAST(0x0000A292017CAB54 AS DateTime))
INSERT [dbo].[Article] ([Id], [Title], [Author], [Source], [Context], [Abstract], [Thumbnails], [CategoryId], [CategoryTwo], [Keyword], [IsRecommend], [TitleColor], [TitleIsBold], [Status], [CreateDate]) VALUES (52, N'联系我们', N'admin', N'本站', N'<p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong>协会秘书处</strong><br/>北京市东长安街12号226室<br/>电话：010-85229421<br/>传真：010-85229425</p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong>会员工作、分会工作；展会工作</strong><br/>010-85229421转605</p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong>技术、科技项目申报和咨询</strong><br/>010-85229287转606</p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong>标准、检测和质量工作</strong><br/>010-85229287转603</p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong>网站、手机报；信息统计咨询服务；产业集群申报和服务</strong><br/>010-85229421转607</p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);"><strong>《技术纺织品》杂志投稿、广告和发行</strong><br/>010-85229287转601</p><p style="color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; font-size: 11.818181991577148px; line-height: 20.99431800842285px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p><br/></p>', NULL, N'', 5, NULL, N'联系我们', 0, NULL, 0, 0, CAST(0x0000A29201802EA5 AS DateTime))
SET IDENTITY_INSERT [dbo].[Article] OFF
/****** Object:  StoredProcedure [dbo].[usp_user_update_status]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-12-06
-- Description:   User UPDATE STATUS
-- ===========================================================
CREATE PROCEDURE [dbo].[usp_user_update_status] 
	@Id int, 
	@Status int, 
	@resultMsg NVARCHAR(500) OUT
AS
BEGIN 
IF EXISTS(SELECT * FROM [User] WHERE [Id] = @Id )
	BEGIN
		UPDATE  [User] 
		SET
		[Status] = CASE WHEN @Status IS NOT NULL THEN @Status ELSE [Status] END  
		WHERE [Id] = @Id   
		SET @resultMsg = 'Success:Success' 
	END 
	ELSE 
	BEGIN 
		SET @resultMsg = 'Error:NoData' 
	END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_user_select_pager]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-12-06
-- Description:   User DELETE
-- ===========================================================
CREATE PROCEDURE [dbo].[usp_user_select_pager] 
	@Organization NVARCHAR(50),
	@KeyWord NVARCHAR(200),
	@PagerIndex INT , 
	@PagerSize INT , 
	@RowsCount INT OUT 
AS
BEGIN 
	DECLARE @TotalPages INT ,@StartRow INT ,@EndRow INT
	SET @RowsCount = (
                    SELECT COUNT(*) FROM [User]
                    WHERE (@Organization IS NULL OR Organization = @Organization)
                    AND (@KeyWord IS NULL OR Name LIKE '%'+@KeyWord+'%')
                    AND (@KeyWord IS NULL OR  Account LIKE '%'+@KeyWord+'%')
                    )
	SET @TotalPages = CEILING(CONVERT(FLOAT, @RowsCount) / @PagerSize)
	IF @PagerIndex > @TotalPages 
		SET @PagerIndex = @TotalPages
	IF @PagerIndex < 1 
		SET @PagerIndex = 1
	SET @StartRow = ( @PagerIndex - 1 ) * @PagerSize + 1
	IF @RowsCount > @PagerIndex * @PagerSize 
		SET @EndRow = @PagerIndex * @PagerSize 
	ELSE 
		SET @EndRow = @RowsCount ; 
	WITH temptbl AS ( 
					SELECT ROW_NUMBER() OVER ( ORDER BY  [Id]  DESC ) AS 'row_no' ,* 
					FROM [User]
					WHERE (@Organization IS NULL OR Organization = @Organization)
                    AND (@KeyWord IS NULL OR Name LIKE '%'+@KeyWord+'%')
                    AND (@KeyWord IS NULL OR  Account LIKE '%'+@KeyWord+'%')
					)
	SELECT  * FROM temptbl 
	WHERE row_no BETWEEN @StartRow AND @EndRow
END
GO
/****** Object:  StoredProcedure [dbo].[usp_user_select_detail_by_id]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-12-06
-- Description:   User SELECT DETAIL
-- ===========================================================
CREATE PROCEDURE  [dbo].[usp_user_select_detail_by_id]
  @Id int
AS
    BEGIN 
        SELECT * FROM [User] WHERE [Id] = @Id 
    END
GO
/****** Object:  StoredProcedure [dbo].[usp_user_select_detail_by_account]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-12-06
-- Description:   User SELECT DETAIL
-- ===========================================================
CREATE PROCEDURE  [dbo].[usp_user_select_detail_by_account]
  @Account nvarchar(200)
AS
    BEGIN 
        SELECT * FROM [User] WHERE [Account] = @Account 
    END
GO
/****** Object:  StoredProcedure [dbo].[usp_user_select_all]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-12-06
-- Description:   User SELECT ALL
-- ===========================================================
CREATE PROCEDURE  [dbo].[usp_user_select_all]

AS
BEGIN 
    SELECT * FROM [User] 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_user_insert_update]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-12-06
-- Description:   User INSERT UPDATE
-- ===========================================================
CREATE PROCEDURE [dbo].[usp_user_insert_update] 
	@Id int,
	@Name nvarchar(100),
	@Account nvarchar(100),
	@Password nvarchar(400),
	@Organization int,
	@Status int,
	@Permissions nvarchar(200) ,
	@resultMsg nvarchar(200) out
AS
BEGIN 
IF @Id = 0
begin
	IF EXISTS(SELECT * FROM [User] WHERE [Account] = @Account )
	begin
		set @resultMsg = 'Error:账号已存在!'
	end
	else
	begin
		IF EXISTS(SELECT * FROM [User] WHERE [Id] = @Id )
			BEGIN
				UPDATE  [User] 
				SET 
				[Name] = CASE WHEN @Name IS NOT NULL THEN @Name ELSE [Name] END ,
				[Account] =  @Account ,
				[PassWord] = CASE WHEN @Password IS NOT NULL THEN @Password ELSE [PassWord] END ,
				[Organization] = CASE WHEN @Organization IS NOT NULL THEN @Organization ELSE [Organization] END ,
				[Status] = CASE WHEN @Status IS NOT NULL THEN @Status ELSE [Status] END ,
				[Permissions] =  @Permissions ,
				[CreateDate] = GETDATE()
				WHERE [Id] = @Id   
			END 
			ELSE 
			BEGIN 
				INSERT INTO  [User]   ( 
				
				[Name]  ,
				[Account]  ,
				[PassWord]  ,
				[Organization]  ,
				[Status]  ,
				[Permissions]  ,
				[CreateDate]  
				) VALUES (  
				@Name  ,
				@Account  ,
				@Password  ,
				@Organization  ,
				@Status  ,
				@Permissions  ,
				GETDATE()
				) 
			END
			
			set @resultMsg = 'Success:Success'
		END
end
end
GO
/****** Object:  StoredProcedure [dbo].[usp_user_delete]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-12-06
-- Description:   User DELETE
-- ===========================================================
CREATE PROCEDURE [dbo].[usp_user_delete] 
	@Id int, 
	@resultMsg NVARCHAR(500) OUT
AS
BEGIN 
IF EXISTS(SELECT * FROM [User] WHERE [Id] = @Id )
	BEGIN
		DELETE  [User] 
		WHERE [Id] = @Id   
		SET @resultMsg = 'Success:Success' 
	END 
	ELSE 
	BEGIN 
		SET @resultMsg = 'Error:NoData' 
	END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_pictures_update_status]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Pictures UPDATE STATUS
-- ===========================================================
CREATE PROCEDURE [dbo].[usp_pictures_update_status] 
	@Id int, 
	@Status int, 
	@resultMsg NVARCHAR(500) OUT
AS
BEGIN 
IF EXISTS(SELECT * FROM Pictures WHERE [Id] = @Id )
	BEGIN
		UPDATE  Pictures 
		SET
		[Status] = CASE WHEN @Status IS NOT NULL THEN @Status ELSE [Status] END  
		WHERE [Id] = @Id   
		SET @resultMsg = 'Success:Success' 
	END 
	ELSE 
	BEGIN 
		SET @resultMsg = 'Error:NoData' 
	END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_pictures_select_pager]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Pictures DELETE
-- ===========================================================
CREATE PROCEDURE [dbo].[usp_pictures_select_pager] 
	@PagerIndex INT , 
	@PagerSize INT , 
	@KeyWord NVARCHAR(500) ,
	@Category NVARCHAR(200),
	@OwnerCode NVARCHAR(200),
	@RowCount INT OUT 
AS
BEGIN 
	DECLARE @TotalPages INT ,@StartRow INT ,@EndRow INT
	SET @RowCount = (
                    SELECT COUNT(P.Id) FROM Pictures P
                    INNER JOIN Category C ON C.Id = P.CategoryId
                    AND (@Category IS NULL OR C.Id = @Category)
                    WHERE (@KeyWord is null or P.Name LIKE '%'+@KeyWord+'%')
                    AND (@OwnerCode IS NULL OR Owner = @OwnerCode)
                    )
	SET @TotalPages = CEILING(CONVERT(FLOAT, @RowCount) / @PagerSize)
	IF @PagerIndex > @TotalPages 
		SET @PagerIndex = @TotalPages
	IF @PagerIndex < 1 
		SET @PagerIndex = 1
	SET @StartRow = ( @PagerIndex - 1 ) * @PagerSize + 1
	IF @RowCount > @PagerIndex * @PagerSize 
		SET @EndRow = @PagerIndex * @PagerSize 
	ELSE 
		SET @EndRow = @RowCount ; 
	WITH temptbl AS ( 
					SELECT ROW_NUMBER() OVER ( ORDER BY  p.[Id]  DESC ) AS 'row_no' ,
					P.* ,C.Name AS CategoryName,
					(SELECT D.Name FROM Category D WHERE D.Id = P.[Owner]) AS OwnerCategoryName
					FROM Pictures P
                    INNER JOIN Category C ON C.Id = P.CategoryId
                    AND (@Category IS NULL OR C.Id = @Category)
                    WHERE (@KeyWord is null or P.Name LIKE '%'+@KeyWord+'%')
                    AND (@OwnerCode IS NULL OR Owner = @OwnerCode)
					)
	SELECT  * FROM temptbl 
	WHERE row_no BETWEEN @StartRow AND @EndRow
END
GO
/****** Object:  StoredProcedure [dbo].[usp_pictures_select_detail_by_id]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Pictures SELECT DETAIL
-- ===========================================================
CREATE PROCEDURE  [dbo].[usp_pictures_select_detail_by_id]
  @Id int
AS
    BEGIN 
        SELECT p.*,c.Name as CategoryName 
        ,(SELECT D.Name FROM Category D WHERE D.Id = P.[Owner]) AS OwnerCategoryName
        FROM Pictures P
        INNER JOIN Category C ON C.Id = P.CategoryId 
        WHERE P.[Id] = @Id 
    END
GO
/****** Object:  StoredProcedure [dbo].[usp_pictures_select_by_owner]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Pictures SELECT BY OWNER
-- ===========================================================
CREATE PROCEDURE  [dbo].[usp_pictures_select_by_owner]
  @CategoryCode NVARCHAR(50),
  @OwnerCode NVARCHAR(50)
AS
    BEGIN 
        SELECT p.*,c.Name as CategoryName 
        ,(SELECT D.Name FROM Category D WHERE D.Id = P.[Owner]) AS OwnerCategoryName
        FROM Pictures P
        INNER JOIN Category C ON C.Id = P.CategoryId 
        AND (@CategoryCode IS NULL OR CategoryId = @CategoryCode)
        WHERE (@OwnerCode IS NULL OR p.Owner = @OwnerCode)
    END
GO
/****** Object:  StoredProcedure [dbo].[usp_pictures_select_all]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Pictures SELECT ALL
-- ===========================================================
CREATE PROCEDURE  [dbo].[usp_pictures_select_all]

AS
BEGIN 
    SELECT * FROM Pictures  
END
GO
/****** Object:  StoredProcedure [dbo].[usp_pictures_insert_update]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Pictures INSERT UPDATE
-- ===========================================================
CREATE PROCEDURE [dbo].[usp_pictures_insert_update] 
	@Id int,
	@Name nvarchar(100),
	@Categoryid int,
	@Owner int,
	@Picuri nvarchar(200),
	@Piclink nvarchar(200),
	@Status int
AS
BEGIN 
IF EXISTS(SELECT * FROM Pictures WHERE [Id] = @Id )
	BEGIN
		UPDATE  Pictures 
		SET
		[Name] = CASE WHEN @Name IS NOT NULL THEN @Name ELSE [Name] END ,
		[CategoryId] = CASE WHEN @Categoryid IS NOT NULL THEN @Categoryid ELSE [CategoryId] END ,
		[Owner] = @Owner ,
		[PicUri] = CASE WHEN @Picuri IS NOT NULL THEN @Picuri ELSE [PicUri] END ,
		[PicLink] = @Piclink ,
		[Status] = CASE WHEN @Status IS NOT NULL THEN @Status ELSE [Status] END ,
		[CreateDate] = GETDATE()
		WHERE [Id] = @Id   
	END 
	ELSE 
	BEGIN 
		INSERT INTO  Pictures   ( 
		[Name]  ,
		[CategoryId]  ,
		[Owner]  ,
		[PicUri]  ,
		[PicLink]  ,
		[Status]  
		) VALUES ( 
		@Name  ,
		@Categoryid  ,
		@Owner  ,
		@Picuri  ,
		@Piclink  ,
		@Status   
		) 
	END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_pictures_delete_by_id]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Pictures delete
-- ===========================================================
Create PROCEDURE  [dbo].[usp_pictures_delete_by_id]
  @Id int
AS
    BEGIN 
        delete Pictures  WHERE [Id] = @Id 
    END
GO
/****** Object:  StoredProcedure [dbo].[usp_organization_update_status]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Organization UPDATE STATUS
-- ===========================================================
CREATE PROCEDURE [dbo].[usp_organization_update_status] 
	@Orgid int, 
	@Status int, 
	@resultMsg NVARCHAR(500) OUT
AS
BEGIN 
IF EXISTS(SELECT * FROM Organization WHERE [OrgId] = @Orgid )
	BEGIN
		UPDATE  Organization 
		SET
		[Status] = CASE WHEN @Status IS NOT NULL THEN @Status ELSE [Status] END  
		WHERE [OrgId] = @Orgid   
		SET @resultMsg = 'Success:Success' 
	END 
	ELSE 
	BEGIN 
		SET @resultMsg = 'Error:NoData' 
	END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_organization_select_pager]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Organization DELETE
-- ===========================================================
CREATE PROCEDURE [dbo].[usp_organization_select_pager] 
	@KeyWord nvarchar(200),
	@PagerIndex INT , 
	@PagerSize INT , 
	@RowCount INT OUT 
AS
BEGIN 
	DECLARE @TotalPages INT ,@StartRow INT ,@EndRow INT
	SET @RowCount = (
                    SELECT COUNT(*) FROM Organization
                    WHERE  (@KeyWord IS null or OrgName like '%'+@KeyWord+'%')
                    )
	SET @TotalPages = CEILING(CONVERT(FLOAT, @RowCount) / @PagerSize)
	IF @PagerIndex > @TotalPages 
		SET @PagerIndex = @TotalPages
	IF @PagerIndex < 1 
		SET @PagerIndex = 1
	SET @StartRow = ( @PagerIndex - 1 ) * @PagerSize + 1
	IF @RowCount > @PagerIndex * @PagerSize 
		SET @EndRow = @PagerIndex * @PagerSize 
	ELSE 
		SET @EndRow = @RowCount ; 
	WITH temptbl AS ( 
					SELECT ROW_NUMBER() OVER ( ORDER BY  [OrgId]  DESC ) AS 'row_no' ,* 					
					FROM Organization 
					WHERE  (@KeyWord IS null or OrgName like '%'+@KeyWord+'%')
					)
	SELECT  * FROM temptbl 
	WHERE row_no BETWEEN @StartRow AND @EndRow
END
GO
/****** Object:  StoredProcedure [dbo].[usp_organization_select_detail_by_orgid]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Organization SELECT DETAIL
-- ===========================================================
CREATE PROCEDURE  [dbo].[usp_organization_select_detail_by_orgid]
  @Orgid int
AS
    BEGIN 
        SELECT * FROM Organization WHERE [OrgId] = @Orgid 
    END
GO
/****** Object:  StoredProcedure [dbo].[usp_organization_select_all]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Organization SELECT ALL
-- ===========================================================
CREATE PROCEDURE  [dbo].[usp_organization_select_all]

AS
BEGIN 
    SELECT * FROM Organization  
END
GO
/****** Object:  StoredProcedure [dbo].[usp_organization_insert_update]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Organization INSERT UPDATE
-- ===========================================================
CREATE PROCEDURE [dbo].[usp_organization_insert_update] 
	@Orgid int,
	@Orgname nvarchar(200),
	@Orgenname nvarchar(200),
	@Address nvarchar(400),
	@Addressen nvarchar(400),
	@Zipcode nchar (40),
	@Internetsite nvarchar(400),
	@Natureofbusiness nvarchar(100),
	@Fixedassets nvarchar(400),
	@Legalperson nvarchar(100),
	@Post nvarchar(100),
	@Tel nvarchar(100),
	@Fax nvarchar(100),
	@Phone nvarchar(100),
	@Email nvarchar(100),
	@Contact nvarchar(100),
	@Contactpost nvarchar(100),
	@Contacttel nvarchar(100),
	@Contactfax nvarchar(100),
	@Contactphone nvarchar(100),
	@Contactemail nvarchar(100),
	@Unittype nvarchar(400),
	@Productapplications nvarchar(600),
	@Processcategory nvarchar(600),
	@Membershiplevel nvarchar(100),
	@Introduction text,
	@Status int 
AS
BEGIN 
IF EXISTS(SELECT * FROM Organization WHERE [OrgId] = @Orgid )
	BEGIN
		UPDATE  Organization 
		SET 
		[OrgName] = CASE WHEN @Orgname IS NOT NULL THEN @Orgname ELSE [OrgName] END ,
		[OrgEnName] = CASE WHEN @Orgenname IS NOT NULL THEN @Orgenname ELSE [OrgEnName] END ,
		[Address] = CASE WHEN @Address IS NOT NULL THEN @Address ELSE [Address] END ,
		[AddressEn] = CASE WHEN @Addressen IS NOT NULL THEN @Addressen ELSE [AddressEn] END ,
		[ZipCode] = CASE WHEN @Zipcode IS NOT NULL THEN @Zipcode ELSE [ZipCode] END ,
		[InternetSite] = CASE WHEN @Internetsite IS NOT NULL THEN @Internetsite ELSE [InternetSite] END ,
		[NatureOfBusiness] = CASE WHEN @Natureofbusiness IS NOT NULL THEN @Natureofbusiness ELSE [NatureOfBusiness] END ,
		[FixedAssets] = CASE WHEN @Fixedassets IS NOT NULL THEN @Fixedassets ELSE [FixedAssets] END ,
		[LegalPerson] = CASE WHEN @Legalperson IS NOT NULL THEN @Legalperson ELSE [LegalPerson] END ,
		[Post] = CASE WHEN @Post IS NOT NULL THEN @Post ELSE [Post] END ,
		[Tel] = CASE WHEN @Tel IS NOT NULL THEN @Tel ELSE [Tel] END ,
		[Fax] = CASE WHEN @Fax IS NOT NULL THEN @Fax ELSE [Fax] END ,
		[Phone] = CASE WHEN @Phone IS NOT NULL THEN @Phone ELSE [Phone] END ,
		[Email] = CASE WHEN @Email IS NOT NULL THEN @Email ELSE [Email] END ,
		[Contact] = CASE WHEN @Contact IS NOT NULL THEN @Contact ELSE [Contact] END ,
		[ContactPost] = CASE WHEN @Contactpost IS NOT NULL THEN @Contactpost ELSE [ContactPost] END ,
		[ContactTel] = CASE WHEN @Contacttel IS NOT NULL THEN @Contacttel ELSE [ContactTel] END ,
		[ContactFax] = CASE WHEN @Contactfax IS NOT NULL THEN @Contactfax ELSE [ContactFax] END ,
		[ContactPhone] = CASE WHEN @Contactphone IS NOT NULL THEN @Contactphone ELSE [ContactPhone] END ,
		[ContactEmail] = CASE WHEN @Contactemail IS NOT NULL THEN @Contactemail ELSE [ContactEmail] END ,
		[UnitType] = CASE WHEN @Unittype IS NOT NULL THEN @Unittype ELSE [UnitType] END ,
		[ProductApplications] = CASE WHEN @Productapplications IS NOT NULL THEN @Productapplications ELSE [ProductApplications] END ,
		[ProcessCategory] = CASE WHEN @Processcategory IS NOT NULL THEN @Processcategory ELSE [ProcessCategory] END ,
		[MembershipLevel] = CASE WHEN @Membershiplevel IS NOT NULL THEN @Membershiplevel ELSE [MembershipLevel] END ,
		[Introduction] = CASE WHEN @Introduction IS NOT NULL THEN @Introduction ELSE [Introduction] END ,
		[Status] = CASE WHEN @Status IS NOT NULL THEN @Status ELSE [Status] END ,
		[CreateDate] = GETDATE()
		WHERE [OrgId] = @Orgid   
	END 
	ELSE 
	BEGIN 
		INSERT INTO  Organization   (  
		[OrgName]  ,
		[OrgEnName]  ,
		[Address]  ,
		[AddressEn]  ,
		[ZipCode]  ,
		[InternetSite]  ,
		[NatureOfBusiness]  ,
		[FixedAssets]  ,
		[LegalPerson]  ,
		[Post]  ,
		[Tel]  ,
		[Fax]  ,
		[Phone]  ,
		[Email]  ,
		[Contact]  ,
		[ContactPost]  ,
		[ContactTel]  ,
		[ContactFax]  ,
		[ContactPhone]  ,
		[ContactEmail]  ,
		[UnitType]  ,
		[ProductApplications]  ,
		[ProcessCategory]  ,
		[MembershipLevel]  ,
		[Introduction]  ,
		[Status]  
		) VALUES (  
		@Orgname  ,
		@Orgenname  ,
		@Address  ,
		@Addressen  ,
		@Zipcode  ,
		@Internetsite  ,
		@Natureofbusiness  ,
		@Fixedassets  ,
		@Legalperson  ,
		@Post  ,
		@Tel  ,
		@Fax  ,
		@Phone  ,
		@Email  ,
		@Contact  ,
		@Contactpost  ,
		@Contacttel  ,
		@Contactfax  ,
		@Contactphone  ,
		@Contactemail  ,
		@Unittype  ,
		@Productapplications  ,
		@Processcategory  ,
		@Membershiplevel  ,
		@Introduction  ,
		@Status  
		) 
	END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_organization_delete]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-12-06
-- Description:   Organization DELETE
-- ===========================================================
CREATE PROCEDURE [dbo].[usp_organization_delete] 
	@Id int, 
	@resultMsg NVARCHAR(500) OUT
AS
BEGIN 
IF EXISTS(SELECT * FROM Organization WHERE [OrgId] = @Id )
	BEGIN
		DELETE  Organization 
		WHERE [OrgId] = @Id   
		SET @resultMsg = 'Success:Success' 
	END 
	ELSE 
	BEGIN 
		SET @resultMsg = 'Error:NoData' 
	END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_category_update_status]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Category UPDATE STATUS
-- ===========================================================
CREATE PROCEDURE [dbo].[usp_category_update_status] 
	@Id int, 
	@Status int, 
	@resultMsg NVARCHAR(500) OUT
AS
BEGIN 
IF EXISTS(SELECT * FROM Category WHERE [Id] = @Id )
	BEGIN
		UPDATE  Category 
		SET
		[Status] = CASE WHEN @Status IS NOT NULL THEN @Status ELSE [Status] END  
		WHERE [Id] = @Id   
		SET @resultMsg = 'Success:Success' 
	END 
	ELSE 
	BEGIN 
		SET @resultMsg = 'Error:NoData' 
	END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_category_select_pager]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Category DELETE
-- ===========================================================
CREATE PROCEDURE [dbo].[usp_category_select_pager] 
	@PagerIndex INT , 
	@PagerSize INT , 
	@RowCount INT OUT 
AS
BEGIN 
	DECLARE @TotalPages INT ,@StartRow INT ,@EndRow INT
	SET @RowCount = (
                    SELECT COUNT(*) FROM Category
                      --WHERE 语句
                    )
	SET @TotalPages = CEILING(CONVERT(FLOAT, @RowCount) / @PagerSize)
	IF @PagerIndex > @TotalPages 
		SET @PagerIndex = @TotalPages
	IF @PagerIndex < 1 
		SET @PagerIndex = 1
	SET @StartRow = ( @PagerIndex - 1 ) * @PagerSize + 1
	IF @RowCount > @PagerIndex * @PagerSize 
		SET @EndRow = @PagerIndex * @PagerSize 
	ELSE 
		SET @EndRow = @RowCount ; 
	WITH temptbl AS ( 
					SELECT ROW_NUMBER() OVER ( ORDER BY  [Id]  DESC ) AS 'row_no' ,* 
					FROM Category 
					--WHERE --where 条件
					)
	SELECT  * FROM temptbl 
	WHERE row_no BETWEEN @StartRow AND @EndRow
END
GO
/****** Object:  StoredProcedure [dbo].[usp_category_select_detail_by_id]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Category SELECT DETAIL
-- ===========================================================
CREATE PROCEDURE  [dbo].[usp_category_select_detail_by_id]
  @Id int
AS
    BEGIN 
        SELECT * FROM Category WHERE [Id] = @Id 
    END
GO
/****** Object:  StoredProcedure [dbo].[usp_category_select_all_by_three]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Category SELECT ALL
-- ===========================================================
CREATE PROCEDURE  [dbo].[usp_category_select_all_by_three]
@ParentCateg INT
AS
BEGIN 
    WITH QueryCategorys (ParentCateg,Id,LEVEL,name) AS(
	SELECT ParentCateg,Id, 0 LEVEL,name FROM Category WHERE ParentCateg = @ParentCateg
	UNION ALL
	SELECT c.ParentCateg,c.Id,b.level+1,c.name FROM Category c,QueryCategorys b
	WHERE c.ParentCateg = b.Id
)
SELECT * FROM QueryCategorys 
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_category_select_all]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Category SELECT ALL
-- ===========================================================
CREATE PROCEDURE  [dbo].[usp_category_select_all]
@ParentCateg INT,
@IsNav NVARCHAR(50)
AS
BEGIN 
    IF @ParentCateg > 0     
		SELECT * FROM Category  WHERE (ParentCateg =@ParentCateg or Id= @ParentCateg ) AND (@IsNav IS NULL OR IsNav=@IsNav or IsNav=1) order by Sort
	ELSE
		SELECT * FROM Category WHERE (@IsNav IS NULL OR IsNav=@IsNav)
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_category_insert_update]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Category INSERT UPDATE
-- ===========================================================
CREATE PROCEDURE [dbo].[usp_category_insert_update] 
	@Id int,
	@Name nvarchar(100),
	@Nameen nvarchar(100),
	@Thumbnails nvarchar(400),
	@Introduction nvarchar(1000),
	@Parentcateg int,
	@Sort int,
	@Isnav int,
	@Isindex int,
	@Status int
AS
BEGIN 
IF EXISTS(SELECT * FROM Category WHERE [Id] = @Id )
	BEGIN
		UPDATE  Category 
		SET
		[Name] = CASE WHEN @Name IS NOT NULL THEN @Name ELSE [Name] END ,
		[NameEn] = CASE WHEN @Nameen IS NOT NULL THEN @Nameen ELSE [NameEn] END ,
		[Thumbnails] = CASE WHEN @Thumbnails IS NOT NULL THEN @Thumbnails ELSE [Thumbnails] END ,
		[Introduction] = CASE WHEN @Introduction IS NOT NULL THEN @Introduction ELSE [Introduction] END ,
		[ParentCateg] = CASE WHEN @Parentcateg IS NOT NULL THEN @Parentcateg ELSE [ParentCateg] END ,
		[Sort] = CASE WHEN @Sort IS NOT NULL THEN @Sort ELSE [Sort] END ,
		[IsNav] = CASE WHEN @Isnav IS NOT NULL THEN @Isnav ELSE [IsNav] END ,
		[IsIndex] = CASE WHEN @Isindex IS NOT NULL THEN @Isindex ELSE [IsIndex] END ,
		[Status] = CASE WHEN @Status IS NOT NULL THEN @Status ELSE [Status] END ,
		[CreateDate] = GETDATE()
		WHERE [Id] = @Id   
	END 
	ELSE 
	BEGIN 
		INSERT INTO  Category   ( 
		[Name]  ,
		[NameEn]  ,
		[Thumbnails]  ,
		[Introduction]  ,
		[ParentCateg]  ,
		[Sort]  ,
		[IsNav]  ,
		[IsIndex]  ,
		[Status]    
		) VALUES ( 
		@Name  ,
		@Nameen  ,
		@Thumbnails  ,
		@Introduction  ,
		@Parentcateg  ,
		@Sort  ,
		@Isnav  ,
		@Isindex  ,
		@Status  
		) 
	END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_category_delete_by_id]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Category DELETE
-- ===========================================================
Create PROCEDURE  [dbo].[usp_category_delete_by_id]
  @Id int
AS
    BEGIN 
        DELETE Category WHERE [Id] = @Id 
    END
GO
/****** Object:  StoredProcedure [dbo].[usp_article_update_status]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Article UPDATE STATUS
-- ===========================================================
CREATE PROCEDURE [dbo].[usp_article_update_status] 
	@Id int, 
	@Status int, 
	@resultMsg NVARCHAR(500) OUT
AS
BEGIN 
IF EXISTS(SELECT * FROM Article WHERE [Id] = @Id )
	BEGIN
		UPDATE  Article 
		SET
		[Status] = CASE WHEN @Status IS NOT NULL THEN @Status ELSE [Status] END  
		WHERE [Id] = @Id   
		SET @resultMsg = 'Success:Success' 
	END 
	ELSE 
	BEGIN 
		SET @resultMsg = 'Error:NoData' 
	END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_article_select_pager]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Article DELETE
-- ===========================================================
CREATE PROCEDURE [dbo].[usp_article_select_pager] 
	@CategoryId NVARCHAR(20),
	@CategoryTwo NVARCHAR(20),
	@KeyWord NVARCHAR(200),
	@PagerIndex INT , 
	@PagerSize INT , 
	@RowsCount INT OUT
AS
BEGIN 
	DECLARE @TotalPages INT ,@StartRow INT ,@EndRow INT
	SET @RowsCount = (
					  SELECT COUNT(*) FROM Article
                      WHERE (@CategoryId IS NULL OR CategoryId = @CategoryId)
                      AND (@CategoryTwo IS NULL OR CategoryTwo = @CategoryTwo)
                      AND (@KeyWord IS NULL OR  Title LIKE '%'+@KeyWord+'%')
                    )
	SET @TotalPages = CEILING(CONVERT(FLOAT, @RowsCount) / @PagerSize)
	IF @PagerIndex > @TotalPages 
		SET @PagerIndex = @TotalPages
	IF @PagerIndex < 1 
		SET @PagerIndex = 1
	SET @StartRow = ( @PagerIndex - 1 ) * @PagerSize + 1
	IF @RowsCount > @PagerIndex * @PagerSize 
		SET @EndRow = @PagerIndex * @PagerSize 
	ELSE 
		SET @EndRow = @RowsCount ; 
	WITH temptbl AS ( 
					SELECT ROW_NUMBER() OVER ( ORDER BY  [Id]  DESC ) AS 'row_no' ,A.*,
					(SELECT Name FROM Category WHERE Id = A.CategoryId) AS CategoryName
					FROM Article A
					WHERE (@CategoryId IS NULL OR CategoryId = @CategoryId)
					AND (@CategoryTwo IS NULL OR CategoryTwo = @CategoryTwo)
                    AND (@KeyWord IS NULL OR  Title LIKE '%'+@KeyWord+'%')
					)
	SELECT  * FROM temptbl 
	WHERE row_no BETWEEN @StartRow AND @EndRow
END
GO
/****** Object:  StoredProcedure [dbo].[usp_article_select_detail_by_id]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Article SELECT DETAIL
-- ===========================================================
CREATE PROCEDURE  [dbo].[usp_article_select_detail_by_id]
  @Id int
AS
    BEGIN 
        SELECT  *
        ,C.Name AS CategoryName
         FROM Article A INNER JOIN Category C
         ON A.CategoryId = C.Id AND a.Id = @Id
    END
GO
/****** Object:  StoredProcedure [dbo].[usp_article_select_by_top]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Article SELECT BY TOP
-- ===========================================================
CREATE PROCEDURE  [dbo].[usp_article_select_by_top]
  @AdsCategoryCode NVARCHAR(50) ,
  @CategoryCode NVARCHAR(50),
  @CategoryTwoCode NVARCHAR(50),
  @TopCount int,
  @CategName Nvarchar(200) out,
  @Thumbnails nvarchar(200) out,
  @Introduction nvarchar(200) out ,
  @CategIsAds int out,
  @resultMsg nvarchar(200) out
AS
    BEGIN
		IF EXISTS(SELECT * FROM Category WHERE [Id] = @CategoryCode )
		BEGIN
			SELECT top 1  @CategName = Name,@Thumbnails=Thumbnails,@Introduction=Introduction FROM Category WHERE [Id] = @CategoryCode ;
			SET @CategIsAds =(SELECT COUNT(*) FROM Pictures P WHERE P.CategoryId = @AdsCategoryCode AND P.Owner=@CategoryCode );
			if @CategoryTwoCode = @CategoryCode
			BEGIN 
				SELECT TOP (@topCount) *
				,C.Name AS CategoryName
				FROM Article A INNER JOIN Category C
				ON A.CategoryId = C.Id  
				AND (@CategoryTwoCode IS NULL OR A.CategoryTwo = @CategoryTwoCode )
				order by a.createdate desc ;
			END
			ELSE
			BEGIN
				SELECT TOP (@topCount) *
				,C.Name AS CategoryName
				FROM Article A INNER JOIN Category C
				ON A.CategoryId = C.Id 
				AND (@CategoryCode IS NULL OR A.CategoryId = @CategoryCode)
				AND (@CategoryTwoCode IS NULL OR A.CategoryTwo = @CategoryTwoCode )
				order by a.createdate desc ;
			END
			SET @resultMsg = 'Success:Success' 
		END
		ELSE
		BEGIN
			SET @CategName = ''
			SET @CategIsAds = 0 
			SET @resultMsg = 'Error:NoData' 
		END
      
        
    END
GO
/****** Object:  StoredProcedure [dbo].[usp_article_select_all]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Article SELECT ALL
-- ===========================================================
CREATE PROCEDURE  [dbo].[usp_article_select_all]

AS
BEGIN 
    SELECT * FROM Article  
END
GO
/****** Object:  StoredProcedure [dbo].[usp_article_insert_update]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-12-03
-- Description:   Article INSERT UPDATE
-- ===========================================================
CREATE PROCEDURE [dbo].[usp_article_insert_update] 
	@Id int,
	@Title nvarchar(600),
	@Author nvarchar(100),
	@Source nvarchar(100),
	@Context text,
	@Abstract nvarchar(1000),
	@Thumbnails nvarchar(200),
	@Categoryid int,
	@Categorytwo int,
	@Keyword nvarchar(200),
	@Isrecommend int,
	@Titlecolor nvarchar(100),
	@Titleisbold int,
	@Status int 
AS
BEGIN 
IF EXISTS(SELECT * FROM Article WHERE [Id] = @Id )
	BEGIN
		UPDATE  Article 
		SET 
		[Title] = CASE WHEN @Title IS NOT NULL THEN @Title ELSE [Title] END ,
		[Author] = CASE WHEN @Author IS NOT NULL THEN @Author ELSE [Author] END ,
		[Source] = CASE WHEN @Source IS NOT NULL THEN @Source ELSE [Source] END ,
		[Context] = CASE WHEN @Context IS NOT NULL THEN @Context ELSE [Context] END ,
		[Abstract] = CASE WHEN @Abstract IS NOT NULL THEN @Abstract ELSE [Abstract] END ,
		[Thumbnails] = CASE WHEN @Thumbnails IS NOT NULL THEN @Thumbnails ELSE [Thumbnails] END ,
		[CategoryId] = CASE WHEN @Categoryid IS NOT NULL THEN @Categoryid ELSE [CategoryId] END ,
		[CategoryTwo] = @Categorytwo ,
		[Keyword] = CASE WHEN @Keyword IS NOT NULL THEN @Keyword ELSE [Keyword] END ,
		[IsRecommend] = CASE WHEN @Isrecommend IS NOT NULL THEN @Isrecommend ELSE [IsRecommend] END ,
		[TitleColor] = CASE WHEN @Titlecolor IS NOT NULL THEN @Titlecolor ELSE [TitleColor] END ,
		[TitleIsBold] = CASE WHEN @Titleisbold IS NOT NULL THEN @Titleisbold ELSE [TitleIsBold] END ,
		[Status] = CASE WHEN @Status IS NOT NULL THEN @Status ELSE [Status] END ,
		[CreateDate] = GETDATE()
		WHERE [Id] = @Id   
	END 
	ELSE 
	BEGIN 
		INSERT INTO  Article   (  
		[Title]  ,
		[Author]  ,
		[Source]  ,
		[Context]  ,
		[Abstract]  ,
		[Thumbnails]  ,
		[CategoryId]  ,
		[CategoryTwo]  ,
		[Keyword]  ,
		[IsRecommend]  ,
		[TitleColor]  ,
		[TitleIsBold]  ,
		[Status]    
		) VALUES (  
		@Title  ,
		@Author  ,
		@Source  ,
		@Context  ,
		@Abstract  ,
		@Thumbnails  ,
		@Categoryid  ,
		@Categorytwo  ,
		@Keyword  ,
		@Isrecommend  ,
		@Titlecolor  ,
		@Titleisbold  ,
		@Status  
		) 
	END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_article_Delete_by_id]    Script Date: 12/12/2013 23:36:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- ===========================================================
-- Author:        Jason.Yao
-- Create date:   2013-11-30
-- Description:   Article Delete
-- ===========================================================
Create PROCEDURE  [dbo].[usp_article_Delete_by_id]
  @Id INT 
AS
    BEGIN 
        DELETE  Article WHERE [Id] = @Id  
    END
GO
/****** Object:  Default [DF_Article_IsRecd]    Script Date: 12/12/2013 23:36:42 ******/
ALTER TABLE [dbo].[Article] ADD  CONSTRAINT [DF_Article_IsRecd]  DEFAULT ((0)) FOR [IsRecommend]
GO
/****** Object:  Default [DF_Article_TitleIsBold]    Script Date: 12/12/2013 23:36:42 ******/
ALTER TABLE [dbo].[Article] ADD  CONSTRAINT [DF_Article_TitleIsBold]  DEFAULT ((0)) FOR [TitleIsBold]
GO
/****** Object:  Default [DF_Article_Status]    Script Date: 12/12/2013 23:36:42 ******/
ALTER TABLE [dbo].[Article] ADD  CONSTRAINT [DF_Article_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_Article_CreateDate]    Script Date: 12/12/2013 23:36:42 ******/
ALTER TABLE [dbo].[Article] ADD  CONSTRAINT [DF_Article_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_Category_CateLevel]    Script Date: 12/12/2013 23:36:42 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CateLevel]  DEFAULT ((0)) FOR [ParentCateg]
GO
/****** Object:  Default [DF_Category_Sort]    Script Date: 12/12/2013 23:36:42 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Sort]  DEFAULT ((99999)) FOR [Sort]
GO
/****** Object:  Default [DF_Category_IsNav]    Script Date: 12/12/2013 23:36:42 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_IsNav]  DEFAULT ((0)) FOR [IsNav]
GO
/****** Object:  Default [DF_Category_IsIndex]    Script Date: 12/12/2013 23:36:42 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_IsIndex]  DEFAULT ((0)) FOR [IsIndex]
GO
/****** Object:  Default [DF_Category_Status]    Script Date: 12/12/2013 23:36:42 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_Category_CreateDate]    Script Date: 12/12/2013 23:36:42 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_Organization_Status]    Script Date: 12/12/2013 23:36:42 ******/
ALTER TABLE [dbo].[Organization] ADD  CONSTRAINT [DF_Organization_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_Organization_CreateDate]    Script Date: 12/12/2013 23:36:42 ******/
ALTER TABLE [dbo].[Organization] ADD  CONSTRAINT [DF_Organization_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_Pictures_Owner]    Script Date: 12/12/2013 23:36:42 ******/
ALTER TABLE [dbo].[Pictures] ADD  CONSTRAINT [DF_Pictures_Owner]  DEFAULT ((0)) FOR [Owner]
GO
/****** Object:  Default [DF_Pictures_Status]    Script Date: 12/12/2013 23:36:42 ******/
ALTER TABLE [dbo].[Pictures] ADD  CONSTRAINT [DF_Pictures_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_Pictures_CreateDate]    Script Date: 12/12/2013 23:36:42 ******/
ALTER TABLE [dbo].[Pictures] ADD  CONSTRAINT [DF_Pictures_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_User_Organization]    Script Date: 12/12/2013 23:36:42 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Organization]  DEFAULT ((0)) FOR [Organization]
GO
/****** Object:  Default [DF_User_Status]    Script Date: 12/12/2013 23:36:42 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_User_CreateDate]    Script Date: 12/12/2013 23:36:42 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
