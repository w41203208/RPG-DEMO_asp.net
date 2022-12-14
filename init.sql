USE [MiniDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2022/6/1 下午 01:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[attribtute]    Script Date: 2022/6/1 下午 01:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[attribtute](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](200) NULL,
 CONSTRAINT [PK_attribtute] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[character]    Script Date: 2022/6/1 下午 01:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[character](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[level] [int] NOT NULL,
	[xp] [int] NOT NULL,
	[money] [int] NOT NULL,
 CONSTRAINT [PK_character] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[character_bag]    Script Date: 2022/6/1 下午 01:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[character_bag](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[character_id] [int] NOT NULL,
	[item_id] [int] NULL,
 CONSTRAINT [PK_character_bag] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[character_equipment]    Script Date: 2022/6/1 下午 01:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[character_equipment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[equipment_slot_id] [int] NOT NULL,
	[character_id] [int] NOT NULL,
	[item_id] [int] NULL,
 CONSTRAINT [PK_character_equipment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CharacterAttribute]    Script Date: 2022/6/1 下午 01:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterAttribute](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CharacterId] [int] NOT NULL,
	[AttributeId] [int] NOT NULL,
	[Value] [int] NOT NULL,
 CONSTRAINT [PK_CharacterAttribute] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[equipment_slot]    Script Date: 2022/6/1 下午 01:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[equipment_slot](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](20) NULL,
 CONSTRAINT [PK_equipment_slot] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[item]    Script Date: 2022/6/1 下午 01:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[quality] [nvarchar](10) NULL,
	[value] [int] NULL,
	[EquipmentType] [nvarchar](max) NULL,
	[item_type_id] [int] NOT NULL,
	[attribute_id] [int] NOT NULL,
	[money] [int] NOT NULL,
	[shop_id] [int] NULL,
 CONSTRAINT [PK_item] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[item_type]    Script Date: 2022/6/1 下午 01:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](20) NULL,
	[description] [nvarchar](200) NULL,
 CONSTRAINT [PK_item_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shop]    Script Date: 2022/6/1 下午 01:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_shop] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 2022/6/1 下午 01:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](20) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_character]    Script Date: 2022/6/1 下午 01:08:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_character](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[character_id] [int] NOT NULL,
 CONSTRAINT [PK_user_character] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220511075406_init2', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220511081153_changeAttrName', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220511081451_changeAttrName1', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220511082159_change', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220511085820_autoicredement', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220511092245_changeattrStringLength', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220511092431_changeattrStringLength1', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220511093402_changeStringLength2', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220513065852_characterNameNotNull', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220517035514_removeCharacterAlive', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220517051515_AddCharacterAttributeTable', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220517052004_CharacterAttributeValue', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220517075306_update', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220517081400_update1', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220517095728_update2', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220519072642_itemAddColumn', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220520032412_CE_Change_itemid_to_canNull', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220520045456_1', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220520065818_userbag', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220525021512_addShop', N'6.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220525064104_changesss', N'6.0.5')
GO
SET IDENTITY_INSERT [dbo].[attribtute] ON 

INSERT [dbo].[attribtute] ([id], [name], [description]) VALUES (1, N'HP', N'A measure of a character alive.')
INSERT [dbo].[attribtute] ([id], [name], [description]) VALUES (2, N'MP', N'A measure of character who can user megic power.')
INSERT [dbo].[attribtute] ([id], [name], [description]) VALUES (3, N'Intelligence', N'Intelligence')
INSERT [dbo].[attribtute] ([id], [name], [description]) VALUES (4, N'Strength', N'Strength')
INSERT [dbo].[attribtute] ([id], [name], [description]) VALUES (5, N'Luck', N'Luck')
INSERT [dbo].[attribtute] ([id], [name], [description]) VALUES (6, N'Attack', N'Attack')
INSERT [dbo].[attribtute] ([id], [name], [description]) VALUES (7, N'Mattack', N'Mattack')
INSERT [dbo].[attribtute] ([id], [name], [description]) VALUES (8, N'Dexterity', N'Dexterity')
SET IDENTITY_INSERT [dbo].[attribtute] OFF
GO
SET IDENTITY_INSERT [dbo].[equipment_slot] ON 

