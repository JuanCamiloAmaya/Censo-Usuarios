USE [master]
GO
/****** Object:  Database [Censo]    Script Date: 14/01/2020 1:23:37 p. m. ******/
CREATE DATABASE [Censo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Censo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Censo.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Censo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Censo_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Censo] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Censo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Censo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Censo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Censo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Censo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Censo] SET ARITHABORT OFF 
GO
ALTER DATABASE [Censo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Censo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Censo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Censo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Censo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Censo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Censo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Censo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Censo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Censo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Censo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Censo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Censo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Censo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Censo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Censo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Censo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Censo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Censo] SET  MULTI_USER 
GO
ALTER DATABASE [Censo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Censo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Censo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Censo] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Censo] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Censo]
GO
/****** Object:  Table [dbo].[USUARIOS]    Script Date: 14/01/2020 1:23:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USUARIOS](
	[CEDULA] [varchar](50) NULL,
	[NOMBRES] [varchar](50) NULL,
	[APELLIDOS] [varchar](50) NULL,
	[DIRECCION] [varchar](50) NULL,
	[BARRIO] [varchar](50) NULL,
	[ESTRATO] [varchar](10) NULL,
	[CIUDAD] [varchar](50) NULL,
	[DEPARTAMENTO] [varchar](50) NULL,
	[TELEFONO] [varchar](50) NULL,
	[CELULAR] [varchar](50) NULL,
	[CORREO] [varchar](50) NULL,
	[OBSERVACION] [varchar](50) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PREDIO] [varchar](50) NULL,
	[FECHA] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[USUARIOS] ON 

INSERT [dbo].[USUARIOS] ([CEDULA], [NOMBRES], [APELLIDOS], [DIRECCION], [BARRIO], [ESTRATO], [CIUDAD], [DEPARTAMENTO], [TELEFONO], [CELULAR], [CORREO], [OBSERVACION], [Id], [PREDIO], [FECHA]) VALUES (N'1007192039', N'JUAN CAMILO ', N'AMAYA HERNANDEZ', N'CALLE 19 #17-20', N'SAN VICENTE', N'2', N'SANTA ROSA DE CABAL', N'RISARALDA', N'3655228', N'302397344', N'JCAMAYA00@GMAIL.COM', N'CUMPLIDO', 1, N'Propietario', CAST(N'2020-01-14 09:26:00.000' AS DateTime))
INSERT [dbo].[USUARIOS] ([CEDULA], [NOMBRES], [APELLIDOS], [DIRECCION], [BARRIO], [ESTRATO], [CIUDAD], [DEPARTAMENTO], [TELEFONO], [CELULAR], [CORREO], [OBSERVACION], [Id], [PREDIO], [FECHA]) VALUES (N'25170715', N'PEPITO', N'PEREZ', N'ENCUENTRELA', N'BUSQUELO', N'3', N'DOSQUEBRADAS', N'RISARALDA', N'34567876', N'345678765', N'PEPITO@GMAIL.COM', N'RESPONSABLE', 2, N'Propietario', CAST(N'2020-01-14 09:46:10.937' AS DateTime))
INSERT [dbo].[USUARIOS] ([CEDULA], [NOMBRES], [APELLIDOS], [DIRECCION], [BARRIO], [ESTRATO], [CIUDAD], [DEPARTAMENTO], [TELEFONO], [CELULAR], [CORREO], [OBSERVACION], [Id], [PREDIO], [FECHA]) VALUES (N'124123', N'sebastian', N'amaya', N'calle 20', N'san jose', N'4', N'pereira', N'risaralda', N'213412321', N'341232123', N'sebas@gmail.com', N'no se encontro', 3, N'Arrendatario', CAST(N'2020-01-14 09:48:34.167' AS DateTime))
INSERT [dbo].[USUARIOS] ([CEDULA], [NOMBRES], [APELLIDOS], [DIRECCION], [BARRIO], [ESTRATO], [CIUDAD], [DEPARTAMENTO], [TELEFONO], [CELULAR], [CORREO], [OBSERVACION], [Id], [PREDIO], [FECHA]) VALUES (N'23435345', N'rosalia', N'asdafafs', N'sadasdas', N'sadasdas', N'5', N'sadasdas', N'sadasdas', N'1243534534', N'2353432423', N'asdasdsda', N'sadasdas', 4, NULL, NULL)
INSERT [dbo].[USUARIOS] ([CEDULA], [NOMBRES], [APELLIDOS], [DIRECCION], [BARRIO], [ESTRATO], [CIUDAD], [DEPARTAMENTO], [TELEFONO], [CELULAR], [CORREO], [OBSERVACION], [Id], [PREDIO], [FECHA]) VALUES (N'3456789', N'prueba', N'prueba', N'prueba', N'prueba', N'3', N'prueba', N'prueba', N'2345664', N'65432', N'prueba', N'prueba', 5, NULL, NULL)
INSERT [dbo].[USUARIOS] ([CEDULA], [NOMBRES], [APELLIDOS], [DIRECCION], [BARRIO], [ESTRATO], [CIUDAD], [DEPARTAMENTO], [TELEFONO], [CELULAR], [CORREO], [OBSERVACION], [Id], [PREDIO], [FECHA]) VALUES (N'2345678', N'nuevo', N'nuevo', N'nuevo', N'nuevo', N'4', N'nuevo', N'nuevo', N'234567', N'56789', N'nuevo', N'nuevo', 6, NULL, NULL)
INSERT [dbo].[USUARIOS] ([CEDULA], [NOMBRES], [APELLIDOS], [DIRECCION], [BARRIO], [ESTRATO], [CIUDAD], [DEPARTAMENTO], [TELEFONO], [CELULAR], [CORREO], [OBSERVACION], [Id], [PREDIO], [FECHA]) VALUES (N'324234', N'pepe', N'pepe', N'pepe', N'pepe', N'3', N'pepe', N'pepe', N'345678', N'65432', N'pepe', N'pepe', 7, NULL, NULL)
SET IDENTITY_INSERT [dbo].[USUARIOS] OFF
/****** Object:  StoredProcedure [dbo].[BuscarUsuarios]    Script Date: 14/01/2020 1:23:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BuscarUsuarios] 
	-- Add the parameters for the stored procedure here
	@cedula varchar (50)
AS
BEGIN
SELECT * FROM USUARIOS WHERE CEDULA=@cedula
END

GO
/****** Object:  StoredProcedure [dbo].[EditarUsuarios]    Script Date: 14/01/2020 1:23:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[EditarUsuarios]
 @cedula varchar(50),
 @nombres varchar(50),
 @apellidos varchar(50),
 @direccion varchar(50),
 @barrio varchar(50),
 @estrato varchar(10),
 @ciudad varchar(50),
 @departamento varchar(50),
 @telefono varchar(50),
 @celular varchar(50),
 @correo varchar(50),
 @observacion varchar(50),
 @predio varchar(50),
 @fecha datetime ,
 @id int
 as
 UPDATE USUARIOS SET CEDULA=@cedula, NOMBRES=@nombres, APELLIDOS=@apellidos, DIRECCION=@direccion, BARRIO=@barrio, ESTRATO=@estrato, CIUDAD=@ciudad,
 DEPARTAMENTO=@departamento, TELEFONO=@telefono, CELULAR=@celular, CORREO=@correo, OBSERVACION=@observacion, PREDIO=@predio, FECHA=@fecha
 WHERE Id=@id
GO
/****** Object:  StoredProcedure [dbo].[EliminarUsuarios]    Script Date: 14/01/2020 1:23:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[EliminarUsuarios]
 @id int
 as
 DELETE FROM USUARIOS WHERE Id=@id
GO
/****** Object:  StoredProcedure [dbo].[InsertarUsuarios]    Script Date: 14/01/2020 1:23:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[InsertarUsuarios]
(
 @cedula varchar(50),
 @nombres varchar(50),
 @apellidos varchar(50),
 @direccion varchar(50),
 @barrio varchar(50),
 @estrato varchar(10),
 @ciudad varchar(50),
 @departamento varchar(50),
 @telefono varchar(50),
 @celular varchar(50),
 @correo varchar(50),
 @observacion varchar(50),
 @predio varchar(50),
 @fecha datetime

)
as
begin
 insert into USUARIOS([CEDULA], [NOMBRES], [APELLIDOS], [DIRECCION], [BARRIO], [ESTRATO], [CIUDAD], [DEPARTAMENTO], [TELEFONO], [CELULAR], [CORREO], [OBSERVACION], [PREDIO], [FECHA] )values (@cedula, @nombres, @apellidos, @direccion, @barrio, @estrato, @ciudad, @departamento, @telefono, @celular, @correo, @observacion, @predio, @fecha)
end
GO
/****** Object:  StoredProcedure [dbo].[MostrarUsuarios]    Script Date: 14/01/2020 1:23:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[MostrarUsuarios]
as
select *from USUARIOS

GO
USE [master]
GO
ALTER DATABASE [Censo] SET  READ_WRITE 
GO
