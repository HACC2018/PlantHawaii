------------------------------------------------------------------------------------------------------------------------------------------
---------------------------FIND ORDER ID FROM NAME
CREATE FUNCTION FUNCTION_ORDER_ID(@ORDER_NAME VARCHAR(MAX))
RETURNS INT
AS
BEGIN
	DECLARE @ret INT
	SET @ret = (SELECT ID FROM ORDER WHERE NAME = @ORDER_NAME);
	IF (@ret IS NULL)
		SET @ret = 0;
	RETURN @ret;
END;
GO
------------------------------------------------------------------------------------------------------------------------------------------
---------------------------FIND COMMON_NAME ID FROM NAME
CREATE FUNCTION FUNCTION_COMMON_NAME_ID(@COMMON_NAME_NAME VARCHAR(MAX))
RETURNS INT
AS
BEGIN
	DECLARE @ret INT
	SET @ret = (SELECT ID FROM COMMON_NAME WHERE NAME = @COMMON_NAME_NAME);
	IF (@ret IS NULL)
		SET @ret = 0;
	RETURN @ret;
END;
GO
------------------------------------------------------------------------------------------------------------------------------------------
---------------------------FIND HAWAIIAN_NAME ID FROM NAME
CREATE FUNCTION FUNCTION_HAWAIIAN_NAME_ID(@HAWAIIAN_NAME_NAME VARCHAR(MAX))
RETURNS INT
AS
BEGIN
	DECLARE @ret INT
	SET @ret = (SELECT ID FROM HAWAIIAN_NAME WHERE NAME = @HAWAIIAN_NAME_NAME);
	IF (@ret IS NULL)
		SET @ret = 0;
	RETURN @ret;
END;
GO
------------------------------------------------------------------------------------------------------------------------------------------
---------------------------FIND NATIVE_STATUS ID FROM STATUS
CREATE FUNCTION FUNCTION_NATIVE_STATUS_ID(@NATIVE_STATUS_STATUS VARCHAR(MAX))
RETURNS INT
AS
BEGIN
	DECLARE @ret INT
	SET @ret = (SELECT ID FROM NATIVE_STATUS WHERE STATUS = @NATIVE_STATUS_STATUS);
	IF (@ret IS NULL)
		SET @ret = 0;
	RETURN @ret;
END;
GO
------------------------------------------------------------------------------------------------------------------------------------------
---------------------------FIND INVASIVE_STATUS ID FROM STATUS
CREATE FUNCTION FUNCTION_INVASIVE_STATUS_ID(@INVASIVE_STATUS_STATUS VARCHAR(MAX))
RETURNS INT
AS
BEGIN
	DECLARE @ret INT
	SET @ret = (SELECT ID FROM GENUS WHERE NAME = @INVASIVE_STATUS_STATUS);
	IF (@ret IS NULL)
		SET @ret = 0;
	RETURN @ret;
END;
GO
------------------------------------------------------------------------------------------------------------------------------------------
---------------------------FIND FEDERAL_STATUS ID FROM CODE
CREATE FUNCTION FUNCTION_FEDERAL_STATUS_ID(@FEDERAL_STATUS_CODE VARCHAR(MAX))
RETURNS INT
AS
BEGIN
	DECLARE @ret INT
	SET @ret = (SELECT ID FROM GENUS WHERE NAME = @FEDERAL_STATUS_CODE);
	IF (@ret IS NULL)
		SET @ret = 0;
	RETURN @ret;
END;
GO
------------------------------------------------------------------------------------------------------------------------------------------
---------------------------FIND GENUS ID FROM NAME
CREATE FUNCTION FUNCTION_GENUS_ID(@GENUS_NAME VARCHAR(MAX))
RETURNS INT
AS
BEGIN
	DECLARE @ret INT
	SET @ret = (SELECT ID FROM GENUS WHERE NAME = @GENUS_NAME);
	IF (@ret IS NULL)
		SET @ret = 0;
	RETURN @ret;
END;
GO
------------------------------------------------------------------------------------------------------------------------------------------
---------------------------FIND USER ID FROM USERNAME
CREATE FUNCTION FUNCTION_USER_ID(@USER_NAME VARCHAR(MAX))
RETURNS INT
AS
BEGIN
	DECLARE @ret INT
	SET @ret = (SELECT ID FROM GENUS WHERE NAME = @USER_NAME);
	IF (@ret IS NULL)
		SET @ret = 0;
	RETURN @ret;
END;
GO
------------------------------------------------------------------------------------------------------------------------------------------
---------------------------FIND ISLAND ID FROM NAME
CREATE FUNCTION FUNCTION_GENUS_ID(@ISLAND_NAME VARCHAR(MAX))
RETURNS INT
AS
BEGIN
	DECLARE @ret INT
	SET @ret = (SELECT ID FROM GENUS WHERE NAME = @ISLAND_NAME);
	IF (@ret IS NULL)
		SET @ret = 0;
	RETURN @ret;
END;
GO

------------------------------------------------------------------------------------------------------------------------------------------
/*
 get species name id function
 get submission id function
 GEOLOCATION ID??????????????
*/
------