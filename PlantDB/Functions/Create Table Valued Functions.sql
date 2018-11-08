-----------------------------------------------------------------------------
CREATE FUNCTION FUNCTION_SPECIES_TABLE()
RETURNS TABLE
AS
RETURN (
    SELECT
        *
    FROM SPECIES
);
GO
-----------------------------------------------------------------------------
CREATE FUNCTION FUNCTION_SPECIES_ENTRY(@SELECTED_NAME VARCHAR(MAX))
RETURNS TABLE
AS
RETURN (
    SELECT
        SPECIES.ID AS SP_ID,
        SPECIES.SPECIES_NAME AS SP_NAME,
        SPECIES.SUBSPECIES_NAME AS SUB_NAME,
        SPECIES.[DESCRIPTION] AS SP_DESCRIP,
        SPECIES.STORY AS SP_STORY,
        GENUS.[NAME] AS G_NAME,
        [ORDER].[NAME] AS O_NAME,
        COMMON_NAME.[NAME] AS C_NAME,
        HAWAIIAN_NAME.[NAME] AS H_NAME,
        NATIVE_STATUS.STATUS AS N_STAT,
        INVASIVE_STATUS.STATUS AS I_STAT,
        FEDERAL_STATUS.STATUS AS F_STAT,
        FEDERAL_STATUS.[CODE] AS F_CODE
    FROM SPECIES
        LEFT JOIN GENUS ON SPECIES.GENUS_ID = GENUS.ID
        LEFT JOIN [ORDER] ON GENUS.ORDER_ID = [ORDER].ID
        LEFT JOIN COMMON_NAME ON SPECIES.COMMON_NAME_ID = COMMON_NAME.ID
        LEFT JOIN HAWAIIAN_NAME ON SPECIES.HAWAIIAN_NAME_ID = HAWAIIAN_NAME.ID
        LEFT JOIN NATIVE_STATUS ON SPECIES.NATIVE_STATUS_ID = NATIVE_STATUS.ID
        LEFT JOIN INVASIVE_STATUS ON SPECIES.INVASIVE_STATUS_ID = INVASIVE_STATUS.ID
        LEFT JOIN FEDERAL_STATUS ON SPECIES.FEDERAL_STATUS_ID = FEDERAL_STATUS.ID
    WHERE SPECIES.SPECIES_NAME = @SELECTED_NAME
);
GO
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------