USE [CaboodlePOC_Stage]

CREATE TABLE Custom.SXuErsatzStaffingEvent (
	StageKey				int IDENTITY(1,1)	--Technically optional
	,STAFFING_EVENT_ID			nvarchar(50)
	,[DATE]					nvarchar(50)
	,EMPLOYEE_ID				nvarchar(50)
	,EMPLOYEE_ROLE_ID			nvarchar(50)
	,HOURS_LOGGED				nvarchar(50)
	,LoadDate					date
)