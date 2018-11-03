------------------------------------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE dbo.uspAddUser
    @pLogin NVARCHAR(50), 
    @pPassword NVARCHAR(50), 
    @pFirstName NVARCHAR(40) = NULL, 
    @pLastName NVARCHAR(40) = NULL,
    @responseMessage NVARCHAR(250) OUTPUT
AS
BEGIN
    SET NOCOUNT ON

    BEGIN TRY

        INSERT INTO dbo.[User] (LoginName, PasswordHash, FirstName, LastName)
        VALUES(@pLogin, HASHBYTES('SHA2_512', @pPassword), @pFirstName, @pLastName)

        SET @responseMessage='Success'

    END TRY
    BEGIN CATCH
        SET @responseMessage=ERROR_MESSAGE() 
    END CATCH

END
------------------------------------------------------------------------------------------------------------------------------------------
/************** Run above procedure **************\
DECLARE @responseMessage NVARCHAR(250)

EXEC dbo.uspAddUser
        @pLogin = N'Admin',
        @pPassword = N'123',
        @pFirstName = N'Admin',
        @pLastName = N'Administrator',
        @responseMessage=@responseMessage OUTPUT

SELECT *
FROM [dbo].[User]
\*************************************************/
