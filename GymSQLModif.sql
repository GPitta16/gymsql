USE [master]
GO
/****** Object:  Database [Gym]    Script Date: 28/05/2024 07:23:36 p. m. ******/
CREATE DATABASE [Gym]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Gym', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Gym.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Gym_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Gym_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Gym] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Gym].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Gym] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Gym] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Gym] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Gym] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Gym] SET ARITHABORT OFF 
GO
ALTER DATABASE [Gym] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Gym] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Gym] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Gym] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Gym] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Gym] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Gym] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Gym] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Gym] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Gym] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Gym] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Gym] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Gym] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Gym] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Gym] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Gym] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Gym] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Gym] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Gym] SET  MULTI_USER 
GO
ALTER DATABASE [Gym] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Gym] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Gym] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Gym] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Gym] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Gym] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Gym] SET QUERY_STORE = ON
GO
ALTER DATABASE [Gym] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Gym]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 28/05/2024 07:23:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumnos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](40) NOT NULL,
	[Apellido] [varchar](40) NOT NULL,
	[Domicilio] [text] NULL,
	[Fecha_Nacimiento] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 28/05/2024 07:23:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[Fecha de rutina] [varchar](50) NOT NULL,
	[hora de ejercico] [varchar](50) NOT NULL,
	[Tiempo de rutina] [varchar](50) NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[Fecha de rutina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Institución]    Script Date: 28/05/2024 07:23:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Institución](
	[Id] [varchar](10) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Domicilio] [text] NULL,
 CONSTRAINT [PK_Identificador] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 28/05/2024 07:23:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[Id] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Direccion] [text] NULL,
	[Correo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo de ejercicio]    Script Date: 28/05/2024 07:23:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo de ejercicio](
	[Repeticion] [int] NOT NULL,
	[Tipo] [varchar](50) NOT NULL,
	[Maquina] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Alumnos] ON 

