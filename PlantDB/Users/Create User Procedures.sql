------------------------------------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE PROCEDURE_USER_CREATE(@USERNAME CHAR(255), @PASSWORD VARCHAR(MAX), @EMAIL CHAR(255))
AS
BEGIN
	BEGIN TRY
		INSERT INTO [USER]([USERNAME], EMAIL, PASSWORD_HASH)
			VALUES(@USERNAME, @EMAIL, HASHBYTES('SHA2_512', CAST(@PASSWORD AS NVARCHAR(4000))))
		RETURN 1;
	END TRY
	BEGIN CATCH
		RETURN 0;
	END CATCH
END;
GO
-----------------------------------------------------------------------------------------------------------------------------------------
