-- This script will install data source SXu ErsatzHR from a development system onto a target Warehouse system

-- Make sure that Source and Target versions are compatible
DECLARE @iTargetVersion tinyint,
        @iTargetMinorVersion int,
        @iSourceVersion tinyint,
        @iSourceMinorVersion int,
        @VersionCompatible bit,
        @sVersionErrorMessage nvarchar(500)
SET @iSourceVersion = 28
SET @iSourceMinorVersion = 27
SET @iTargetVersion = CAST( Epic.GetConfigurationValue( N'WarehouseVersion' ) AS tinyint )
SET @iTargetMinorVersion = CAST( Epic.GetConfigurationValue( N'WarehouseMinorVersion' ) AS int )
SET @VersionCompatible = CASE WHEN @iTargetVersion = @iSourceVersion
                                OR ( @iTargetVersion > @iSourceVersion AND @iTargetVersion <= @iSourceVersion + 4 )
                                  THEN 1 ELSE 0 END
IF @VersionCompatible = 0
BEGIN
  SET @sVersionErrorMessage = N'The target version must be within four versions of the source version for this script to be installed. 
The source version is ' + CAST( Epic.GetWarehouseVersionName( @iSourceVersion, @iSourceMinorVersion ) AS nvarchar(50) ) 
+ N', so this script can only be installed on versions ' + CAST( Epic.GetWarehouseVersionName( @iSourceVersion, 0 ) AS nvarchar(50) ) 
+ N'+, ' + CAST( Epic.GetWarehouseVersionName( @iSourceVersion + 1, 0 ) AS nvarchar(50)) + N'+, ' + CAST( Epic.GetWarehouseVersionName( @iSourceVersion + 2, 0 ) AS nvarchar(50) ) 
+ N'+, ' + CAST( Epic.GetWarehouseVersionName(@iSourceVersion + 3, 0) AS nvarchar(50)) + N'+, and ' + CAST( Epic.GetWarehouseVersionName(@iSourceVersion + 4, 0) AS nvarchar(50)) + N'+.' 
+ N' The current target version is ' + CAST( Epic.GetWarehouseVersionName( @iTargetVersion, @iTargetMinorVersion ) AS nvarchar(50) ) + N'.';
  THROW 50001, @sVersionErrorMessage, 0;
END

--Check that the database being used is staging database
IF DB_NAME() = dbo.GetReportingDatabaseName()
BEGIN
  ;THROW 50001, 'Script cannot be run on the reporting database. Please run on the staging database.', 0; 
END

-- Make sure that you can acquire system level lock
DECLARE @SuccessCheck bit,
        @sErrorCheck nvarchar(MAX),
        @sLockedByCheck nvarchar(200)

EXECUTE Epic.LockEtl N'System', 1, @i_sLockedBy = N'Console Generated Script', @i_nLoopDelaySeconds = 1, @i_nTimeoutSeconds = 0, 
  @o_IsSuccess = @SuccessCheck OUTPUT, @o_sCurrentlyLockedBy = @sLockedByCheck OUTPUT, @i_IsExecution = 0 
IF @SuccessCheck = 0
BEGIN
  SET @sErrorCheck = CASE WHEN NULLIF(@sLockedByCheck, N'') IS NULL THEN N'Background process' ELSE @sLockedByCheck END
    + N' is currently locking system. Try again later.';
  THROW 50001, @sErrorCheck, 1;
END

BEGIN TRY

SET NOCOUNT ON
DECLARE @iSourceId int
DECLARE @AlreadyExists bit

SET @iSourceId = Epic.GetIdForSourceName( N'SXu ErsatzHR' )
SET @AlreadyExists = CASE WHEN @iSourceId IS NULL THEN 0 ELSE 1 END
IF @iSourceId IS NULL
BEGIN
  SET @iSourceId = Epic.GetNewSourceId()
END


IF @AlreadyExists = 0
BEGIN
  INSERT INTO Config.Sources
    ( SourceId, Name, [Type], EpicVersionId, EpicReleased, Description, ExcludeFromThirdPartyViews, LastModified, SourceIdentifier )
    VALUES
    ( @iSourceId, N'SXu ErsatzHR', N'Custom', NULL, 0, N'', 0, CURRENT_TIMESTAMP, N'' )
END
ELSE
BEGIN
  UPDATE Config.Sources
    SET Name = N'SXu ErsatzHR',
        [Type] = N'Custom',
        EpicVersionId = NULL,
        EpicReleased = 0,
        Description = N'',
        ExcludeFromThirdPartyViews = 0,
        LastModified = CURRENT_TIMESTAMP,
        SourceIdentifier = N''
    WHERE SourceId = @iSourceId
END
EXECUTE Epic.CreateAllThirdPartyViews @i_sRebuildAllViews = N'All'

  -- Release the system level lock
  EXECUTE Epic.LockEtl N'System', 0, @i_sLockedBy = N'Console Generated Script', @i_IsExecution = 0

END TRY
BEGIN CATCH
  -- Release the system level lock
  EXECUTE Epic.LockEtl N'System', 0, @i_sLockedBy = N'Console Generated Script', @i_IsExecution = 0

  -- Throw the error message if any 
  ; THROW;

END CATCH