INSERT [dbo].[equipment_slot] ([id], [name]) VALUES (1, N'head')
INSERT [dbo].[equipment_slot] ([id], [name]) VALUES (2, N'body')
INSERT [dbo].[equipment_slot] ([id], [name]) VALUES (3, N'hands')
INSERT [dbo].[equipment_slot] ([id], [name]) VALUES (4, N'main_hand')
INSERT [dbo].[equipment_slot] ([id], [name]) VALUES (5, N'off_hand')
INSERT [dbo].[equipment_slot] ([id], [name]) VALUES (6, N'lower_body')
INSERT [dbo].[equipment_slot] ([id], [name]) VALUES (7, N'foots')
SET IDENTITY_INSERT [dbo].[equipment_slot] OFF
GO
SET IDENTITY_INSERT [dbo].[item] ON 

INSERT [dbo].[item] ([id], [name], [quality], [value], [EquipmentType], [item_type_id], [attribute_id], [money], [shop_id]) VALUES (1, N'Base Helmet', N'common', 2, N'head', 5, 4, 500, 3)
INSERT [dbo].[item] ([id], [name], [quality], [value], [EquipmentType], [item_type_id], [attribute_id], [money], [shop_id]) VALUES (4, N'Base Armor', N'common', 1, N'body', 4, 4, 500, 3)
INSERT [dbo].[item] ([id], [name], [quality], [value], [EquipmentType], [item_type_id], [attribute_id], [money], [shop_id]) VALUES (5, N'Hello Test Sword', N'common', 13, N'main_hand', 1, 6, 1500, 1)
INSERT [dbo].[item] ([id], [name], [quality], [value], [EquipmentType], [item_type_id], [attribute_id], [money], [shop_id]) VALUES (6, N'Sword of Night and Flame', N'Uncommon', 21, N'main_hand', 1, 6, 2500, 1)
INSERT [dbo].[item] ([id], [name], [quality], [value], [EquipmentType], [item_type_id], [attribute_id], [money], [shop_id]) VALUES (7, N'Sword of St Trina', N'common', 13, N'main_hand', 1, 6, 1500, 1)
INSERT [dbo].[item] ([id], [name], [quality], [value], [EquipmentType], [item_type_id], [attribute_id], [money], [shop_id]) VALUES (8, N'Highland Axe', N'Uncommon', 15, N'main_hand', 2, 6, 1700, 1)
INSERT [dbo].[item] ([id], [name], [quality], [value], [EquipmentType], [item_type_id], [attribute_id], [money], [shop_id]) VALUES (11, N'Base Shoes', N'common', 2, N'foots', 6, 5, 1000, 3)
INSERT [dbo].[item] ([id], [name], [quality], [value], [EquipmentType], [item_type_id], [attribute_id], [money], [shop_id]) VALUES (12, N'Silver Armor', N'Uncommon', 3, N'body', 4, 4, 2000, 3)
SET IDENTITY_INSERT [dbo].[item] OFF
GO
SET IDENTITY_INSERT [dbo].[item_type] ON 

INSERT [dbo].[item_type] ([id], [type], [description]) VALUES (1, N'sword', N'sword')
INSERT [dbo].[item_type] ([id], [type], [description]) VALUES (2, N'axe', N'axe')
INSERT [dbo].[item_type] ([id], [type], [description]) VALUES (3, N'leather', N'leather')
INSERT [dbo].[item_type] ([id], [type], [description]) VALUES (4, N'armor', N'armor')
INSERT [dbo].[item_type] ([id], [type], [description]) VALUES (5, N'helmet', N'helmet')
INSERT [dbo].[item_type] ([id], [type], [description]) VALUES (6, N'shoes', N'shoes')
SET IDENTITY_INSERT [dbo].[item_type] OFF
GO
SET IDENTITY_INSERT [dbo].[shop] ON 