INSERT [dbo].[Alumnos] ([Id], [Nombre], [Apellido], [Domicilio], [Fecha_Nacimiento]) VALUES (1, N'Yair', N'Vazques Castro', N'Chapultepec', CAST(N'2004-01-04T00:00:00.000' AS DateTime))
INSERT [dbo].[Alumnos] ([Id], [Nombre], [Apellido], [Domicilio], [Fecha_Nacimiento]) VALUES (2, N'Bryham Gabriel', N'Pitta Alvarez', N'Valle alto', CAST(N'2004-12-16T00:00:00.000' AS DateTime))
INSERT [dbo].[Alumnos] ([Id], [Nombre], [Apellido], [Domicilio], [Fecha_Nacimiento]) VALUES (3, N'Irving', N'Trinidad Vazquez', N'Zona Norte', CAST(N'2004-08-20T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Alumnos] OFF
GO
INSERT [dbo].[Horario] ([Fecha de rutina], [hora de ejercico], [Tiempo de rutina]) VALUES (N'26/05/2024', N'15:03', N'2:20')
INSERT [dbo].[Horario] ([Fecha de rutina], [hora de ejercico], [Tiempo de rutina]) VALUES (N'27/05/2024', N'14:20', N'1:30')
INSERT [dbo].[Horario] ([Fecha de rutina], [hora de ejercico], [Tiempo de rutina]) VALUES (N'28/05/2024', N'14:30', N'2:00')
GO
INSERT [dbo].[Institución] ([Id], [Nombre], [Apellido], [Domicilio]) VALUES (N'1', N'Yair', N'Vasques Castro', N'Portales')
INSERT [dbo].[Institución] ([Id], [Nombre], [Apellido], [Domicilio]) VALUES (N'2', N'Irving', N'Trinidad Vazquez', N'Pass')
INSERT [dbo].[Institución] ([Id], [Nombre], [Apellido], [Domicilio]) VALUES (N'3', N'Bryham Gabriel', N'Pitta Alvarez', N'Pass')
GO
INSERT [dbo].[Instructor] ([Id], [Nombre], [Apellido], [Direccion], [Correo]) VALUES (N'226Z0190', N'Gabriel ', N'Pitta', N'aguila 12 Valle alto', N'brabry6@gmail.ocm')
GO
INSERT [dbo].[Tipo de ejercicio] ([Repeticion], [Tipo], [Maquina]) VALUES (8, N'Pecho', N'Press plano')
INSERT [dbo].[Tipo de ejercicio] ([Repeticion], [Tipo], [Maquina]) VALUES (8, N'Pecho', N'Press Inclinado')
INSERT [dbo].[Tipo de ejercicio] ([Repeticion], [Tipo], [Maquina]) VALUES (8, N'Pecho', N'Mariposa')
INSERT [dbo].[Tipo de ejercicio] ([Repeticion], [Tipo], [Maquina]) VALUES (8, N'Espalda', N'Dominadas Asistidas')
INSERT [dbo].[Tipo de ejercicio] ([Repeticion], [Tipo], [Maquina]) VALUES (8, N'Espalda', N'Jalones al pecho')
INSERT [dbo].[Tipo de ejercicio] ([Repeticion], [Tipo], [Maquina]) VALUES (8, N'Espalda', N'Remo')
INSERT [dbo].[Tipo de ejercicio] ([Repeticion], [Tipo], [Maquina]) VALUES (8, N'Pierna', N'sentadilla')
INSERT [dbo].[Tipo de ejercicio] ([Repeticion], [Tipo], [Maquina]) VALUES (8, N'pierna', N'Extensiones Frontales')
INSERT [dbo].[Tipo de ejercicio] ([Repeticion], [Tipo], [Maquina]) VALUES (8, N'Pierna', N'Femoral Sentado')
INSERT [dbo].[Tipo de ejercicio] ([Repeticion], [Tipo], [Maquina]) VALUES (8, N'Bisep', N'curl de bisep mancuerna unilateral')
INSERT [dbo].[Tipo de ejercicio] ([Repeticion], [Tipo], [Maquina]) VALUES (8, N'Bisep', N'curl de bisep barra z')
INSERT [dbo].[Tipo de ejercicio] ([Repeticion], [Tipo], [Maquina]) VALUES (8, N'Bisep', N'predicador barra z')
INSERT [dbo].[Tipo de ejercicio] ([Repeticion], [Tipo], [Maquina]) VALUES (8, N'Tricep', N'Extensiones de tricep con barra z')
INSERT [dbo].[Tipo de ejercicio] ([Repeticion], [Tipo], [Maquina]) VALUES (8, N'Tricep', N'Rompe Craneos')
INSERT [dbo].[Tipo de ejercicio] ([Repeticion], [Tipo], [Maquina]) VALUES (8, N'Tricep', N'Fondos')
INSERT [dbo].[Tipo de ejercicio] ([Repeticion], [Tipo], [Maquina]) VALUES (8, N'Antebrazo', N'curl de Muñeca con Mancuerna unilateral')
INSERT [dbo].[Tipo de ejercicio] ([Repeticion], [Tipo], [Maquina]) VALUES (8, N'Antebrazo', N'curl de Muñeca con Barra z')
INSERT [dbo].[Tipo de ejercicio] ([Repeticion], [Tipo], [Maquina]) VALUES (8, N'Antebrazo', N'Flexiones de Muñeca con Mancuerna')
GO
EXEC sys.sp_addextendedproperty @name=N'19B0110509', @value=N'int' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Alumnos', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'Yair ', @value=N'char' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Alumnos', @level2type=N'COLUMN',@level2name=N'Nombre'
GO
EXEC sys.sp_addextendedproperty @name=N'Vasquez Castro', @value=N'char' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Alumnos', @level2type=N'COLUMN',@level2name=N'Apellido'
GO
EXEC sys.sp_addextendedproperty @name=N'Chapultepec', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Alumnos', @level2type=N'COLUMN',@level2name=N'Domicilio'
GO
EXEC sys.sp_addextendedproperty @name=N'4/1/2004', @value=N'int' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Alumnos', @level2type=N'COLUMN',@level2name=N'Fecha_Nacimiento'
GO
USE [master]
GO
ALTER DATABASE [Gym] SET  READ_WRITE 
GO
