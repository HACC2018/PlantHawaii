------------------------------------------------------------------------------------------------------------------------------------------
CREATE FUNCTION FUNCTION_USER_CREATE(@USERNAME CHAR(255), @PASSWORD VARCHAR(MAX), @EMAIL CHAR(255))
RETURNS INT
AS
BEGIN
    DECLARE @success AS INT
    SET @success = 0;

    BEGIN TRY
        INSERT INTO USER(USERNAME, EMAIL, PASSWORD)
            VALUES(@USERNAME, @EMAIL, HASHBYTES('SHA2_512', CAST(@PASSWORD AS NVARCHAR(4000))))
        SET @success = 1;
    END TRY
    BEGIN CATCH
        SET @success = 0;
    END CATCH

    RETURN @success;
END;
GO
------------------------------------------------------------------------------------------------------------------------------------------
CREATE FUNCTION FUNCTION_USER_LOGIN(@USERNAME CHAR(255), @PASSWORD CHAR(8))
RETURNS INT
AS
BEGIN
    DECLARE @userid AS INT

    SET @userid = (SELECT ID FROM USER WHERE NAME = @USERNAME);
	IF (@userid IS NULL)
        BEGIN
            SET @userid = 0;
            RETURN @userid;
        END;
    
    DECLARE @hash AS BINARY(64);
    SET @hash = (SELECT PASSWORD FROM USER WHERE ID = @userid);

    IF (@hash != @PASSWORD)
        SET @userid = 0;
    
    RETURN @userid;
END;
GO
-----------------------------------------------------------------------------------------------------------------------------------------