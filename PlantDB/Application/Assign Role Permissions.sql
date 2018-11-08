-----------------------------------------------------------------------------
--SPECIAL
-----------------------------------------------------------------------------
--SCHEMA
-----------------------------------------------------------------------------
--PROCEDURES -> USER
GRANT EXECUTE ON PROCEDURE_USER_CREATE TO application_users;
-----------------------------------------------------------------------------
--FUNCTIONS -> USER
GRANT EXECUTE ON FUNCTION_USER_LOGIN TO application_users;
-----------------------------------------------------------------------------
--FUNCTIONS -> SCALAR VALUED
GRANT EXECUTE ON FUNCTION_ORDER_ID TO application_users;
GRANT EXECUTE ON FUNCTION_COMMON_NAME_ID TO application_users;
GRANT EXECUTE ON FUNCTION_HAWAIIAN_NAME_ID TO application_users;
GRANT EXECUTE ON FUNCTION_NATIVE_STATUS_ID TO application_users;
GRANT EXECUTE ON FUNCTION_INVASIVE_STATUS_ID TO application_users;
GRANT EXECUTE ON FUNCTION_FEDERAL_STATUS_ID TO application_users;
GRANT EXECUTE ON FUNCTION_GENUS_ID TO application_users;
GRANT EXECUTE ON FUNCTION_ISLAND_ID TO application_users;
GRANT EXECUTE ON FUNCTION_SPECIES_ID TO application_users;
-----------------------------------------------------------------------------
--FUNCTIONS -> TABLE VALUED
GRANT EXECUTE ON FUNCTION_SPECIES_TABLE TO application_users;
GRANT EXECUTE ON FUNCTION_SPECIES_ENTRY TO application_users;
-----------------------------------------------------------------------------
--TABLES SELECT
GRANT SELECT ON SPECIES TO application_users;
GRANT SELECT ON GENUS TO application_users;
GRANT SELECT ON ORDER TO application_users;
GRANT SELECT ON COMMON_NAME TO application_users;
GRANT SELECT ON HAWAIIAN_NAME TO application_users;
GRANT SELECT ON NATIVE_STATUS TO application_users;
GRANT SELECT ON INVASIVE_STATUS TO application_users;
GRANT SELECT ON FEDERAL_STATUS TO application_users;
GRANT SELECT ON ISLAND TO application_users;
-----------------------------------------------------------------------------
--TABLES INSERT
GRANT INSERT ON SUBMISSION TO application_users;
GRANT INSERT ON GEOLOCATION TO application_users;
-----------------------------------------------------------------------------
--TABLES UPDATE
-----------------------------------------------------------------------------
--TABLES DELETE
-----------------------------------------------------------------------------
