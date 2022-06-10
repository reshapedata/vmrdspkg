if exists(select * from sys.objects where name ='ERPtoPLM_Item')
drop table ERPtoPLM_Item
go

CREATE TABLE [dbo].[ERPtoPLM_Item](
	[MCode] [nvarchar](30) NULL,
	[MName] [nvarchar](80) NULL,
	[Spec] [nvarchar](80) NULL,
	[MDesc] [nvarchar](80) NULL,
	[UOM] [nvarchar](30) NULL,
	[MProp] [nvarchar](30) NULL,
	[PLMOperation] [nvarchar](30) NULL,
	[ERPOperation] [nvarchar](30) NULL,
	[PLMDate] [datetime] NULL,
	[ERPDate] [datetime] NULL,
	FinterId  int identity(1,1)
) ON [PRIMARY]
GO



/*
USE [TC4K3DB]
GO

INSERT INTO [dbo].[ERPtoPLM_Item]
           ([MCode]
           ,[MName]
           ,[Spec]
           ,[MDesc]
           ,[UOM]
           ,[MProp]
           ,[PLMOperation]
           ,[ERPOperation]
           ,[PLMDate]
           ,[ERPDate])
     VALUES
           (<MCode, nvarchar(30),>
           ,<MName, nvarchar(80),>
           ,<Spec, nvarchar(80),>
           ,<MDesc, nvarchar(80),>
           ,<UOM, nvarchar(30),>
           ,<MProp, nvarchar(30),>
           ,<PLMOperation, nvarchar(30),>
           ,<ERPOperation, nvarchar(30),>
           ,<PLMDate, datetime,>
           ,<ERPDate, datetime,>)
GO
SELECT [MCode]
      ,[MName]
      ,[Spec]
      ,[MDesc]
      ,[UOM]
      ,[MProp]
      ,[PLMOperation]
      ,[ERPOperation]
      ,[PLMDate]
      ,[ERPDate]
  FROM [dbo].[ERPtoPLM_Item]
GO

*/
