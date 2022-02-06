/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : SQL Server
 Source Server Version : 14001000
 Source Host           : LAPTOP-56B11NSN:1433
 Source Catalog        : MDKAReservasi
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 14001000
 File Encoding         : 65001

 Date: 06/02/2022 14:33:42
*/


-- ----------------------------
-- Table structure for tblM_Ruangan
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblM_Ruangan]') AND type IN ('U'))
	DROP TABLE [dbo].[tblM_Ruangan]
GO

CREATE TABLE [dbo].[tblM_Ruangan] (
  [Ruangan_PK] int  IDENTITY(1,1) NOT NULL,
  [NamaRuangan] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Lantai] int  NULL,
  [DayaTampung] int  NULL,
  [CreatedBy] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedDate] datetime  NULL,
  [UpdatedBy] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [UpdatedDate] datetime  NULL,
  [Status_FK] int  NULL
)
GO

ALTER TABLE [dbo].[tblM_Ruangan] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tblM_Ruangan
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblM_Ruangan] ON
GO

INSERT INTO [dbo].[tblM_Ruangan] ([Ruangan_PK], [NamaRuangan], [Lantai], [DayaTampung], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status_FK]) VALUES (N'1', N'101', N'1', N'200', N'SYSTEM', N'2019-01-01 00:00:00.000', N'SYSTEM', N'2019-01-01 00:00:00.000', N'2')
GO

INSERT INTO [dbo].[tblM_Ruangan] ([Ruangan_PK], [NamaRuangan], [Lantai], [DayaTampung], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status_FK]) VALUES (N'2', N'201', N'2', N'25', N'SYSTEM', N'2019-01-01 00:00:00.000', N'SYSTEM', N'2019-01-01 00:00:00.000', N'2')
GO

INSERT INTO [dbo].[tblM_Ruangan] ([Ruangan_PK], [NamaRuangan], [Lantai], [DayaTampung], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status_FK]) VALUES (N'3', N'202', N'2', N'50', N'SYSTEM', N'2019-01-01 00:00:00.000', N'SYSTEM', N'2019-01-01 00:00:00.000', N'1')
GO

INSERT INTO [dbo].[tblM_Ruangan] ([Ruangan_PK], [NamaRuangan], [Lantai], [DayaTampung], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status_FK]) VALUES (N'4', N'203', N'2', N'25', N'SYSTEM', N'2019-01-01 00:00:00.000', N'SYSTEM', N'2019-01-01 00:00:00.000', N'2')
GO

INSERT INTO [dbo].[tblM_Ruangan] ([Ruangan_PK], [NamaRuangan], [Lantai], [DayaTampung], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status_FK]) VALUES (N'5', N'204', N'2', N'100', N'SYSTEM', N'2019-01-01 00:00:00.000', N'SYSTEM', N'2019-01-01 00:00:00.000', N'3')
GO

INSERT INTO [dbo].[tblM_Ruangan] ([Ruangan_PK], [NamaRuangan], [Lantai], [DayaTampung], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status_FK]) VALUES (N'6', N'301', N'3', N'50', N'SYSTEM', N'2019-01-01 00:00:00.000', N'SYSTEM', N'2019-01-01 00:00:00.000', N'1')
GO

INSERT INTO [dbo].[tblM_Ruangan] ([Ruangan_PK], [NamaRuangan], [Lantai], [DayaTampung], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status_FK]) VALUES (N'7', N'302', N'3', N'50', N'SYSTEM', N'2019-01-01 00:00:00.000', N'SYSTEM', N'2019-01-01 00:00:00.000', N'2')
GO

INSERT INTO [dbo].[tblM_Ruangan] ([Ruangan_PK], [NamaRuangan], [Lantai], [DayaTampung], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status_FK]) VALUES (N'8', N'303', N'3', N'50', N'SYSTEM', N'2019-01-01 00:00:00.000', N'SYSTEM', N'2019-01-01 00:00:00.000', N'2')
GO

INSERT INTO [dbo].[tblM_Ruangan] ([Ruangan_PK], [NamaRuangan], [Lantai], [DayaTampung], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status_FK]) VALUES (N'9', N'304', N'3', N'50', N'SYSTEM', N'2019-01-01 00:00:00.000', N'SYSTEM', N'2019-01-01 00:00:00.000', N'2')
GO

INSERT INTO [dbo].[tblM_Ruangan] ([Ruangan_PK], [NamaRuangan], [Lantai], [DayaTampung], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status_FK]) VALUES (N'10', N'401', N'4', N'50', N'SYSTEM', N'2019-01-01 00:00:00.000', N'SYSTEM', N'2019-01-01 00:00:00.000', N'3')
GO