INSERT [dbo].[shop] ([id], [name]) VALUES (1, N'武器店')
INSERT [dbo].[shop] ([id], [name]) VALUES (2, N'道具店')
INSERT [dbo].[shop] ([id], [name]) VALUES (3, N'防具店')
SET IDENTITY_INSERT [dbo].[shop] OFF
GO
ALTER TABLE [dbo].[item] ADD  DEFAULT ((0)) FOR [money]
GO
ALTER TABLE [dbo].[character_bag]  WITH CHECK ADD  CONSTRAINT [FK_character_bag_character_id] FOREIGN KEY([character_id])
REFERENCES [dbo].[character] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[character_bag] CHECK CONSTRAINT [FK_character_bag_character_id]
GO
ALTER TABLE [dbo].[character_bag]  WITH CHECK ADD  CONSTRAINT [FK_character_bag_item_id] FOREIGN KEY([item_id])
REFERENCES [dbo].[item] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[character_bag] CHECK CONSTRAINT [FK_character_bag_item_id]
GO
ALTER TABLE [dbo].[character_equipment]  WITH CHECK ADD  CONSTRAINT [FK_character_equipment_character_id] FOREIGN KEY([character_id])
REFERENCES [dbo].[character] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[character_equipment] CHECK CONSTRAINT [FK_character_equipment_character_id]
GO
ALTER TABLE [dbo].[character_equipment]  WITH CHECK ADD  CONSTRAINT [FK_character_equipment_equipment_slot_id] FOREIGN KEY([equipment_slot_id])
REFERENCES [dbo].[equipment_slot] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[character_equipment] CHECK CONSTRAINT [FK_character_equipment_equipment_slot_id]
GO
ALTER TABLE [dbo].[character_equipment]  WITH CHECK ADD  CONSTRAINT [FK_character_equipment_item_id] FOREIGN KEY([item_id])
REFERENCES [dbo].[item] ([id])
GO
ALTER TABLE [dbo].[character_equipment] CHECK CONSTRAINT [FK_character_equipment_item_id]
GO
ALTER TABLE [dbo].[CharacterAttribute]  WITH CHECK ADD  CONSTRAINT [FK_CharacterAttribute_attribtute_AttributeId] FOREIGN KEY([AttributeId])
REFERENCES [dbo].[attribtute] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CharacterAttribute] CHECK CONSTRAINT [FK_CharacterAttribute_attribtute_AttributeId]
GO
ALTER TABLE [dbo].[CharacterAttribute]  WITH CHECK ADD  CONSTRAINT [FK_CharacterAttribute_character_CharacterId] FOREIGN KEY([CharacterId])
REFERENCES [dbo].[character] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CharacterAttribute] CHECK CONSTRAINT [FK_CharacterAttribute_character_CharacterId]
GO
ALTER TABLE [dbo].[item]  WITH CHECK ADD  CONSTRAINT [FK_item_attribute_id] FOREIGN KEY([attribute_id])
REFERENCES [dbo].[attribtute] ([id])
GO
ALTER TABLE [dbo].[item] CHECK CONSTRAINT [FK_item_attribute_id]
GO
ALTER TABLE [dbo].[item]  WITH CHECK ADD  CONSTRAINT [FK_item_item_type_id] FOREIGN KEY([item_type_id])
REFERENCES [dbo].[item_type] ([id])
GO
ALTER TABLE [dbo].[item] CHECK CONSTRAINT [FK_item_item_type_id]
GO
ALTER TABLE [dbo].[item]  WITH CHECK ADD  CONSTRAINT [FK_item_shop_id] FOREIGN KEY([shop_id])
REFERENCES [dbo].[shop] ([id])
GO
ALTER TABLE [dbo].[item] CHECK CONSTRAINT [FK_item_shop_id]
GO
ALTER TABLE [dbo].[user_character]  WITH CHECK ADD  CONSTRAINT [character_id] FOREIGN KEY([character_id])
REFERENCES [dbo].[character] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_character] CHECK CONSTRAINT [character_id]
GO
ALTER TABLE [dbo].[user_character]  WITH CHECK ADD  CONSTRAINT [user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_character] CHECK CONSTRAINT [user_id]
GO
