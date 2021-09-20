USE [CaboodlePOC_Stage]
GO

/****** Object:  StoredProcedure [dbo].[SXu_Ersatz_StaffingEventFact_Load_X]    Script Date: 20/09/2021 09:50:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SXu_Ersatz_StaffingEventFact_Load_X]
AS
BEGIN
	DECLARE @PackageName NVARCHAR(MAX)
	DECLARE @LastSuccessDate DATETIME

	SET @PackageName = N'SXu_Ersatz_StaffingEventFact_Load_X'
	SET @LastSuccessDate = dbo.GetPackageLastSuccessStartTime(@PackageName, DEFAULT, DEFAULT)

	INSERT INTO SXuStaffingEventFactX_SXuStaffingEventLoad_XImport (
		IdType,
		Id,
		[StaffingDate],
		EmployeeIdType,
		[EmployeeId],
		[EmployeeRoleIdType],
		[EmployeeRoleId],
		[HoursLogged]
		)
	SELECT N'ErsatzStaffingEventId' IdType,
		STAFFING_EVENT_ID Id,
		[DATE] [StaffingDate],
		N'EpicUserID|Line' EmployeeIdType,
		EMPLOYEE_ID [EmployeeId],
		N'ErsatzEmployeeRoleId' [EmployeeRoleIdType],
		EMPLOYEE_ROLE_ID [EmployeeRoleId],
		HOURS_LOGGED [HoursLogged]
	FROM Custom.SXuErsatzStaffingEvenT A
END
GO


