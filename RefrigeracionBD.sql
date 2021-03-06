USE [master]
GO
/****** Nombre: Franklin Bautista Ceballos  Matricula: 16-MIIN-1-132 Sección: 0541 ******/


/****** Nombre: Brigui E. Felix Soto        Matricula: 16-MIIN-1-160 Sección: 0541 ******/


/****** Nombre: Jeremi Garcia Valenzuela    Matricula: 16-MIIN-1-120 Sección: 0541 ******/

CREATE DATABASE [RefrigeracionBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RefrigeracionBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\RefrigeracionBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RefrigeracionBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\RefrigeracionBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [RefrigeracionBD] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RefrigeracionBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RefrigeracionBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RefrigeracionBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RefrigeracionBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RefrigeracionBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RefrigeracionBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [RefrigeracionBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RefrigeracionBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RefrigeracionBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RefrigeracionBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RefrigeracionBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RefrigeracionBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RefrigeracionBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RefrigeracionBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RefrigeracionBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RefrigeracionBD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RefrigeracionBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RefrigeracionBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RefrigeracionBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RefrigeracionBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RefrigeracionBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RefrigeracionBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RefrigeracionBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RefrigeracionBD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [RefrigeracionBD] SET  MULTI_USER 
GO
ALTER DATABASE [RefrigeracionBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RefrigeracionBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RefrigeracionBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RefrigeracionBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RefrigeracionBD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RefrigeracionBD] SET QUERY_STORE = OFF
GO
USE [RefrigeracionBD]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [RefrigeracionBD]
GO
/****** Object:  Table [dbo].[Articulo]    Script Date: 4/12/2017 11:38:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulo](
	[CodigoArticulo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Fabricante] [int] NULL,
	[Precio] [int] NULL,
	[Costo] [int] NULL,
 CONSTRAINT [PK_Articulo] PRIMARY KEY CLUSTERED 
(
	[CodigoArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 4/12/2017 11:38:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[CodigoCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Articulo] [int] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[CodigoCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fabricante]    Script Date: 4/12/2017 11:38:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fabricante](
	[CodigoFabricante] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
 CONSTRAINT [PK_Fabricante] PRIMARY KEY CLUSTERED 
(
	[CodigoFabricante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Articulo] ON 

INSERT [dbo].[Articulo] ([CodigoArticulo], [Nombre], [Fabricante], [Precio], [Costo]) VALUES (1, N'Capasitor', 1, 300, 225)
INSERT [dbo].[Articulo] ([CodigoArticulo], [Nombre], [Fabricante], [Precio], [Costo]) VALUES (2, N'Compresor', 2, 2000, 1200)
INSERT [dbo].[Articulo] ([CodigoArticulo], [Nombre], [Fabricante], [Precio], [Costo]) VALUES (3, N'Gas 134.A', 3, 150, 75)
INSERT [dbo].[Articulo] ([CodigoArticulo], [Nombre], [Fabricante], [Precio], [Costo]) VALUES (4, N'Valvula', 4, 25, 15)
INSERT [dbo].[Articulo] ([CodigoArticulo], [Nombre], [Fabricante], [Precio], [Costo]) VALUES (5, N'Adaptador', 5, 175, 100)
INSERT [dbo].[Articulo] ([CodigoArticulo], [Nombre], [Fabricante], [Precio], [Costo]) VALUES (6, N'Varilla de plata', 6, 25, 18)
INSERT [dbo].[Articulo] ([CodigoArticulo], [Nombre], [Fabricante], [Precio], [Costo]) VALUES (7, N'Contactor', 7, 250, 200)
INSERT [dbo].[Articulo] ([CodigoArticulo], [Nombre], [Fabricante], [Precio], [Costo]) VALUES (8, N'Termostato', 8, 200, 125)
INSERT [dbo].[Articulo] ([CodigoArticulo], [Nombre], [Fabricante], [Precio], [Costo]) VALUES (9, N'Termodisco', 9, 100, 60)
INSERT [dbo].[Articulo] ([CodigoArticulo], [Nombre], [Fabricante], [Precio], [Costo]) VALUES (10, N'Cemento', 10, 450, 350)
SET IDENTITY_INSERT [dbo].[Articulo] OFF
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([CodigoCliente], [Nombre], [Articulo]) VALUES (1, N'Maria Torres', 1)
INSERT [dbo].[Cliente] ([CodigoCliente], [Nombre], [Articulo]) VALUES (2, N'Ramona Juarez', 2)
INSERT [dbo].[Cliente] ([CodigoCliente], [Nombre], [Articulo]) VALUES (3, N'Juan Garcia', 3)
INSERT [dbo].[Cliente] ([CodigoCliente], [Nombre], [Articulo]) VALUES (4, N'Orquidea Jimenez', 4)
INSERT [dbo].[Cliente] ([CodigoCliente], [Nombre], [Articulo]) VALUES (5, N'Lucas Soriano', 5)
INSERT [dbo].[Cliente] ([CodigoCliente], [Nombre], [Articulo]) VALUES (6, N'Franco Parra', 6)
INSERT [dbo].[Cliente] ([CodigoCliente], [Nombre], [Articulo]) VALUES (7, N'Julian Marero', 7)
INSERT [dbo].[Cliente] ([CodigoCliente], [Nombre], [Articulo]) VALUES (8, N'Pedro Hiciano ', 8)
INSERT [dbo].[Cliente] ([CodigoCliente], [Nombre], [Articulo]) VALUES (9, N'Petra Caraballo', 9)
INSERT [dbo].[Cliente] ([CodigoCliente], [Nombre], [Articulo]) VALUES (10, N'Luchy Martinez', 10)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
SET IDENTITY_INSERT [dbo].[Fabricante] ON 

INSERT [dbo].[Fabricante] ([CodigoFabricante], [Nombre]) VALUES (1, N'Spura')
INSERT [dbo].[Fabricante] ([CodigoFabricante], [Nombre]) VALUES (2, N'Armath')
INSERT [dbo].[Fabricante] ([CodigoFabricante], [Nombre]) VALUES (3, N'Sudecon')
INSERT [dbo].[Fabricante] ([CodigoFabricante], [Nombre]) VALUES (4, N'Centro metrolico')
INSERT [dbo].[Fabricante] ([CodigoFabricante], [Nombre]) VALUES (5, N'Howden B.F')
INSERT [dbo].[Fabricante] ([CodigoFabricante], [Nombre]) VALUES (6, N'Dosivac')
INSERT [dbo].[Fabricante] ([CodigoFabricante], [Nombre]) VALUES (7, N'Galaxie S.G')
INSERT [dbo].[Fabricante] ([CodigoFabricante], [Nombre]) VALUES (8, N'Carbotecnica')
INSERT [dbo].[Fabricante] ([CodigoFabricante], [Nombre]) VALUES (9, N'Asestec-Pro')
INSERT [dbo].[Fabricante] ([CodigoFabricante], [Nombre]) VALUES (10, N'ABQuim')
SET IDENTITY_INSERT [dbo].[Fabricante] OFF
ALTER TABLE [dbo].[Articulo]  WITH CHECK ADD  CONSTRAINT [FK_Articulo_Fabricante] FOREIGN KEY([Fabricante])
REFERENCES [dbo].[Fabricante] ([CodigoFabricante])
GO
ALTER TABLE [dbo].[Articulo] CHECK CONSTRAINT [FK_Articulo_Fabricante]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Articulo] FOREIGN KEY([Articulo])
REFERENCES [dbo].[Articulo] ([CodigoArticulo])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Articulo]
GO
USE [master]
GO
ALTER DATABASE [RefrigeracionBD] SET  READ_WRITE 
GO
