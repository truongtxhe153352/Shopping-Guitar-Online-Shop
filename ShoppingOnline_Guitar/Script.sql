USE [PRJ_Assignment_e]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 24/03/2022 3:29:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[displayName] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[permission] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 24/03/2022 3:29:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 24/03/2022 3:29:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](255) NULL,
	[create_date] [date] NULL,
	[username] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 24/03/2022 3:29:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[productName] [nvarchar](255) NULL,
	[productImage] [nvarchar](255) NULL,
	[productPrice] [float] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 24/03/2022 3:29:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account_id] [int] NULL,
	[totalPrice] [float] NULL,
	[note] [text] NULL,
	[created_date] [date] NULL,
	[shipping_id] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 24/03/2022 3:29:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[image] [varchar](max) NOT NULL,
	[price] [money] NOT NULL,
	[quantity] [int] NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[cid] [int] NOT NULL,
 CONSTRAINT [PK__product__3213E83FE08B3F1F] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Record]    Script Date: 24/03/2022 3:29:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Record](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](255) NULL,
	[cid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipping]    Script Date: 24/03/2022 3:29:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [permission]) VALUES (1, N'truong', N'123', N'trinhtruong', N'thanh hoa', N'truongtrinh.m@gmail.com', N'0904785350', 0)
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [permission]) VALUES (2, N'admin', N'123', N'adminhaha', N'thanh hoa', N'admin@gmail.com', N'012345678', 1)
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [permission]) VALUES (3, N'aaa', N'aaa', N'aaa', N'aaa', N'aaa', N'aaa', 0)
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [permission]) VALUES (4, N'sabbb', N'123', N'bbbb', N'bbbbbbb', N'bbbbbbbbbb', N'bbbbbbbbbb', 0)
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [permission]) VALUES (5, N'sacc', N'123', N'ab', N'ab', N'ab', N'ab', 0)
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [permission]) VALUES (6, N'hai', N'123', N'ab', N'ab', N'ab', N'ab', 0)
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [permission]) VALUES (7, N'saccA', N'321', N'ab', N'ab', N'ab', N'ab', 0)
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [permission]) VALUES (8, N'saY', N'123', N'ad', N'ad', N'zc', N'zc', 0)
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [permission]) VALUES (9, N'saY2', N'123', N'ab', N'ab', N'ab', N'ab', 0)
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [permission]) VALUES (10, N'saO', N'123', N'zc', N'zc', N'zc', N'zc', 0)
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [permission]) VALUES (11, N'saR', N'321', N'cvx', N'12', N'as', N'fd', 0)
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [permission]) VALUES (12, N'checkpass', N'321', N'ab', N'aba', N'ab', N'ab', 0)
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [permission]) VALUES (13, N'tr', N'trrr', N'trrrr', N'trrr', N'trrr', N'trrr', 0)
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [permission]) VALUES (14, N'lan2', N'123', N'aasdf', N'asdf', N'sdf', N'sdfg', 0)
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [permission]) VALUES (15, N'iiiiiiiii', N'123', N'asdf', N'asdf', N'asdf', N'0904785350', 0)
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [permission]) VALUES (16, N'iiiiiiii', N'123', N'qqqqqqqqqqq', N'qqqqqqqqq', N'qqqqq', N'qqqqqq', 0)
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [permission]) VALUES (17, N'iiiiii', N'123456', N'aaaaa', N'aaaaaa', N'aaaa', N'aaaaa', 0)
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [permission]) VALUES (18, N'linhtl', N'123', N'trinh linh', N'Thanh Hoa', N'linh trinh ha', N'012345678', 0)
INSERT [dbo].[Account] ([id], [username], [password], [displayName], [address], [email], [phone], [permission]) VALUES (20, N'dddd', N'123', N'dddd', N'dddd', N'dddd', N'12345678', 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[category] ([cid], [cname]) VALUES (2, N'Đàn Ghitar')
INSERT [dbo].[category] ([cid], [cname]) VALUES (3, N'Đàn Ukulele')
INSERT [dbo].[category] ([cid], [cname]) VALUES (4, N'Phụ Kiện')
GO
SET IDENTITY_INSERT [dbo].[comment] ON 

INSERT [dbo].[comment] ([id], [content], [create_date], [username]) VALUES (1, N'qua la dep luon', CAST(N'2022-03-24' AS Date), N'truong')
INSERT [dbo].[comment] ([id], [content], [create_date], [username]) VALUES (2, N'qua troi cung dep luon', CAST(N'2022-03-24' AS Date), N'admin')
SET IDENTITY_INSERT [dbo].[comment] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (4, 4, N'G001-SL', N'https://images.pexels.com/photos/1010519/pexels-photo-1010519.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 320, 2)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (5, 5, N'G002-SL', N'https://images.pexels.com/photos/1656415/pexels-photo-1656415.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 250, 0)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (6, 5, N'G003-SL', N'https://images.pexels.com/photos/1407322/pexels-photo-1407322.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 220, 10)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (7, 6, N'G001-SL', N'https://images.pexels.com/photos/1010519/pexels-photo-1010519.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 320, 2)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (8, 6, N'G002-SL', N'https://images.pexels.com/photos/1656415/pexels-photo-1656415.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 250, 0)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (9, 7, N'G001-SL', N'https://images.pexels.com/photos/1010519/pexels-photo-1010519.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 320, 2)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (10, 8, N'G001-SL', N'https://images.pexels.com/photos/1010519/pexels-photo-1010519.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 320, 2)
INSERT [dbo].[OrderDetail] ([id], [order_id], [productName], [productImage], [productPrice], [quantity]) VALUES (11, 9, N'G001-SL hai', N'https://images.pexels.com/photos/1010519/pexels-photo-1010519.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260', 320, 2)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (4, 1, 320, N'hahahaha', NULL, 4)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (5, 1, 470, N'hôm nay tôi bu?n', NULL, 5)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (6, 1, 570, N'hôm nay tôi bu?n th?t d?y', NULL, 6)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (7, 1, 320, N'hôm nay tôi bu?n', CAST(N'2022-03-11' AS Date), 7)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (8, 1, 320, N'no no', CAST(N'2022-03-15' AS Date), 8)
INSERT [dbo].[Orders] ([id], [account_id], [totalPrice], [note], [created_date], [shipping_id]) VALUES (9, 1, 640, N'nooo', CAST(N'2022-03-15' AS Date), 9)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (2, N'G002-SL hai', N'https://images.pexels.com/photos/1656415/pexels-photo-1656415.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 250.0000, 0, N'Phiên bản SPEM02', N' Phiên bản SPEM- mặt đàn gỗ thông nguyên tấm- lưng hông gỗ ép nhập khẩu( sạch và mịn- vang hơn các loại ván ép trên thị trường)', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (3, N'G003-SL', N'https://images.pexels.com/photos/1407322/pexels-photo-1407322.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 220.0000, 10, N'Phiên b?n SPEM03', N' Là gỗ nhập khẩu cao cấp,Top gỗ thông nguyên tấm, lưng và hông đàn gỗ Ưalnut nhập khẩu dày dặn cho ra tiếng bass , treb rõ ràng. Chuẩn nốt', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (4, N'G004-SL', N'https://images.pexels.com/photos/3428498/pexels-photo-3428498.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 180.0000, 1, N'Phiên b?n SPEM04', N' Phiên bản VG-HD- mặt đàn gỗ thông nguyên tấm- lưng hông gỗ hồng đào nguyên tấm- khóa đúc- nếu quý khách muốn cây đàn tốt hơn, âm hay hơn, càng chơi lâu càng hay hãy chọn VG-HD', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (5, N'G005-SL', N'https://images.pexels.com/photos/2156327/pexels-photo-2156327.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 350.0000, 3, N'Phiên b?n SPEM05', N'Phiên bản VG-Ko1- mặt đàn gỗ thông nguyên tấm- lưng hông gỗ Koa, loại tốt Vinaguitar khuyên các bạn nên mua ', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (6, N'G006-SL', N'https://images.pexels.com/photos/2909367/pexels-photo-2909367.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 420.0000, 6, N'Phiên b?n SPEM06', N'Sản phẩm và phân phối bởi Vinaguitar: thợ chuyên nghiệp, tay nghề tốt, mang lại cho quý khách cây đàn chuẩn, bảo hành tốt nhất', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (7, N'G007-SL', N'https://images.pexels.com/photos/2646825/pexels-photo-2646825.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 520.0000, 12, N'Phiên b?n SPEM07', N' Là gỗ nhập khẩu cao cấp,Top gỗ thông nguyên tấm, lưng và hông đàn gỗ Ưalnut nhập khẩu dày dặn cho ra tiếng bass , treb rõ ràng. Chuẩn nốt', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (8, N'G008-SL', N'https://images.pexels.com/photos/625788/pexels-photo-625788.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 540.0000, 12, N'Phiên b?n SPEM08', N'Phù hợp với các lứa tuổi: đàn được thiết kế dáng A tiêu chuẩn, giúp cho mọi lứa tuổi, mọi người chơi dễ dáng sử dụng và tiếp cận', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (9, N'G009-SL', N'https://images.pexels.com/photos/258283/pexels-photo-258283.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 599.0000, 12, N'Phiên b?n SPEM09', N' Phiên bản SPEM- mặt đàn gỗ thông nguyên tấm- lưng hông gỗ ép nhập khẩu( sạch và mịn- vang hơn các loại ván ép trên thị trường)', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (10, N'G010-SL', N'https://images.pexels.com/photos/3714523/pexels-photo-3714523.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 115.0000, 1, N'Phiên b?n SPEM10', N' Phiên bản VG-HD- mặt đàn gỗ thông nguyên tấm- lưng hông gỗ hồng đào nguyên tấm- khóa đúc- nếu quý khách muốn cây đàn tốt hơn, âm hay hơn, càng chơi lâu càng hay hãy chọn VG-HD', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (11, N'G011-SL', N'https://images.pexels.com/photos/7558106/pexels-photo-7558106.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 250.0000, 12, N'Phiên b?n SPEM11', N' Là gỗ nhập khẩu cao cấp,Top gỗ thông nguyên tấm, lưng và hông đàn gỗ Ưalnut nhập khẩu dày dặn cho ra tiếng bass , treb rõ ràng. Chuẩn nốt', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (12, N'G012-SL', N'https://images.pexels.com/photos/9057763/pexels-photo-9057763.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 775.0000, 12, N'Phiên b?n SPEM12', N'Phiên bản SPEM- mặt đàn gỗ thông nguyên tấm- lưng hông gỗ ép nhập khẩu( sạch và mịn- vang hơn các loại ván ép trên thị trường)', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (13, N'G013-SL', N'https://images.pexels.com/photos/1716580/pexels-photo-1716580.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 995.0000, 12, N'Phiên b?n SPEM13', N' Là gỗ nhập khẩu cao cấp,Top gỗ thông nguyên tấm, lưng và hông đàn gỗ Ưalnut nhập khẩu dày dặn cho ra tiếng bass , treb rõ ràng. Chuẩn nốt', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (14, N'G014-SL', N'https://images.pexels.com/photos/2016810/pexels-photo-2016810.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 150.0000, 12, N'Phiên b?n SPEM14', N'Phiên bản VG-Ko1- mặt đàn gỗ thông nguyên tấm- lưng hông gỗ Koa, loại tốt Vinaguitar khuyên các bạn nên mua ', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (15, N'G015-SL', N'https://images.pexels.com/photos/8586560/pexels-photo-8586560.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 150.0000, 12, N'Phiên b?n SPEM15', N' Phiên bản VG-HD- mặt đàn gỗ thông nguyên tấm- lưng hông gỗ hồng đào nguyên tấm- khóa đúc- nếu quý khách muốn cây đàn tốt hơn, âm hay hơn, càng chơi lâu càng hay hãy chọn VG-HD', 2)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (16, N'U01-OL', N'https://images.pexels.com/photos/346709/pexels-photo-346709.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 150.0000, 12, N'Phiên b?n SPEM16', N' Đàn Ukulele Soprano size 01 của Piano Lovers được làm từ gỗ ép nguyên tấm, âm thanh hay.', 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (17, N'U02-OL', N'https://images.pexels.com/photos/4215468/pexels-photo-4215468.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 190.0000, 10, N'Phiên b?n SPEM17', N'Đàn Ukulele Soprano size 02 của Piano Lovers được làm từ gỗ ép nguyên tấm, âm thanh hay. ', 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (18, N'U03-OL', N'https://images.pexels.com/photos/3944101/pexels-photo-3944101.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 180.0000, 12, N'Phiên b?n SPEM18', N'Đàn Ukulele Soprano size 03 của Piano Lovers được làm từ gỗ ép nguyên tấm, âm thanh hay. ', 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (19, N'U04-OL', N'https://cf.shopee.vn/file/0248a26fa783306d0fdfeb6b062ae523', 240.0000, 2, N'PhiÃªn b?n SPEM19', N'asdfghklj;kj vfjdfv', 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (20, N'U05-OL', N'https://images.pexels.com/photos/3975591/pexels-photo-3975591.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 160.0000, 12, N'Phiên b?n SPEM20', N'Đàn Ukulele Soprano size 05 của Piano Lovers được làm từ gỗ ép nguyên tấm, âm thanh hay. ', 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (21, N'U06-OL', N'https://images.pexels.com/photos/346728/pexels-photo-346728.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 190.0000, 12, N'Phiên b?n SPEM21', N' Đàn Ukulele Soprano size 06 của Piano Lovers được làm từ gỗ ép nguyên tấm, âm thanh hay.', 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (22, N'U07-OL', N'https://images.pexels.com/photos/4243879/pexels-photo-4243879.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500', 110.0000, 12, N'Phiên b?n SPEM22', N'Đàn Ukulele Soprano size 07 của Piano Lovers được làm từ gỗ ép nguyên tấm, âm thanh hay.', 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (23, N'U08-OL', N'https://images.pexels.com/photos/3975587/pexels-photo-3975587.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260', 150.0000, 12, N'Phiên b?n SPEM23', N'Size Sprano nhỏ gọn, mặt đàn màu gỗ thông, hông và lưng màu đỏ hồng  Đàn Ukulele Soprano size 08 của Piano Lovers được làm từ gỗ ép nguyên tấm, âm thanh hay.', 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (24, N'P01-DL', N'https://cf.shopee.vn/file/208b82b7d2ee4bd8163474c0bc568ecd', 500.0000, 12, N'Phiên b?n SPEM24', N'- Dây đeo đàn guitar này cần phải gắn chốt đeo, 2 chốt ở cần đàn và dưới đáy thùng giúp đeo dây chắc chắn.- Vải mềm đeo êm vai với độ dài phù hợp- Chất liệu : Vải Polyester- Xuất xứ : Đài Loan- Phân loại: Đa dạng mẫu cho các bạn lựa chọn thoải mái', 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (25, N'P02-DL', N'https://nhaccutienmanh.vn/wp-content/uploads/2019/10/day-deo-guitar-daddario-pws100-44mm-black-avt.jpg', 100.0000, 12, N'Phiên b?n SPEM25', N'Dây đeo đàn guitar màu trơn( đen/ nâu, xám) : là loại thường, chất liệu vải dù 2 lớp rất bền, dòng này cho các bạn thích 1 màu, có bọc da 1 đầu', 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (26, N'P03-DL', N'http://nhaccuvanxuan.vn/wp-content/uploads/2015/12/day-deo-dan-fender.jpg', 300.0000, 12, N'Phiên b?n SPEM26', N'Dây đeo đàn guitar nhiều màu: chất liệu vải xịn, đan 3 lớp dày, đẹp hơn dây đeo màu trơn, nhiều họa tiết tinh tế phù hợp với sở thích mỗi bạn.', 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (27, N'P04-DL', N'https://guitar.station.vn/wp-content/uploads/2017/02/day-deo-ukulele-1.png', 900.0000, 12, N'Phiên b?n SPEM27', N'Size: 88-146/5.2cm( dài/ rộng- chiều dài có thể thay đổi phù hợp với người chơi', 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (28, N'P05-DL', N'https://cf.shopee.vn/file/8e85ad02e3eaf74e23aae4d195a23d67', 200.0000, 12, N'Phiên b?n SPEM28', N'Dây đeo ukulele thổ cẩm kiểu mới, không cần đục đàn, có chốt móc trực tiếp cực tiện lợi', 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (29, N'P06-DL', N'https://vietthuonghanoi.com/wp-content/uploads/2017/11/d-addario-50-a12-1-600x600.jpg', 990.0000, 12, N'Phiên b?n SPEM29', N'Chất liệu dây mềm mại, không bị chà sát hay gây ngứa cổ như các loại dây thường khác.', 4)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (31, N'Đàn Ukulele Soprano 21inch Đỏ', N'https://pianonet.vn/image/cache/catalog/san-pham/Ukulele/%C4%90%C3%A0n%20Ukulele%20Soprano%2021inch%20(Nhi%E1%BB%81u%20M%C3%A0u%20Tr%C6%A1n)/%C4%90%C3%A0n%20Ukulele%20Soprano%2021inch%20%C4%90%E1%BB%8F-600x600.jpg', 400.0000, 2, N'phien ban nhe', N'Ưu điểm nhẹ nhỏ gọn, thiết kế vô cùng xinh xắn chắc chắn đây là sự lựa chọn cho các bạn nữ dễ thương, khi muốn tập chơi guitar nhưng khó làm quen thì uluku là bệ phóng luyện tập tuyệt vời đó nhé.', 3)
INSERT [dbo].[product] ([id], [name], [image], [price], [quantity], [title], [description], [cid]) VALUES (32, N'duoi don', N'https://vietthuongshop.vn/image/catalog/01-tu-van/phu-kien/2019/cac-phu-kien-kem-theo-khi-mua-dan-guitar-1.jpg', 240.0000, 3, N'phiên bản đắt tiền', N'Phụ kiện khi chơi đàn guitar nó có cần thiết hay không? Tất nhiên là có.  Bạn thử nghĩ xem nếu không có những phụ kiện bổ trợ thì làm sao bạn có thể mang đàn guitar của mình đi mọi nơi để biểu diễn. Vì thế, khi mua đàn guitar nhiều người thường tham khảo và chọn thêm một vài phụ kiện cần thiết để chơi đàn', 4)
GO
SET IDENTITY_INSERT [dbo].[Record] ON 

INSERT [dbo].[Record] ([id], [content], [cid]) VALUES (1, N'qua la dep luon', 1)
INSERT [dbo].[Record] ([id], [content], [cid]) VALUES (2, N'qua troi cung dep luon', 2)
SET IDENTITY_INSERT [dbo].[Record] OFF
GO
SET IDENTITY_INSERT [dbo].[Shipping] ON 

INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (4, N'trinh xuan thu truong', N'0904785350', N'ngõ 07, xã Hoằng Sơn, huyện Hoằng Hóa, tỉnh Thanh Hóa')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (5, N'trinh xuan truong tu men', N'0904785350', N'ngõ 07, xã Hoằng Sơn, huyện Hoằng Hóa, tỉnh Thanh Hóa')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (6, N'Trịnh Xuân Trường', N'0904785350', N'ngõ 07, xã Hoằng Sơn, huyện Hoằng Hóa, tỉnh Thanh Hóa')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (7, N'Trịnh Xuân Trường', N'0904785350', N'ngõ 07, xã Hoằng Sơn, huyện Hoằng Hóa, tỉnh Thanh Hóa')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (8, N'trinh duong', N'012345678', N'ngõ 07, xã Hoằng Sơn, huyện Hoằng Hóa, tỉnh Thanh Hóa')
INSERT [dbo].[Shipping] ([id], [name], [phone], [address]) VALUES (9, N'Trịnh Xuân Trường', N'0904785350', N'ngõ 07, xã Hoằng Sơn, huyện Hoằng Hóa, tỉnh Thanh Hóa')
SET IDENTITY_INSERT [dbo].[Shipping] OFF
GO
ALTER TABLE [dbo].[comment] ADD  CONSTRAINT [DF_comment_create_date]  DEFAULT (getdate()) FOR [create_date]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__order__30F848ED] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__order__30F848ED]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__account___2F10007B] FOREIGN KEY([account_id])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__account___2F10007B]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__shipping__300424B4] FOREIGN KEY([shipping_id])
REFERENCES [dbo].[Shipping] ([id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__shipping__300424B4]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK__product__cid__267ABA7A] FOREIGN KEY([cid])
REFERENCES [dbo].[category] ([cid])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK__product__cid__267ABA7A]
GO