INSERT INTO [dbo].[tblM_Ruangan] ([Ruangan_PK], [NamaRuangan], [Lantai], [DayaTampung], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status_FK]) VALUES (N'11', N'402', N'4', N'50', N'SYSTEM', N'2019-01-01 00:00:00.000', N'SYSTEM', N'2019-01-01 00:00:00.000', N'3')
GO

INSERT INTO [dbo].[tblM_Ruangan] ([Ruangan_PK], [NamaRuangan], [Lantai], [DayaTampung], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status_FK]) VALUES (N'12', N'403', N'4', N'100', N'SYSTEM', N'2019-01-01 00:00:00.000', N'SYSTEM', N'2019-01-01 00:00:00.000', N'2')
GO

INSERT INTO [dbo].[tblM_Ruangan] ([Ruangan_PK], [NamaRuangan], [Lantai], [DayaTampung], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Status_FK]) VALUES (N'13', N'501', N'5', N'100', N'SYSTEM', N'2019-01-01 00:00:00.000', N'SYSTEM', N'2019-01-01 00:00:00.000', N'3')
GO

SET IDENTITY_INSERT [dbo].[tblM_Ruangan] OFF
GO


-- ----------------------------
-- Table structure for tblM_Status
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblM_Status]') AND type IN ('U'))
	DROP TABLE [dbo].[tblM_Status]
GO

CREATE TABLE [dbo].[tblM_Status] (
  [Status_PK] int  IDENTITY(1,1) NOT NULL,
  [NamaStatus] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedBy] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedDate] datetime  NULL,
  [UpdatedBy] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [UpdatedDate] datetime  NULL
)
GO

ALTER TABLE [dbo].[tblM_Status] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tblM_Status
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblM_Status] ON
GO

INSERT INTO [dbo].[tblM_Status] ([Status_PK], [NamaStatus], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1', N'Booked', N'SYSTEM', N'2019-01-01 00:00:00.000', N'SYSTEM', N'2019-01-01 00:00:00.000')
GO

INSERT INTO [dbo].[tblM_Status] ([Status_PK], [NamaStatus], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'2', N'Vacant', N'SYSTEM', N'2019-01-01 00:00:00.000', N'SYSTEM', N'2019-01-01 00:00:00.000')
GO

INSERT INTO [dbo].[tblM_Status] ([Status_PK], [NamaStatus], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'3', N'Renovasi', N'SYSTEM', N'2019-01-01 00:00:00.000', N'SYSTEM', N'2019-01-01 00:00:00.000')
GO

SET IDENTITY_INSERT [dbo].[tblM_Status] OFF
GO


-- ----------------------------
-- Table structure for tblT_Reservasi
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tblT_Reservasi]') AND type IN ('U'))
	DROP TABLE [dbo].[tblT_Reservasi]
GO

CREATE TABLE [dbo].[tblT_Reservasi] (
  [Reservasi_PK] int  IDENTITY(1,1) NOT NULL,
  [Ruangan_FK] int  NULL,
  [SubjectReservasi] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TanggalReservasi] date  NULL,
  [JamMulai] time(7)  NULL,
  [JamSelesai] time(7)  NULL,
  [CreatedBy] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedDate] datetime  NULL,
  [UpdatedBy] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [UpdatedDate] datetime  NULL
)
GO

ALTER TABLE [dbo].[tblT_Reservasi] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tblT_Reservasi
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tblT_Reservasi] ON
GO

