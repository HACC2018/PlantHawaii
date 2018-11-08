------------------------------------------------------------------------------------------------------------------------------------------
CREATE FUNCTION FUNCTION_USER_CREATE(@USERNAME CHAR(255), @PASSWORD VARCHAR(MAX), @EMAIL CHAR(255))
RETURNS INT
AS
BEGIN
    INSERT INTO [USER]([USERNAME], EMAIL, PASSWORD_HASH)
		VALUES(@USERNAME, @EMAIL, HASHBYTES('SHA2_512', CAST(@PASSWORD AS NVARCHAR(4000))))
	RETURN 1;
END;
GO
------------------------------------------------------------------------------------------------------------------------------------------
