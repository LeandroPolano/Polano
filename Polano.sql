USE [master]
GO
/****** Object:  Database [Polano]    Script Date: 02/08/2021 22:17:54 ******/
CREATE DATABASE [Polano]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Polano', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Polano.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Polano_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Polano_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Polano] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Polano].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Polano] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Polano] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Polano] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Polano] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Polano] SET ARITHABORT OFF 
GO
ALTER DATABASE [Polano] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Polano] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Polano] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Polano] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Polano] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Polano] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Polano] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Polano] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Polano] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Polano] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Polano] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Polano] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Polano] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Polano] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Polano] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Polano] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Polano] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Polano] SET RECOVERY FULL 
GO
ALTER DATABASE [Polano] SET  MULTI_USER 
GO
ALTER DATABASE [Polano] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Polano] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Polano] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Polano] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Polano] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Polano', N'ON'
GO
ALTER DATABASE [Polano] SET QUERY_STORE = OFF
GO
USE [Polano]
GO
/****** Object:  Table [dbo].[CantidadesMiel]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CantidadesMiel](
	[CantidadMielID] [int] IDENTITY(1,1) NOT NULL,
	[CantidadMiel] [numeric](18, 2) NULL,
 CONSTRAINT [PK_CantidadMiel] PRIMARY KEY CLUSTERED 
(
	[CantidadMielID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Capacidades]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Capacidades](
	[CapacidadID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Capacidad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Capacidades] PRIMARY KEY CLUSTERED 
(
	[CapacidadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudades]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudades](
	[CiudadID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Ciudad] [nvarchar](70) NULL,
	[ProvinciaID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Ciudades] PRIMARY KEY CLUSTERED 
(
	[CiudadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientesDeMiel]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientesDeMiel](
	[ClienteID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[RazonSocial] [nvarchar](50) NULL,
	[Direccion] [nvarchar](50) NULL,
	[CiudadID] [numeric](18, 0) NULL,
	[CPostal] [numeric](18, 0) NULL,
	[Telefono] [numeric](18, 0) NULL,
	[Email] [nvarchar](50) NULL,
	[TipoDocumentoID] [numeric](18, 0) NULL,
	[NumeroDocumento] [numeric](18, 0) NULL,
 CONSTRAINT [PK_ClientesDeMiel] PRIMARY KEY CLUSTERED 
(
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ColmenaColmenares]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ColmenaColmenares](
	[ColmenaID] [numeric](18, 0) NOT NULL,
	[ColmenarID] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_ColmenaColmenares] PRIMARY KEY CLUSTERED 
(
	[ColmenaID] ASC,
	[ColmenarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colmenares]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colmenares](
	[ColmenarID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[NombreColmenar] [nvarchar](50) NULL,
	[CiudadID] [numeric](18, 0) NULL,
	[CantidadColmena] [numeric](18, 0) NULL,
	[EstadoColmenaID] [numeric](18, 0) NULL,
	[InsumoID] [numeric](18, 0) NULL,
	[CantidadInsumo] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[ColmenarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colmenas]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colmenas](
	[ColmenaID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[ClaveColmena] [nvarchar](50) NULL,
 CONSTRAINT [PK_Colmenas] PRIMARY KEY CLUSTERED 
(
	[ColmenaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[CompraID] [int] IDENTITY(1,1) NOT NULL,
	[ProveedorID] [numeric](18, 0) NULL,
	[Fecha] [datetime] NULL,
	[Total] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Compras] PRIMARY KEY CLUSTERED 
(
	[CompraID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComprasInsumos]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComprasInsumos](
	[CompraID] [int] NOT NULL,
	[InsumoID] [numeric](18, 0) NOT NULL,
	[Cantidad] [int] NULL,
	[PrecioUnitario] [numeric](18, 2) NULL,
 CONSTRAINT [PK_ComprasInsumos] PRIMARY KEY CLUSTERED 
(
	[CompraID] ASC,
	[InsumoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosColmenas]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosColmenas](
	[EstadoColmenaID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[EstadoColmena] [nvarchar](50) NULL,
 CONSTRAINT [PK_EstadosColmenas] PRIMARY KEY CLUSTERED 
(
	[EstadoColmenaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Insumos]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Insumos](
	[InsumoID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Insumo] [nvarchar](50) NULL,
	[ProveedorID] [numeric](18, 0) NULL,
	[Cantidad] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Insumos] PRIMARY KEY CLUSTERED 
(
	[InsumoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marcas]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marcas](
	[MarcaID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Marca] [nvarchar](50) NULL,
 CONSTRAINT [PK_Marcas] PRIMARY KEY CLUSTERED 
(
	[MarcaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mieles]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mieles](
	[MielID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Miel] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Miel] PRIMARY KEY CLUSTERED 
(
	[MielID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[PaisID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Pais] [nvarchar](70) NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[PaisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductoID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[TipoProductoID] [numeric](18, 0) NOT NULL,
	[MarcaID] [numeric](18, 0) NOT NULL,
	[Stock] [numeric](18, 0) NOT NULL,
	[Producto] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[ProductoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductosDeProveedores]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductosDeProveedores](
	[ProductoId] [numeric](18, 0) NULL,
	[ProveedorID] [numeric](18, 0) NULL,
	[Precio] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[ProveedorID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Cuit] [numeric](18, 0) NULL,
	[RazonSocial] [nvarchar](70) NULL,
	[Direccion] [nvarchar](50) NULL,
	[CiudadID] [numeric](18, 0) NULL,
	[CPostal] [numeric](18, 0) NULL,
	[Telefono] [numeric](18, 0) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[ProveedorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincias](
	[ProvinciaID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Provincia] [nvarchar](70) NULL,
	[PaisID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Provincias] PRIMARY KEY CLUSTERED 
(
	[ProvinciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposDeProductos]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposDeProductos](
	[TipoProductoId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[TipoProducto] [nvarchar](70) NULL,
 CONSTRAINT [PK_TiposDeProductos] PRIMARY KEY CLUSTERED 
(
	[TipoProductoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposDocumentos]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposDocumentos](
	[TipoDocumentoID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[TipoDocumento] [nvarchar](50) NULL,
 CONSTRAINT [PK_TiposDocumentos_1] PRIMARY KEY CLUSTERED 
(
	[TipoDocumentoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposEnvases]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposEnvases](
	[TipoEnvaseID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[TipoEnvase] [nvarchar](50) NULL,
	[CapacidadID] [numeric](18, 0) NULL,
 CONSTRAINT [PK_TiposDeEnvases] PRIMARY KEY CLUSTERED 
(
	[TipoEnvaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[VentaID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[ClienteID] [numeric](18, 0) NULL,
	[Total] [numeric](18, 0) NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_VentasDeMiel] PRIMARY KEY CLUSTERED 
(
	[VentaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VentasProductos]    Script Date: 02/08/2021 22:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VentasProductos](
	[VentaID] [numeric](18, 0) NOT NULL,
	[Cantidad] [numeric](18, 0) NULL,
	[TipoEnvaseID] [numeric](18, 0) NULL,
	[Precio] [numeric](18, 0) NULL,
 CONSTRAINT [PK_VentasProductos_1] PRIMARY KEY CLUSTERED 
(
	[VentaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CantidadesMiel] ON 

INSERT [dbo].[CantidadesMiel] ([CantidadMielID], [CantidadMiel]) VALUES (1, CAST(273.00 AS Numeric(18, 2)))
SET IDENTITY_INSERT [dbo].[CantidadesMiel] OFF
SET IDENTITY_INSERT [dbo].[Capacidades] ON 

INSERT [dbo].[Capacidades] ([CapacidadID], [Capacidad]) VALUES (CAST(5 AS Numeric(18, 0)), N'1')
INSERT [dbo].[Capacidades] ([CapacidadID], [Capacidad]) VALUES (CAST(7 AS Numeric(18, 0)), N'5')
INSERT [dbo].[Capacidades] ([CapacidadID], [Capacidad]) VALUES (CAST(8 AS Numeric(18, 0)), N'10')
INSERT [dbo].[Capacidades] ([CapacidadID], [Capacidad]) VALUES (CAST(9 AS Numeric(18, 0)), N'400')
SET IDENTITY_INSERT [dbo].[Capacidades] OFF
SET IDENTITY_INSERT [dbo].[Ciudades] ON 

INSERT [dbo].[Ciudades] ([CiudadID], [Ciudad], [ProvinciaID]) VALUES (CAST(3 AS Numeric(18, 0)), N'Lobos', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Ciudades] ([CiudadID], [Ciudad], [ProvinciaID]) VALUES (CAST(5 AS Numeric(18, 0)), N'Monte', CAST(1 AS Numeric(18, 0)))
INSERT [dbo].[Ciudades] ([CiudadID], [Ciudad], [ProvinciaID]) VALUES (CAST(6 AS Numeric(18, 0)), N'Navarro', CAST(1 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[Ciudades] OFF
SET IDENTITY_INSERT [dbo].[ClientesDeMiel] ON 

INSERT [dbo].[ClientesDeMiel] ([ClienteID], [RazonSocial], [Direccion], [CiudadID], [CPostal], [Telefono], [Email], [TipoDocumentoID], [NumeroDocumento]) VALUES (CAST(1 AS Numeric(18, 0)), N'Leandro Polan', N'575 salvador mari', CAST(3 AS Numeric(18, 0)), CAST(7241 AS Numeric(18, 0)), CAST(222756389 AS Numeric(18, 0)), N'LeandroPolano@gmail.co', CAST(2 AS Numeric(18, 0)), CAST(4330330 AS Numeric(18, 0)))
INSERT [dbo].[ClientesDeMiel] ([ClienteID], [RazonSocial], [Direccion], [CiudadID], [CPostal], [Telefono], [Email], [TipoDocumentoID], [NumeroDocumento]) VALUES (CAST(4 AS Numeric(18, 0)), N'Bahiano Paoletti', N'Calle 5', CAST(3 AS Numeric(18, 0)), CAST(7242 AS Numeric(18, 0)), CAST(555555555 AS Numeric(18, 0)), N'bahi@g,com', CAST(2 AS Numeric(18, 0)), CAST(5151515151 AS Numeric(18, 0)))
INSERT [dbo].[ClientesDeMiel] ([ClienteID], [RazonSocial], [Direccion], [CiudadID], [CPostal], [Telefono], [Email], [TipoDocumentoID], [NumeroDocumento]) VALUES (CAST(5 AS Numeric(18, 0)), N'Alejo Polano', N'458 Salvador Maria', CAST(3 AS Numeric(18, 0)), CAST(7242 AS Numeric(18, 0)), CAST(555202351 AS Numeric(18, 0)), N'Alejo@gmail.com', CAST(2 AS Numeric(18, 0)), CAST(42252135 AS Numeric(18, 0)))
INSERT [dbo].[ClientesDeMiel] ([ClienteID], [RazonSocial], [Direccion], [CiudadID], [CPostal], [Telefono], [Email], [TipoDocumentoID], [NumeroDocumento]) VALUES (CAST(6 AS Numeric(18, 0)), N'Gonzalo Misciagna', N'545 Laguna de lobos', CAST(5 AS Numeric(18, 0)), CAST(7240 AS Numeric(18, 0)), CAST(2225487625 AS Numeric(18, 0)), N'Gonza@gmail.com', CAST(2 AS Numeric(18, 0)), CAST(4446551235 AS Numeric(18, 0)))
INSERT [dbo].[ClientesDeMiel] ([ClienteID], [RazonSocial], [Direccion], [CiudadID], [CPostal], [Telefono], [Email], [TipoDocumentoID], [NumeroDocumento]) VALUES (CAST(7 AS Numeric(18, 0)), N'Jorge Perez', N'Calle 5 430 Lobos', CAST(3 AS Numeric(18, 0)), CAST(7551 AS Numeric(18, 0)), CAST(545622841 AS Numeric(18, 0)), N'dddd@gmail.com', CAST(2 AS Numeric(18, 0)), CAST(5444423 AS Numeric(18, 0)))
INSERT [dbo].[ClientesDeMiel] ([ClienteID], [RazonSocial], [Direccion], [CiudadID], [CPostal], [Telefono], [Email], [TipoDocumentoID], [NumeroDocumento]) VALUES (CAST(8 AS Numeric(18, 0)), N'Gaston Polano', N'575 Salvador Maria', CAST(3 AS Numeric(18, 0)), CAST(7241 AS Numeric(18, 0)), CAST(2227568484 AS Numeric(18, 0)), N'Gaston@gmail.com', CAST(2 AS Numeric(18, 0)), CAST(405402354 AS Numeric(18, 0)))
INSERT [dbo].[ClientesDeMiel] ([ClienteID], [RazonSocial], [Direccion], [CiudadID], [CPostal], [Telefono], [Email], [TipoDocumentoID], [NumeroDocumento]) VALUES (CAST(9 AS Numeric(18, 0)), N'Ivana Brun', N'575 Salvador Maria', CAST(3 AS Numeric(18, 0)), CAST(7241 AS Numeric(18, 0)), CAST(2227568425 AS Numeric(18, 0)), N'Ivana@gmail.com', CAST(2 AS Numeric(18, 0)), CAST(45658456 AS Numeric(18, 0)))
INSERT [dbo].[ClientesDeMiel] ([ClienteID], [RazonSocial], [Direccion], [CiudadID], [CPostal], [Telefono], [Email], [TipoDocumentoID], [NumeroDocumento]) VALUES (CAST(10 AS Numeric(18, 0)), N'Jose Lopez', N'898 Salvador Maria', CAST(3 AS Numeric(18, 0)), CAST(7241 AS Numeric(18, 0)), CAST(2227568474 AS Numeric(18, 0)), N'Jose@gmail.com', CAST(2 AS Numeric(18, 0)), CAST(3912642210 AS Numeric(18, 0)))
INSERT [dbo].[ClientesDeMiel] ([ClienteID], [RazonSocial], [Direccion], [CiudadID], [CPostal], [Telefono], [Email], [TipoDocumentoID], [NumeroDocumento]) VALUES (CAST(11 AS Numeric(18, 0)), N'Milagros Cabral', N'Calle 226 50 Lobos', CAST(3 AS Numeric(18, 0)), CAST(7242 AS Numeric(18, 0)), CAST(2227568545 AS Numeric(18, 0)), N'Milagros@gmail.com', CAST(2 AS Numeric(18, 0)), CAST(45654858 AS Numeric(18, 0)))
INSERT [dbo].[ClientesDeMiel] ([ClienteID], [RazonSocial], [Direccion], [CiudadID], [CPostal], [Telefono], [Email], [TipoDocumentoID], [NumeroDocumento]) VALUES (CAST(12 AS Numeric(18, 0)), N'Mario Rollo', N'Calle 225 200 Lobos', CAST(3 AS Numeric(18, 0)), CAST(7242 AS Numeric(18, 0)), CAST(2225146525 AS Numeric(18, 0)), N'Mario@gmail.com', CAST(2 AS Numeric(18, 0)), CAST(4525864232 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[ClientesDeMiel] OFF
SET IDENTITY_INSERT [dbo].[Colmenares] ON 

INSERT [dbo].[Colmenares] ([ColmenarID], [NombreColmenar], [CiudadID], [CantidadColmena], [EstadoColmenaID], [InsumoID], [CantidadInsumo]) VALUES (CAST(13 AS Numeric(18, 0)), N'Marmo', CAST(3 AS Numeric(18, 0)), CAST(60 AS Numeric(18, 0)), CAST(10006 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[Colmenares] ([ColmenarID], [NombreColmenar], [CiudadID], [CantidadColmena], [EstadoColmenaID], [InsumoID], [CantidadInsumo]) VALUES (CAST(14 AS Numeric(18, 0)), N'Lopo Suerez', CAST(6 AS Numeric(18, 0)), CAST(60 AS Numeric(18, 0)), CAST(10009 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[Colmenares] ([ColmenarID], [NombreColmenar], [CiudadID], [CantidadColmena], [EstadoColmenaID], [InsumoID], [CantidadInsumo]) VALUES (CAST(15 AS Numeric(18, 0)), N'Sipi Liñez', CAST(6 AS Numeric(18, 0)), CAST(60 AS Numeric(18, 0)), CAST(10007 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[Colmenares] ([ColmenarID], [NombreColmenar], [CiudadID], [CantidadColmena], [EstadoColmenaID], [InsumoID], [CantidadInsumo]) VALUES (CAST(10013 AS Numeric(18, 0)), N'dwadsd', CAST(5 AS Numeric(18, 0)), CAST(23333 AS Numeric(18, 0)), CAST(10004 AS Numeric(18, 0)), CAST(8 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[Colmenares] ([ColmenarID], [NombreColmenar], [CiudadID], [CantidadColmena], [EstadoColmenaID], [InsumoID], [CantidadInsumo]) VALUES (CAST(10015 AS Numeric(18, 0)), N'P.Col', CAST(3 AS Numeric(18, 0)), CAST(233 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)))
INSERT [dbo].[Colmenares] ([ColmenarID], [NombreColmenar], [CiudadID], [CantidadColmena], [EstadoColmenaID], [InsumoID], [CantidadInsumo]) VALUES (CAST(10016 AS Numeric(18, 0)), N'LORZ', CAST(5 AS Numeric(18, 0)), CAST(30 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[Colmenares] OFF
SET IDENTITY_INSERT [dbo].[Colmenas] ON 

INSERT [dbo].[Colmenas] ([ColmenaID], [ClaveColmena]) VALUES (CAST(9 AS Numeric(18, 0)), N'Efh414')
SET IDENTITY_INSERT [dbo].[Colmenas] OFF
SET IDENTITY_INSERT [dbo].[Compras] ON 

INSERT [dbo].[Compras] ([CompraID], [ProveedorID], [Fecha], [Total]) VALUES (2, CAST(3 AS Numeric(18, 0)), CAST(N'2021-07-24T19:56:35.483' AS DateTime), CAST(1560.00 AS Numeric(18, 2)))
INSERT [dbo].[Compras] ([CompraID], [ProveedorID], [Fecha], [Total]) VALUES (3, CAST(3 AS Numeric(18, 0)), CAST(N'2021-07-24T19:57:22.917' AS DateTime), CAST(500.00 AS Numeric(18, 2)))
INSERT [dbo].[Compras] ([CompraID], [ProveedorID], [Fecha], [Total]) VALUES (4, CAST(3 AS Numeric(18, 0)), CAST(N'2021-07-24T20:16:27.883' AS DateTime), CAST(5390.00 AS Numeric(18, 2)))
INSERT [dbo].[Compras] ([CompraID], [ProveedorID], [Fecha], [Total]) VALUES (5, CAST(1 AS Numeric(18, 0)), CAST(N'2021-07-24T20:17:16.300' AS DateTime), CAST(22.00 AS Numeric(18, 2)))
INSERT [dbo].[Compras] ([CompraID], [ProveedorID], [Fecha], [Total]) VALUES (6, CAST(1 AS Numeric(18, 0)), CAST(N'2021-07-24T20:17:59.863' AS DateTime), CAST(50.00 AS Numeric(18, 2)))
INSERT [dbo].[Compras] ([CompraID], [ProveedorID], [Fecha], [Total]) VALUES (7, CAST(3 AS Numeric(18, 0)), CAST(N'2021-07-24T20:33:02.100' AS DateTime), CAST(1000.00 AS Numeric(18, 2)))
SET IDENTITY_INSERT [dbo].[Compras] OFF
INSERT [dbo].[ComprasInsumos] ([CompraID], [InsumoID], [Cantidad], [PrecioUnitario]) VALUES (2, CAST(6 AS Numeric(18, 0)), 52, CAST(10.00 AS Numeric(18, 2)))
INSERT [dbo].[ComprasInsumos] ([CompraID], [InsumoID], [Cantidad], [PrecioUnitario]) VALUES (3, CAST(6 AS Numeric(18, 0)), 50, CAST(10.00 AS Numeric(18, 2)))
INSERT [dbo].[ComprasInsumos] ([CompraID], [InsumoID], [Cantidad], [PrecioUnitario]) VALUES (4, CAST(7 AS Numeric(18, 0)), 22, CAST(22.00 AS Numeric(18, 2)))
INSERT [dbo].[ComprasInsumos] ([CompraID], [InsumoID], [Cantidad], [PrecioUnitario]) VALUES (5, CAST(7 AS Numeric(18, 0)), 22, CAST(1.00 AS Numeric(18, 2)))
INSERT [dbo].[ComprasInsumos] ([CompraID], [InsumoID], [Cantidad], [PrecioUnitario]) VALUES (6, CAST(7 AS Numeric(18, 0)), 5, CAST(10.00 AS Numeric(18, 2)))
INSERT [dbo].[ComprasInsumos] ([CompraID], [InsumoID], [Cantidad], [PrecioUnitario]) VALUES (7, CAST(1 AS Numeric(18, 0)), 50, CAST(20.00 AS Numeric(18, 2)))
SET IDENTITY_INSERT [dbo].[EstadosColmenas] ON 

INSERT [dbo].[EstadosColmenas] ([EstadoColmenaID], [EstadoColmena]) VALUES (CAST(2 AS Numeric(18, 0)), N'Hambre')
INSERT [dbo].[EstadosColmenas] ([EstadoColmenaID], [EstadoColmena]) VALUES (CAST(3 AS Numeric(18, 0)), N'Fumigacion')
INSERT [dbo].[EstadosColmenas] ([EstadoColmenaID], [EstadoColmena]) VALUES (CAST(10004 AS Numeric(18, 0)), N'Barroa')
INSERT [dbo].[EstadosColmenas] ([EstadoColmenaID], [EstadoColmena]) VALUES (CAST(10006 AS Numeric(18, 0)), N'Inundacion')
INSERT [dbo].[EstadosColmenas] ([EstadoColmenaID], [EstadoColmena]) VALUES (CAST(10007 AS Numeric(18, 0)), N'Muerte Natural')
INSERT [dbo].[EstadosColmenas] ([EstadoColmenaID], [EstadoColmena]) VALUES (CAST(10008 AS Numeric(18, 0)), N'Desastre Natural')
INSERT [dbo].[EstadosColmenas] ([EstadoColmenaID], [EstadoColmena]) VALUES (CAST(10009 AS Numeric(18, 0)), N'Exeso De Calor')
SET IDENTITY_INSERT [dbo].[EstadosColmenas] OFF
SET IDENTITY_INSERT [dbo].[Insumos] ON 

INSERT [dbo].[Insumos] ([InsumoID], [Insumo], [ProveedorID], [Cantidad]) VALUES (CAST(1 AS Numeric(18, 0)), N'Alimento PROC', CAST(1 AS Numeric(18, 0)), CAST(50 AS Numeric(18, 0)))
INSERT [dbo].[Insumos] ([InsumoID], [Insumo], [ProveedorID], [Cantidad]) VALUES (CAST(6 AS Numeric(18, 0)), N'RocoPec', CAST(3 AS Numeric(18, 0)), CAST(260 AS Numeric(18, 0)))
INSERT [dbo].[Insumos] ([InsumoID], [Insumo], [ProveedorID], [Cantidad]) VALUES (CAST(7 AS Numeric(18, 0)), N'LozoMiel', CAST(5 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)))
INSERT [dbo].[Insumos] ([InsumoID], [Insumo], [ProveedorID], [Cantidad]) VALUES (CAST(8 AS Numeric(18, 0)), N'MielBuco', CAST(3 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)))
INSERT [dbo].[Insumos] ([InsumoID], [Insumo], [ProveedorID], [Cantidad]) VALUES (CAST(9 AS Numeric(18, 0)), N'SocoLicotomiel', CAST(4 AS Numeric(18, 0)), CAST(275 AS Numeric(18, 0)))
INSERT [dbo].[Insumos] ([InsumoID], [Insumo], [ProveedorID], [Cantidad]) VALUES (CAST(10 AS Numeric(18, 0)), N'Roperaloide', CAST(5 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)))
INSERT [dbo].[Insumos] ([InsumoID], [Insumo], [ProveedorID], [Cantidad]) VALUES (CAST(11 AS Numeric(18, 0)), N'SaperoCas', CAST(5 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)))
INSERT [dbo].[Insumos] ([InsumoID], [Insumo], [ProveedorID], [Cantidad]) VALUES (CAST(12 AS Numeric(18, 0)), N'MorgarMiel', CAST(1 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)))
INSERT [dbo].[Insumos] ([InsumoID], [Insumo], [ProveedorID], [Cantidad]) VALUES (CAST(13 AS Numeric(18, 0)), N'SargoMiel', CAST(4 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)))
INSERT [dbo].[Insumos] ([InsumoID], [Insumo], [ProveedorID], [Cantidad]) VALUES (CAST(14 AS Numeric(18, 0)), N'NectarTotal', CAST(4 AS Numeric(18, 0)), CAST(300 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[Insumos] OFF
SET IDENTITY_INSERT [dbo].[Marcas] ON 

INSERT [dbo].[Marcas] ([MarcaID], [Marca]) VALUES (CAST(9 AS Numeric(18, 0)), N'Honey')
INSERT [dbo].[Marcas] ([MarcaID], [Marca]) VALUES (CAST(10 AS Numeric(18, 0)), N'Barroali')
INSERT [dbo].[Marcas] ([MarcaID], [Marca]) VALUES (CAST(11 AS Numeric(18, 0)), N'Plonix')
INSERT [dbo].[Marcas] ([MarcaID], [Marca]) VALUES (CAST(10012 AS Numeric(18, 0)), N'MielMAX')
SET IDENTITY_INSERT [dbo].[Marcas] OFF
SET IDENTITY_INSERT [dbo].[Paises] ON 

INSERT [dbo].[Paises] ([PaisID], [Pais]) VALUES (CAST(3 AS Numeric(18, 0)), N'Argentina')
INSERT [dbo].[Paises] ([PaisID], [Pais]) VALUES (CAST(4 AS Numeric(18, 0)), N'Chile')
INSERT [dbo].[Paises] ([PaisID], [Pais]) VALUES (CAST(6 AS Numeric(18, 0)), N'Estados Unidos')
SET IDENTITY_INSERT [dbo].[Paises] OFF
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([ProductoID], [TipoProductoID], [MarcaID], [Stock], [Producto]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(11 AS Numeric(18, 0)), CAST(10 AS Numeric(18, 0)), CAST(60 AS Numeric(18, 0)), N'Amibarroa')
INSERT [dbo].[Productos] ([ProductoID], [TipoProductoID], [MarcaID], [Stock], [Producto]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(9 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), N'Glucosa')
INSERT [dbo].[Productos] ([ProductoID], [TipoProductoID], [MarcaID], [Stock], [Producto]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(13 AS Numeric(18, 0)), CAST(10012 AS Numeric(18, 0)), CAST(52 AS Numeric(18, 0)), N'MielMax')
SET IDENTITY_INSERT [dbo].[Productos] OFF
SET IDENTITY_INSERT [dbo].[Proveedores] ON 

INSERT [dbo].[Proveedores] ([ProveedorID], [Cuit], [RazonSocial], [Direccion], [CiudadID], [CPostal], [Telefono], [Email]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(123456 AS Numeric(18, 0)), N'Leandro Polano', N'21 dddd', CAST(3 AS Numeric(18, 0)), CAST(7040 AS Numeric(18, 0)), CAST(22222222 AS Numeric(18, 0)), N'dddddd')
INSERT [dbo].[Proveedores] ([ProveedorID], [Cuit], [RazonSocial], [Direccion], [CiudadID], [CPostal], [Telefono], [Email]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(2025214685 AS Numeric(18, 0)), N'Jose Perez', N'Calle 20 565 ', CAST(3 AS Numeric(18, 0)), CAST(7241 AS Numeric(18, 0)), CAST(2227568457 AS Numeric(18, 0)), N'Jose@gmail.com')
INSERT [dbo].[Proveedores] ([ProveedorID], [Cuit], [RazonSocial], [Direccion], [CiudadID], [CPostal], [Telefono], [Email]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(224576584 AS Numeric(18, 0)), N'Pedro Paez', N'Calle 50 45 ', CAST(5 AS Numeric(18, 0)), CAST(7240 AS Numeric(18, 0)), CAST(22275684895 AS Numeric(18, 0)), N'Pedro@gmail.com')
INSERT [dbo].[Proveedores] ([ProveedorID], [Cuit], [RazonSocial], [Direccion], [CiudadID], [CPostal], [Telefono], [Email]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(20321546845 AS Numeric(18, 0)), N'Rodrigo Loto', N'Calle rivadavia 570 50', CAST(3 AS Numeric(18, 0)), CAST(7241 AS Numeric(18, 0)), CAST(320254813515 AS Numeric(18, 0)), N'Rodrigo@gmail.com')
SET IDENTITY_INSERT [dbo].[Proveedores] OFF
SET IDENTITY_INSERT [dbo].[Provincias] ON 

INSERT [dbo].[Provincias] ([ProvinciaID], [Provincia], [PaisID]) VALUES (CAST(1 AS Numeric(18, 0)), N'BuenosAires', CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Provincias] ([ProvinciaID], [Provincia], [PaisID]) VALUES (CAST(11 AS Numeric(18, 0)), N'Cordoba', CAST(3 AS Numeric(18, 0)))
INSERT [dbo].[Provincias] ([ProvinciaID], [Provincia], [PaisID]) VALUES (CAST(13 AS Numeric(18, 0)), N'Jujuy', CAST(3 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[Provincias] OFF
SET IDENTITY_INSERT [dbo].[TiposDeProductos] ON 

INSERT [dbo].[TiposDeProductos] ([TipoProductoId], [TipoProducto]) VALUES (CAST(11 AS Numeric(18, 0)), N'VenenoParaPlaga')
INSERT [dbo].[TiposDeProductos] ([TipoProductoId], [TipoProducto]) VALUES (CAST(12 AS Numeric(18, 0)), N'Remedio')
INSERT [dbo].[TiposDeProductos] ([TipoProductoId], [TipoProducto]) VALUES (CAST(13 AS Numeric(18, 0)), N'Alimento')
SET IDENTITY_INSERT [dbo].[TiposDeProductos] OFF
SET IDENTITY_INSERT [dbo].[TiposDocumentos] ON 

INSERT [dbo].[TiposDocumentos] ([TipoDocumentoID], [TipoDocumento]) VALUES (CAST(2 AS Numeric(18, 0)), N'DNI')
INSERT [dbo].[TiposDocumentos] ([TipoDocumentoID], [TipoDocumento]) VALUES (CAST(9 AS Numeric(18, 0)), N'Libreta')
INSERT [dbo].[TiposDocumentos] ([TipoDocumentoID], [TipoDocumento]) VALUES (CAST(10 AS Numeric(18, 0)), N'Carnet')
INSERT [dbo].[TiposDocumentos] ([TipoDocumentoID], [TipoDocumento]) VALUES (CAST(11 AS Numeric(18, 0)), N'Pasaporte')
SET IDENTITY_INSERT [dbo].[TiposDocumentos] OFF
SET IDENTITY_INSERT [dbo].[TiposEnvases] ON 

INSERT [dbo].[TiposEnvases] ([TipoEnvaseID], [TipoEnvase], [CapacidadID]) VALUES (CAST(3 AS Numeric(18, 0)), N'Pote', CAST(5 AS Numeric(18, 0)))
INSERT [dbo].[TiposEnvases] ([TipoEnvaseID], [TipoEnvase], [CapacidadID]) VALUES (CAST(4 AS Numeric(18, 0)), N'Tarro', CAST(7 AS Numeric(18, 0)))
INSERT [dbo].[TiposEnvases] ([TipoEnvaseID], [TipoEnvase], [CapacidadID]) VALUES (CAST(5 AS Numeric(18, 0)), N'Tarro Grande', CAST(8 AS Numeric(18, 0)))
INSERT [dbo].[TiposEnvases] ([TipoEnvaseID], [TipoEnvase], [CapacidadID]) VALUES (CAST(6 AS Numeric(18, 0)), N'Tambor', CAST(9 AS Numeric(18, 0)))
SET IDENTITY_INSERT [dbo].[TiposEnvases] OFF
SET IDENTITY_INSERT [dbo].[Ventas] ON 

INSERT [dbo].[Ventas] ([VentaID], [ClienteID], [Total], [Fecha]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(900 AS Numeric(18, 0)), CAST(N'2020-11-28T19:35:39.330' AS DateTime))
INSERT [dbo].[Ventas] ([VentaID], [ClienteID], [Total], [Fecha]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(1000 AS Numeric(18, 0)), CAST(N'2021-02-10T20:19:20.630' AS DateTime))
INSERT [dbo].[Ventas] ([VentaID], [ClienteID], [Total], [Fecha]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(1000 AS Numeric(18, 0)), CAST(N'2021-02-16T17:43:46.150' AS DateTime))
INSERT [dbo].[Ventas] ([VentaID], [ClienteID], [Total], [Fecha]) VALUES (CAST(8 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(1200 AS Numeric(18, 0)), CAST(N'2021-02-16T17:44:31.230' AS DateTime))
INSERT [dbo].[Ventas] ([VentaID], [ClienteID], [Total], [Fecha]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(7 AS Numeric(18, 0)), CAST(52000 AS Numeric(18, 0)), CAST(N'2021-02-16T17:45:52.373' AS DateTime))
INSERT [dbo].[Ventas] ([VentaID], [ClienteID], [Total], [Fecha]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(2000 AS Numeric(18, 0)), CAST(N'2021-02-16T17:51:12.797' AS DateTime))
INSERT [dbo].[Ventas] ([VentaID], [ClienteID], [Total], [Fecha]) VALUES (CAST(11 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(999 AS Numeric(18, 0)), CAST(N'2021-02-16T17:53:43.077' AS DateTime))
INSERT [dbo].[Ventas] ([VentaID], [ClienteID], [Total], [Fecha]) VALUES (CAST(12 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(999 AS Numeric(18, 0)), CAST(N'2021-02-16T17:57:51.827' AS DateTime))
INSERT [dbo].[Ventas] ([VentaID], [ClienteID], [Total], [Fecha]) VALUES (CAST(13 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(15000 AS Numeric(18, 0)), CAST(N'2021-02-16T18:05:33.827' AS DateTime))
INSERT [dbo].[Ventas] ([VentaID], [ClienteID], [Total], [Fecha]) VALUES (CAST(14 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(10000 AS Numeric(18, 0)), CAST(N'2021-02-16T18:08:14.503' AS DateTime))
INSERT [dbo].[Ventas] ([VentaID], [ClienteID], [Total], [Fecha]) VALUES (CAST(15 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(444 AS Numeric(18, 0)), CAST(N'2021-02-16T18:09:43.597' AS DateTime))
INSERT [dbo].[Ventas] ([VentaID], [ClienteID], [Total], [Fecha]) VALUES (CAST(16 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(444 AS Numeric(18, 0)), CAST(N'2021-02-16T18:10:33.133' AS DateTime))
INSERT [dbo].[Ventas] ([VentaID], [ClienteID], [Total], [Fecha]) VALUES (CAST(17 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(N'2021-08-02T15:14:23.957' AS DateTime))
INSERT [dbo].[Ventas] ([VentaID], [ClienteID], [Total], [Fecha]) VALUES (CAST(18 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(N'2021-08-02T15:24:15.383' AS DateTime))
INSERT [dbo].[Ventas] ([VentaID], [ClienteID], [Total], [Fecha]) VALUES (CAST(19 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(64 AS Numeric(18, 0)), CAST(N'2021-08-02T20:32:18.577' AS DateTime))
INSERT [dbo].[Ventas] ([VentaID], [ClienteID], [Total], [Fecha]) VALUES (CAST(20 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(980000 AS Numeric(18, 0)), CAST(N'2021-08-02T20:34:52.963' AS DateTime))
INSERT [dbo].[Ventas] ([VentaID], [ClienteID], [Total], [Fecha]) VALUES (CAST(21 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(222 AS Numeric(18, 0)), CAST(N'2021-08-02T20:35:44.460' AS DateTime))
INSERT [dbo].[Ventas] ([VentaID], [ClienteID], [Total], [Fecha]) VALUES (CAST(22 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(55 AS Numeric(18, 0)), CAST(N'2021-08-02T21:13:05.487' AS DateTime))
INSERT [dbo].[Ventas] ([VentaID], [ClienteID], [Total], [Fecha]) VALUES (CAST(23 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(N'2021-08-02T21:36:01.413' AS DateTime))
INSERT [dbo].[Ventas] ([VentaID], [ClienteID], [Total], [Fecha]) VALUES (CAST(24 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(N'2021-08-02T21:36:52.473' AS DateTime))
INSERT [dbo].[Ventas] ([VentaID], [ClienteID], [Total], [Fecha]) VALUES (CAST(25 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(0 AS Numeric(18, 0)), CAST(N'2021-08-02T21:39:18.940' AS DateTime))
INSERT [dbo].[Ventas] ([VentaID], [ClienteID], [Total], [Fecha]) VALUES (CAST(26 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(25 AS Numeric(18, 0)), CAST(N'2021-08-02T21:40:14.293' AS DateTime))
SET IDENTITY_INSERT [dbo].[Ventas] OFF
INSERT [dbo].[VentasProductos] ([VentaID], [Cantidad], [TipoEnvaseID], [Precio]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(100 AS Numeric(18, 0)))
INSERT [dbo].[VentasProductos] ([VentaID], [Cantidad], [TipoEnvaseID], [Precio]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(200 AS Numeric(18, 0)))
INSERT [dbo].[VentasProductos] ([VentaID], [Cantidad], [TipoEnvaseID], [Precio]) VALUES (CAST(16 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), CAST(222 AS Numeric(18, 0)))
INSERT [dbo].[VentasProductos] ([VentaID], [Cantidad], [TipoEnvaseID], [Precio]) VALUES (CAST(19 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(32 AS Numeric(18, 0)))
INSERT [dbo].[VentasProductos] ([VentaID], [Cantidad], [TipoEnvaseID], [Precio]) VALUES (CAST(20 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(98000 AS Numeric(18, 0)))
INSERT [dbo].[VentasProductos] ([VentaID], [Cantidad], [TipoEnvaseID], [Precio]) VALUES (CAST(21 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(111 AS Numeric(18, 0)))
INSERT [dbo].[VentasProductos] ([VentaID], [Cantidad], [TipoEnvaseID], [Precio]) VALUES (CAST(22 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), CAST(6 AS Numeric(18, 0)), CAST(55 AS Numeric(18, 0)))
INSERT [dbo].[VentasProductos] ([VentaID], [Cantidad], [TipoEnvaseID], [Precio]) VALUES (CAST(26 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), CAST(5 AS Numeric(18, 0)))
ALTER TABLE [dbo].[Ciudades] ADD  CONSTRAINT [DF_Ciudades_Ciudad]  DEFAULT ('') FOR [Ciudad]
GO
ALTER TABLE [dbo].[Ciudades]  WITH CHECK ADD  CONSTRAINT [FK_Ciudades_Provincias] FOREIGN KEY([ProvinciaID])
REFERENCES [dbo].[Provincias] ([ProvinciaID])
GO
ALTER TABLE [dbo].[Ciudades] CHECK CONSTRAINT [FK_Ciudades_Provincias]
GO
ALTER TABLE [dbo].[ClientesDeMiel]  WITH CHECK ADD  CONSTRAINT [FK_ClientesDeMiel_Ciudades] FOREIGN KEY([CiudadID])
REFERENCES [dbo].[Ciudades] ([CiudadID])
GO
ALTER TABLE [dbo].[ClientesDeMiel] CHECK CONSTRAINT [FK_ClientesDeMiel_Ciudades]
GO
ALTER TABLE [dbo].[ClientesDeMiel]  WITH CHECK ADD  CONSTRAINT [FK_ClientesDeMiel_TiposDocumentos] FOREIGN KEY([TipoDocumentoID])
REFERENCES [dbo].[TiposDocumentos] ([TipoDocumentoID])
GO
ALTER TABLE [dbo].[ClientesDeMiel] CHECK CONSTRAINT [FK_ClientesDeMiel_TiposDocumentos]
GO
ALTER TABLE [dbo].[ColmenaColmenares]  WITH CHECK ADD  CONSTRAINT [FK_ColmenaColmenares_Colmenares] FOREIGN KEY([ColmenarID])
REFERENCES [dbo].[Colmenares] ([ColmenarID])
GO
ALTER TABLE [dbo].[ColmenaColmenares] CHECK CONSTRAINT [FK_ColmenaColmenares_Colmenares]
GO
ALTER TABLE [dbo].[ColmenaColmenares]  WITH CHECK ADD  CONSTRAINT [FK_ColmenaColmenares_Colmenas] FOREIGN KEY([ColmenaID])
REFERENCES [dbo].[Colmenas] ([ColmenaID])
GO
ALTER TABLE [dbo].[ColmenaColmenares] CHECK CONSTRAINT [FK_ColmenaColmenares_Colmenas]
GO
ALTER TABLE [dbo].[Colmenares]  WITH CHECK ADD  CONSTRAINT [FK_Colmenares_Ciudades] FOREIGN KEY([CiudadID])
REFERENCES [dbo].[Ciudades] ([CiudadID])
GO
ALTER TABLE [dbo].[Colmenares] CHECK CONSTRAINT [FK_Colmenares_Ciudades]
GO
ALTER TABLE [dbo].[Colmenares]  WITH CHECK ADD  CONSTRAINT [FK_Colmenares_EstadosColmenas] FOREIGN KEY([EstadoColmenaID])
REFERENCES [dbo].[EstadosColmenas] ([EstadoColmenaID])
GO
ALTER TABLE [dbo].[Colmenares] CHECK CONSTRAINT [FK_Colmenares_EstadosColmenas]
GO
ALTER TABLE [dbo].[Colmenares]  WITH CHECK ADD  CONSTRAINT [FK_Colmenares_Insumos] FOREIGN KEY([InsumoID])
REFERENCES [dbo].[Insumos] ([InsumoID])
GO
ALTER TABLE [dbo].[Colmenares] CHECK CONSTRAINT [FK_Colmenares_Insumos]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Proveedores] FOREIGN KEY([ProveedorID])
REFERENCES [dbo].[Proveedores] ([ProveedorID])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Proveedores]
GO
ALTER TABLE [dbo].[ComprasInsumos]  WITH CHECK ADD  CONSTRAINT [FK_ComprasInsumos_Compras] FOREIGN KEY([CompraID])
REFERENCES [dbo].[Compras] ([CompraID])
GO
ALTER TABLE [dbo].[ComprasInsumos] CHECK CONSTRAINT [FK_ComprasInsumos_Compras]
GO
ALTER TABLE [dbo].[ComprasInsumos]  WITH CHECK ADD  CONSTRAINT [FK_ComprasInsumos_Insumos] FOREIGN KEY([InsumoID])
REFERENCES [dbo].[Insumos] ([InsumoID])
GO
ALTER TABLE [dbo].[ComprasInsumos] CHECK CONSTRAINT [FK_ComprasInsumos_Insumos]
GO
ALTER TABLE [dbo].[Insumos]  WITH CHECK ADD  CONSTRAINT [FK_Insumos_Proveedores] FOREIGN KEY([ProveedorID])
REFERENCES [dbo].[Proveedores] ([ProveedorID])
GO
ALTER TABLE [dbo].[Insumos] CHECK CONSTRAINT [FK_Insumos_Proveedores]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Marcas] FOREIGN KEY([MarcaID])
REFERENCES [dbo].[Marcas] ([MarcaID])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Marcas]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_TiposDeProductos] FOREIGN KEY([TipoProductoID])
REFERENCES [dbo].[TiposDeProductos] ([TipoProductoId])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_TiposDeProductos]
GO
ALTER TABLE [dbo].[ProductosDeProveedores]  WITH CHECK ADD  CONSTRAINT [FK_ProductosDeProveedores_Productos] FOREIGN KEY([ProductoId])
REFERENCES [dbo].[Productos] ([ProductoID])
GO
ALTER TABLE [dbo].[ProductosDeProveedores] CHECK CONSTRAINT [FK_ProductosDeProveedores_Productos]
GO
ALTER TABLE [dbo].[ProductosDeProveedores]  WITH CHECK ADD  CONSTRAINT [FK_ProductosDeProveedores_Proveedores] FOREIGN KEY([ProveedorID])
REFERENCES [dbo].[Proveedores] ([ProveedorID])
GO
ALTER TABLE [dbo].[ProductosDeProveedores] CHECK CONSTRAINT [FK_ProductosDeProveedores_Proveedores]
GO
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_Proveedores_Ciudades] FOREIGN KEY([CiudadID])
REFERENCES [dbo].[Ciudades] ([CiudadID])
GO
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [FK_Proveedores_Ciudades]
GO
ALTER TABLE [dbo].[Provincias]  WITH CHECK ADD  CONSTRAINT [FK_Provincias_Paises] FOREIGN KEY([PaisID])
REFERENCES [dbo].[Paises] ([PaisID])
GO
ALTER TABLE [dbo].[Provincias] CHECK CONSTRAINT [FK_Provincias_Paises]
GO
ALTER TABLE [dbo].[TiposEnvases]  WITH CHECK ADD  CONSTRAINT [FK_TiposDeEnvases_Capacidades] FOREIGN KEY([CapacidadID])
REFERENCES [dbo].[Capacidades] ([CapacidadID])
GO
ALTER TABLE [dbo].[TiposEnvases] CHECK CONSTRAINT [FK_TiposDeEnvases_Capacidades]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_ClientesDeMiel] FOREIGN KEY([ClienteID])
REFERENCES [dbo].[ClientesDeMiel] ([ClienteID])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_ClientesDeMiel]
GO
ALTER TABLE [dbo].[VentasProductos]  WITH CHECK ADD  CONSTRAINT [FK_VentasProductos_TiposEnvases] FOREIGN KEY([TipoEnvaseID])
REFERENCES [dbo].[TiposEnvases] ([TipoEnvaseID])
GO
ALTER TABLE [dbo].[VentasProductos] CHECK CONSTRAINT [FK_VentasProductos_TiposEnvases]
GO
ALTER TABLE [dbo].[VentasProductos]  WITH CHECK ADD  CONSTRAINT [FK_VentasProductos_Ventas] FOREIGN KEY([VentaID])
REFERENCES [dbo].[Ventas] ([VentaID])
GO
ALTER TABLE [dbo].[VentasProductos] CHECK CONSTRAINT [FK_VentasProductos_Ventas]
GO
USE [master]
GO
ALTER DATABASE [Polano] SET  READ_WRITE 
GO