INSERT INTO [dbo].[tblT_Reservasi] ([Reservasi_PK], [Ruangan_FK], [SubjectReservasi], [TanggalReservasi], [JamMulai], [JamSelesai], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1002', N'6', N'Meetin Supervisi', N'2022-02-01', N'22:22:00.0000000', N'12:22:00.0000000', N'SYSTEM', N'2022-02-05 20:23:06.510', N'SYSTEM', N'2022-02-05 20:23:06.510')
GO

INSERT INTO [dbo].[tblT_Reservasi] ([Reservasi_PK], [Ruangan_FK], [SubjectReservasi], [TanggalReservasi], [JamMulai], [JamSelesai], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1003', N'6', N'Meeting proyek', N'2022-02-02', N'10:00:00.0000000', N'23:57:00.0000000', N'SYSTEM', N'2022-02-06 13:58:02.107', N'SYSTEM', N'2022-02-06 13:58:02.107')
GO

INSERT INTO [dbo].[tblT_Reservasi] ([Reservasi_PK], [Ruangan_FK], [SubjectReservasi], [TanggalReservasi], [JamMulai], [JamSelesai], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1004', N'3', N'Meetin Supervisi', N'2022-02-02', N'09:00:00.0000000', N'10:00:00.0000000', N'SYSTEM', N'2022-02-06 13:58:47.073', N'SYSTEM', N'2022-02-06 13:58:47.073')
GO

SET IDENTITY_INSERT [dbo].[tblT_Reservasi] OFF
GO


-- ----------------------------
-- procedure structure for SP_ProsesReservasi
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_ProsesReservasi]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[SP_ProsesReservasi]
GO

CREATE PROCEDURE [dbo].[SP_ProsesReservasi]
	-- Add the parameters for the stored procedure here
	@function int = null,
	@Ruangan_FK int = null,
	@Subject varchar(255) = null,
	@dateReservasi datetime = null,
	@jamMulai varchar(8) = null,
	@jamSelesai varchar(8) = null,
	@createBy varchar(max) = null,
	@createDate datetime  = null,
	@updateBy varchar(30) = null,
	@Reservasi_PK int = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if @function = 1
	BEGIN
	insert into tblT_Reservasi values(@Ruangan_FK,@Subject,@dateReservasi,@jamMulai,@jamSelesai,'SYSTEM', GETDATE(),'SYSTEM',GETDATE())
	update tblM_Ruangan set Status_FK = 1 where Ruangan_PK = @Ruangan_FK	
		
	END
	-- Get Rekapitulasi ruangan
	else if @function = 2
	BEGIN
	select * from (
		select b.namaRuangan, a.Reservasi_PK, b.Ruangan_PK ,a.subjectReservasi, CAST(a.tanggalReservasi as varchar(10))tanggalReservasi, CAST(a.jamMulai as varchar(10))jamMulai, CAST(a.jamSelesai as varchar(10))jamSelesai, b.status_FK  from tblT_Reservasi a
		LEFT JOIN tblM_ruangan b
		on a.Ruangan_FK = b.Ruangan_PK
	)a	
	where  a.tanggalReservasi = @dateReservasi
	END
	else if @function = 3
	BEGIN		
	delete from tblT_Reservasi where Reservasi_PK = @Reservasi_PK	
	update tblM_Ruangan set Status_FK = 2 where Ruangan_PK = @Ruangan_FK	
	END
	else if @function = 4
	BEGIN
	select a.Ruangan_PK, a.NamaRuangan, a.Status_FK statusFKMaster,CASE WHEN CAST(a.TanggalReservasi as date) = @dateReservasi or a.Status_FK = 1  then '1' else '2' end as Status_FK, CAST(a.TanggalReservasi as varchar(10)) tanggalReservasi from (
		select a.Ruangan_PK,a.NamaRuangan, b.TanggalReservasi, a.Status_FK from tblM_Ruangan a 
		LEFT JOIN tblT_Reservasi b
		on a.Ruangan_PK = b.Ruangan_FK
		)a

		
	--select * from tblM_Ruangan where Status_FK = 2	
	END	
	else if @function = 5
	BEGIN
	select a.NamaRuangan, a.Reservasi_PK, a.Ruangan_PK, a.SubjectReservasi, a.tanggalReservasi,a.Status_FK, case when a.Status_FK = 1 then 'Booked' when a.Status_FK = 2 then 'Vacant' when a.Status_FK = 3 then  'Renovasi' end as namaStatus from (
		select a.namaRuangan, b.Reservasi_PK, a.Ruangan_PK ,b.subjectReservasi, CAST(b.tanggalReservasi as varchar(10))tanggalReservasi, CAST(b.jamMulai as varchar(10))jamMulai, CAST(b.jamSelesai as varchar(10))jamSelesai, a.status_FK  from tblM_ruangan a
		LEFT JOIN tblT_Reservasi b
		on a.Ruangan_PK = b.Ruangan_FK
	)a
		

	--select * from tblT_Reservasi
	END

END
GO


-- ----------------------------
-- Auto increment value for tblM_Ruangan
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[tblM_Ruangan]', RESEED, 1000)
GO


-- ----------------------------
-- Primary Key structure for table tblM_Ruangan
-- ----------------------------
ALTER TABLE [dbo].[tblM_Ruangan] ADD CONSTRAINT [PK_tblM_Ruangan] PRIMARY KEY CLUSTERED ([Ruangan_PK])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for tblM_Status
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[tblM_Status]', RESEED, 1000)
GO


-- ----------------------------
-- Primary Key structure for table tblM_Status
-- ----------------------------
ALTER TABLE [dbo].[tblM_Status] ADD CONSTRAINT [PK_tblM_Status] PRIMARY KEY CLUSTERED ([Status_PK])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for tblT_Reservasi
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[tblT_Reservasi]', RESEED, 1004)
GO


-- ----------------------------
-- Primary Key structure for table tblT_Reservasi
-- ----------------------------
ALTER TABLE [dbo].[tblT_Reservasi] ADD CONSTRAINT [PK_tblT_Reservasi] PRIMARY KEY CLUSTERED ([Reservasi_PK])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

