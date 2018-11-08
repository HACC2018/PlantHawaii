-----------------------------------------------------------------------------
CREATE FUNCTION FUNCTION_USER_LOGIN(@USERNAME CHAR(255), @PASSWORD CHAR(8))
RETURNS INT
AS
BEGIN
    DECLARE @userid AS INT
     SET @userid = (SELECT ID FROM USERNAME WHERE [NAME] = @USERNAME);
	IF (@userid IS NULL)
        BEGIN
            SET @userid = 0;
            RETURN @userid;
        END;
    
    DECLARE @hash AS BINARY(64);
    SET @hash = (SELECT PASSWORD_HASH FROM USERNAME WHERE ID = @userid);
    IF (@hash != @PASSWORD)
        SET @userid = 0;
    RETURN @userid;
END;
GO
-----------------------------------------------------------------------------
