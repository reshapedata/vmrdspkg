��ʹ�����������: 
--����linkServer 
exec sp_addlinkedserver 'tc','','SQLOLEDB','192.168.0.16' 

--��½linkServer 
exec sp_addlinkedsrvlogin 'tc','false',null,'infodba','infodba' 

--��ѯ 
select * from tc.tc4k3db.dbo.ERPtoPLM_BOM

--�Ժ���ʹ��ʱɾ�����ӷ����� 
exec sp_dropserver '����','droplogins'


INSERT INTO tc.tc4k3db.[dbo].[ERPtoPLM_BOM]
           ([PMCode]
           ,[PMName]
           ,[BOMRevCode]
           ,[CMCode]
           ,[CMName]
           ,[ProductGroup]
           ,[BOMCount]
           ,[BOMUOM]
           ,[PLMOperation]
           ,[ERPOperation]
           ,[PLMDate]
           ,[ERPDate]
           ,[FLowCode]
           ,[RootCode])
SELECT  [PMCode]
      ,[PMName]
      ,[BOMRevCode]
      ,[CMCode]
      ,[CMName]
      ,[ProductGroup]
      ,[BOMCount]
      ,[BOMUOM]
      ,[PLMOperation]
      ,'W' as [ERPOperation]
      ,[PLMDate]
      ,[ERPDate]
	  ,b.FStep [FLowCode],'1.109.03.00024' as rootcode

  FROM [dbo].[rds_pdm_bom4TC] a
  inner join rds_pdm_bomTestStep b
  on a.pmcode =  b.FBomItemNo
order by b.FStep,a.PMCode,a.CMCode