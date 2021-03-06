USE [master]
GO
/****** Object:  Database [QLPhongKham]    Script Date: 12/13/2018 9:24:43 PM ******/
CREATE DATABASE [QLPhongKham]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLPhongKham', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QLPhongKham.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLPhongKham_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QLPhongKham_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLPhongKham] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLPhongKham].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLPhongKham] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLPhongKham] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLPhongKham] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLPhongKham] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLPhongKham] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLPhongKham] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLPhongKham] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QLPhongKham] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLPhongKham] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLPhongKham] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLPhongKham] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLPhongKham] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLPhongKham] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLPhongKham] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLPhongKham] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLPhongKham] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLPhongKham] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLPhongKham] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLPhongKham] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLPhongKham] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLPhongKham] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLPhongKham] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLPhongKham] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLPhongKham] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLPhongKham] SET  MULTI_USER 
GO
ALTER DATABASE [QLPhongKham] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLPhongKham] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLPhongKham] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLPhongKham] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QLPhongKham]
GO
/****** Object:  Table [dbo].[Benh]    Script Date: 12/13/2018 9:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Benh](
	[maBenh] [varchar](20) NOT NULL,
	[tenBenh] [nvarchar](50) NULL,
	[moTa] [nvarchar](255) NULL,
 CONSTRAINT [PK_Benh] PRIMARY KEY CLUSTERED 
(
	[maBenh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/13/2018 9:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maHK] [varchar](20) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[sdt] [varchar](15) NULL,
	[diaChi] [nvarchar](50) NULL,
	[ngaySinh] [date] NULL,
	[gioiTinh] [nvarchar](10) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[maHK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LichSuTiemPhong]    Script Date: 12/13/2018 9:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LichSuTiemPhong](
	[maKH] [varchar](20) NOT NULL,
	[maVacxin] [varchar](20) NOT NULL,
	[STTMui] [int] NOT NULL,
	[ngayTiemPhong] [date] NULL,
	[ngayHenTiepTheo] [date] NULL,
 CONSTRAINT [PK_LichSuTiemPhong] PRIMARY KEY CLUSTERED 
(
	[maKH] ASC,
	[maVacxin] ASC,
	[STTMui] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhongBenh]    Script Date: 12/13/2018 9:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhongBenh](
	[maVacxin] [varchar](20) NOT NULL,
	[maBenh] [varchar](20) NOT NULL,
	[ghiChu] [nvarchar](255) NULL,
 CONSTRAINT [PK_PhongBenh] PRIMARY KEY CLUSTERED 
(
	[maVacxin] ASC,
	[maBenh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VacXin]    Script Date: 12/13/2018 9:24:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VacXin](
	[maVacxin] [varchar](20) NOT NULL,
	[tenVacxin] [nvarchar](50) NULL,
	[soMui] [int] NULL,
	[moTa] [nvarchar](255) NULL,
	[gia] [int] NULL,
	[tenHangSX] [nvarchar](50) NULL,
 CONSTRAINT [PK_VacXin] PRIMARY KEY CLUSTERED 
(
	[maVacxin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Benh] ([maBenh], [tenBenh], [moTa]) VALUES (N'B01', N'Xì ke', N'Bệnh nan y')
INSERT [dbo].[Benh] ([maBenh], [tenBenh], [moTa]) VALUES (N'B02', N'HIV', N'Bệnh khó chửa')
INSERT [dbo].[Benh] ([maBenh], [tenBenh], [moTa]) VALUES (N'B03', N'Bê đê', N'Y học bó tay')
INSERT [dbo].[Benh] ([maBenh], [tenBenh], [moTa]) VALUES (N'B04', N'Xi da hột gà', N'Ăn nhiều hột gà')
INSERT [dbo].[Benh] ([maBenh], [tenBenh], [moTa]) VALUES (N'B05', N'fghfgfgjfgjjfdj', N'fjhgjdgjfhjhjdfh')
INSERT [dbo].[KhachHang] ([maHK], [hoten], [sdt], [diaChi], [ngaySinh], [gioiTinh]) VALUES (N'KH01', N'Khách Hàng 1', N'123456789', N'Houston, Texas', CAST(0xFC230B00 AS Date), N'Nam')
INSERT [dbo].[KhachHang] ([maHK], [hoten], [sdt], [diaChi], [ngaySinh], [gioiTinh]) VALUES (N'KH02', N'Khách Hàng 2', N'234567890', N'Dallas, Texas', CAST(0xD4230B00 AS Date), N'Nam')
INSERT [dbo].[KhachHang] ([maHK], [hoten], [sdt], [diaChi], [ngaySinh], [gioiTinh]) VALUES (N'KH03', N'Khách Hàng 3', N'345678901', N'Atlanta, Georgia', CAST(0x33220B00 AS Date), N'Nữ')
INSERT [dbo].[KhachHang] ([maHK], [hoten], [sdt], [diaChi], [ngaySinh], [gioiTinh]) VALUES (N'KH04', N'Khách Hàng 4', N'456789012', N'Chicago, Ilinois', CAST(0x46240B00 AS Date), N'Nam')
INSERT [dbo].[LichSuTiemPhong] ([maKH], [maVacxin], [STTMui], [ngayTiemPhong], [ngayHenTiepTheo]) VALUES (N'KH01', N'V01', 1, CAST(0x523E0B00 AS Date), CAST(0x713E0B00 AS Date))
INSERT [dbo].[LichSuTiemPhong] ([maKH], [maVacxin], [STTMui], [ngayTiemPhong], [ngayHenTiepTheo]) VALUES (N'KH02', N'V02', 2, CAST(0xB63D0B00 AS Date), CAST(0xD63D0B00 AS Date))
INSERT [dbo].[LichSuTiemPhong] ([maKH], [maVacxin], [STTMui], [ngayTiemPhong], [ngayHenTiepTheo]) VALUES (N'KH03', N'V03', 3, CAST(0xD63D0B00 AS Date), CAST(0xF33D0B00 AS Date))
INSERT [dbo].[LichSuTiemPhong] ([maKH], [maVacxin], [STTMui], [ngayTiemPhong], [ngayHenTiepTheo]) VALUES (N'KH04', N'V04', 4, CAST(0xF33D0B00 AS Date), CAST(0x133E0B00 AS Date))
INSERT [dbo].[PhongBenh] ([maVacxin], [maBenh], [ghiChu]) VALUES (N'V01', N'B01', N'Ko có')
INSERT [dbo].[PhongBenh] ([maVacxin], [maBenh], [ghiChu]) VALUES (N'V02', N'B02', N'Ko có')
INSERT [dbo].[PhongBenh] ([maVacxin], [maBenh], [ghiChu]) VALUES (N'V03', N'B03', N'Ko có')
INSERT [dbo].[PhongBenh] ([maVacxin], [maBenh], [ghiChu]) VALUES (N'V04', N'B04', N'Ko có')
INSERT [dbo].[VacXin] ([maVacxin], [tenVacxin], [soMui], [moTa], [gia], [tenHangSX]) VALUES (N'V01', N'Vacxin 1', 1, N'Vacxin này dc sản xuất tại Miami, tiểu bang Florida', 150000, N'Florida')
INSERT [dbo].[VacXin] ([maVacxin], [tenVacxin], [soMui], [moTa], [gia], [tenHangSX]) VALUES (N'V02', N'Vacxin 2', 2, N'Vacxin này của công ti Philadelphia, tiểu bang Pennsylvania', 180000, N'Pennsylvania')
INSERT [dbo].[VacXin] ([maVacxin], [tenVacxin], [soMui], [moTa], [gia], [tenHangSX]) VALUES (N'V03', N'Vacxin 3', 3, N'Sản phẩm này dc sản xuất tại Seattle, tiểu bang Washington', 140000, N'Washington')
INSERT [dbo].[VacXin] ([maVacxin], [tenVacxin], [soMui], [moTa], [gia], [tenHangSX]) VALUES (N'V04', N'Vacxin 4', 4, N'Sản xuất tại New Jersey', 210000, N'New Jersey')
ALTER TABLE [dbo].[LichSuTiemPhong]  WITH CHECK ADD  CONSTRAINT [FK_LichSuTiemPhong_KhachHang1] FOREIGN KEY([maKH])
REFERENCES [dbo].[KhachHang] ([maHK])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichSuTiemPhong] CHECK CONSTRAINT [FK_LichSuTiemPhong_KhachHang1]
GO
ALTER TABLE [dbo].[LichSuTiemPhong]  WITH CHECK ADD  CONSTRAINT [FK_LichSuTiemPhong_VacXin1] FOREIGN KEY([maVacxin])
REFERENCES [dbo].[VacXin] ([maVacxin])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LichSuTiemPhong] CHECK CONSTRAINT [FK_LichSuTiemPhong_VacXin1]
GO
ALTER TABLE [dbo].[PhongBenh]  WITH CHECK ADD  CONSTRAINT [FK_PhongBenh_Benh1] FOREIGN KEY([maBenh])
REFERENCES [dbo].[Benh] ([maBenh])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhongBenh] CHECK CONSTRAINT [FK_PhongBenh_Benh1]
GO
ALTER TABLE [dbo].[PhongBenh]  WITH CHECK ADD  CONSTRAINT [FK_PhongBenh_VacXin1] FOREIGN KEY([maVacxin])
REFERENCES [dbo].[VacXin] ([maVacxin])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhongBenh] CHECK CONSTRAINT [FK_PhongBenh_VacXin1]
GO
USE [master]
GO
ALTER DATABASE [QLPhongKham] SET  READ_WRITE 
GO
