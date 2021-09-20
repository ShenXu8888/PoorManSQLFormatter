USE [CaboodlePOC_Stage]

CREATE TABLE Custom.SXu_ErsatzEmpolyeeRole (
	StageKey				int IDENTITY(1,1)	--Technically optional	
	,EMPLOYEE_ROLE_ID					nvarchar(10)
	,EMPLOYEE_ROLE_NAME					nvarchar(50)
	,EMPLOYEE_ROLE_DESCRIPTION				nvarchar(300)
	,EMPLOYEE_CLASS				nvarchar(100)
	,LoadDate					date
	)
