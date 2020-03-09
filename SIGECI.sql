USE [SGC]
GO
/****** Object:  User [cm]    Script Date: 09/mar./2020 16:10:51 ******/
CREATE USER [cm] FOR LOGIN [cm] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ja]    Script Date: 09/mar./2020 16:10:51 ******/
CREATE USER [ja] FOR LOGIN [ja] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [mh]    Script Date: 09/mar./2020 16:10:52 ******/
CREATE USER [mh] FOR LOGIN [mh] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ra]    Script Date: 09/mar./2020 16:10:53 ******/
CREATE USER [ra] FOR LOGIN [ra] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [cm]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [cm]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [cm]
GO
ALTER ROLE [db_datareader] ADD MEMBER [cm]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [cm]
GO
ALTER ROLE [db_owner] ADD MEMBER [ja]
GO
ALTER ROLE [db_owner] ADD MEMBER [mh]
GO
ALTER ROLE [db_owner] ADD MEMBER [ra]
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 09/mar./2020 16:10:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [nvarchar](128) NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Act_Indicador]    Script Date: 09/mar./2020 16:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Act_Indicador](
	[Id_Act_Indicador] [int] NOT NULL,
	[Id_Indicador] [int] NOT NULL,
	[Id_Actividad] [int] NOT NULL,
	[Valor] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Actividades]    Script Date: 09/mar./2020 16:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Actividades](
	[Id_Actividad] [int] NOT NULL,
	[Id_Tema] [int] NOT NULL,
	[Valor] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Id_Instrumento] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Alumnos]    Script Date: 09/mar./2020 16:10:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Alumnos](
	[No_Control] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApePat] [varchar](50) NOT NULL,
	[ApeMat] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Calificaciones]    Script Date: 09/mar./2020 16:10:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Calificaciones](
	[Id_Calificacion] [int] NOT NULL,
	[Id_Actividad] [int] NOT NULL,
	[No_Control] [int] NOT NULL,
	[Retroalimentacion] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Carreras]    Script Date: 09/mar./2020 16:10:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Carreras](
	[Id_Carrera] [int] NOT NULL,
	[Nom_Carrera] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Grupo_Alumno]    Script Date: 09/mar./2020 16:11:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Grupo_Alumno](
	[Id_Grupo_Alumno] [int] NOT NULL,
	[Clave_Grupo] [int] NOT NULL,
	[No_Control] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Grupos]    Script Date: 09/mar./2020 16:11:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Grupos](
	[Clave_Grupo] [int] NOT NULL,
	[Id_Materia] [int] NOT NULL,
	[Id_Usuario] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Indicadores]    Script Date: 09/mar./2020 16:11:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Indicadores](
	[Id_Indicadores] [int] NOT NULL,
	[Nom_Indicador] [varchar](50) NOT NULL,
	[Sigla] [nchar](10) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Instrumentos]    Script Date: 09/mar./2020 16:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Instrumentos](
	[Id_Instrumento] [int] NOT NULL,
	[Nom_Instrumento] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Materias]    Script Date: 09/mar./2020 16:11:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Materias](
	[Id_Materia] [int] NOT NULL,
	[Nom_Materia] [varchar](50) NOT NULL,
	[Clave] [varchar](50) NOT NULL,
	[Id_Carrera] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Perfil]    Script Date: 09/mar./2020 16:11:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Perfil](
	[Id_Perfil] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Nom_Docente] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Temas]    Script Date: 09/mar./2020 16:11:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Temas](
	[Id_Tema] [int] NOT NULL,
	[Nom_Tema] [varchar](50) NOT NULL,
	[Posicion] [varchar](50) NOT NULL,
	[Id_Grupo] [int] NOT NULL,
	[Competencia] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Usuarios]    Script Date: 09/mar./2020 16:11:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Usuarios](
	[Id_Usuario] [int] NOT NULL,
	[Nom_Docente] [varchar](50) NOT NULL,
	[Contraseña] [varchar](50) NOT NULL,
	[Correo] [varchar](50) NOT NULL,
	[Id_Perfil] [int] NOT NULL
) ON [PRIMARY]
GO
