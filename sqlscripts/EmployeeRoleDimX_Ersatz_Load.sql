CREATE
	OR

ALTER PROCEDURE dbo.SXu_Ersatz_EmployeeRoleDim_Load_X
AS
BEGIN
	DECLARE @PackageName NVARCHAR(MAX)
	DECLARE @LastSuccessDate DATETIME

	SET @PackageName = N'SXu_Ersatz_EmployeeRoleDim_Load_X'
	SET @LastSuccessDate = dbo.GetPackageLastSuccessStartTime(@PackageName, DEFAULT, DEFAULT)

	INSERT INTO [dbo].[SXu_EmployeeRoleDimX_SXu_ErsatzHR_EmployeeRole_Load_XImport] (
		IdType,
		Id,
		Name,
		Description,
		RoleClass
		)
	SELECT N'ErsatzEmployeeRoleId' IdType,
		EMPLOYEE_ROLE_ID Id,
		EMPLOYEE_ROLE_NAME Name,
		EMPLOYEE_ROLE_DESCRIPTION Description,
		EMPLOYEE_CLASS RoleClass
	FROM Custom.SXu_ErsatzEmpolyeeRole A
END
