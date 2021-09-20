USE [CaboodlePOC_Stage]

create table Custom.SXu_ErsatzEmpolyeeRole (	StageKey				int IDENTITY(1,1)	--Technically optional	
					    ,eMPLOYEE_ROLE_ID					nvarchar(10)
	,eMPLOYEE_ROLE_NAME					nvarchar(50)
	,EMPLOYEE_ROLE_DESCRIPTION				nvarchar(300)
	,EMPLOYEE_CLASS				nvarchar(100)
	,LoadDate					date
	)
