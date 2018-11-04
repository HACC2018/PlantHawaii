------------------------------------------------------------------------------------------------------------------------------------------
0 DEPENDENCIES
------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE ORDER (
    ID INT NOT NULL UNIQUE IDENTITY(1,1),
    NAME VARCHAR(50) NOT NULL UNIQUE,
        CONSTRAINT PK_ORDER_ID PRIMARY KEY(ID)
);
------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE COMMON_NAME (
    ID INT NOT NULL UNIQUE IDENTITY(1,1),
    NAME VARCHAR(50),
        CONSTRAINT PK_COMMON_NAME_ID PRIMARY KEY(ID)
);
------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE HAWAIIAN_NAME (
    ID INT NOT NULL UNIQUE IDENTITY(1,1),
    NAME VARCHAR(50),
        CONSTRAINT PK_HAWAIIAN_NAME_ID PRIMARY KEY(ID)
);
------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE NATIVE_STATUS (
    ID INT NOT NULL UNIQUE IDENTITY(1,1),
    STATUS CHAR(10) NOT NULL UNIQUE,
        CONSTRAINT PK_NATIVE_STATUS_ID PRIMARY KEY(ID)
);
------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE INVASIVE_STATUS (
    ID INT NOT NULL UNIQUE IDENTITY(1,1),
    STATUS CHAR(10) NOT NULL UNIQUE,
        CONSTRAINT PK_NATIVE_STATUS_ID PRIMARY KEY(ID)
);
------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE FEDERAL_STATUS (
    ID INT NOT NULL UNIQUE IDENTITY(1,1),
    STATUS CHAR(21) NOT NULL UNIQUE,
    CODE CHAR(2) NOT NULL UNIQUE,
        CONSTRAINT PK_FEDERAL_STATUS_ID PRIMARY KEY(ID)
);
------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE USER (
    ID INT NOT NULL UNIQUE IDENTITY(1,1),
    USERNAME CHAR(255) NOT NULL UNIQUE,
    EMAIL CHAR(255),
    PASSWORD_HASH BINARY(64) NOT NULL,
        CONSTRAINT PK_USERS_ID PRIMARY KEY(ID)
);
------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE ISLAND (
    ID INT NOT NULL UNIQUE IDENTITY(1,1),
    NAME CHAR(8),
    NICKNAME CHAR(19),
        CONSTRAINT PK_ISLAND_ID PRIMARY KEY(ID)
);
------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------
1 DEPENDENCY
------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE GENUS (
    ID INT NOT NULL UNIQUE IDENTITY(1,1),
    NAME VARCHAR(50) NOT NULL UNIQUE,
    ORDER_ID INT NOT NULL DEFAULT(0),
        CONSTRAINT PK_GENUS_ID PRIMARY KEY(ID),
        CONSTRAINT FK_GENUS_ORDER_ID FOREIGN KEY(ORDER_ID) REFERENCES ORDER(ID)
);
------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------
2 DEPENDENCIES
------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE SUBMISSION (
    ID INT NOT NULL UNIQUE IDENTITY(1,1),
    DATE DATETIME,
    REPORT TEXT,
    USER_ID INT NOT NULL,
    SPECIES_ID INT NOT NULL,
        CONSTRAINT PK_SUBMISSIONS_ID PRIMARY KEY(ID),
        CONSTRAINT FK_SUBMISSION_USER_ID FOREIGN KEY(USER_ID) REFERENCES USER(ID),
        CONSTRAINT FK_SUBMISSION_SPECIES_ID FOREIGN KEY(SPECIES_ID) REFERENCES SPECIES(ID)
);
------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE GEOLOCATION (
    ID INT NOT NULL UNIQUE IDENTITY(1,1),
    COORDINATE GEOGRAPHY,
    SUBMISSION_ID INT NOT NULL,
    ISLAND_ID INT NOT NULL,
        CONSTRAINT PK_GEOLOCATION_ID PRIMARY KEY(ID),
        CONSTRAINT FK_GEOLOCATION_SUBMISSION_ID FOREIGN KEY(SUBMISSION_ID) REFERENCES SUBMISSION(ID),
        CONSTRAINT FK_GEOLOCATION_ISLAND_ID FOREIGN KEY(ISLAND_ID) REFERENCES ISLAND(ID)
);
------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------
6 DEPENDENCIES
------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE SPECIES (
    ID INT NOT NULL UNIQUE IDENTITY(1,1),
    SPECIES_NAME VARCHAR(50) NOT NULL,
    SUBSPECIES_NAME VARCHAR(50),
    DESCRIPTION TEXT,
    STORY TEXT,
    GENUS_ID INT NOT NULL,
    COMMON_NAME_ID INT NOT NULL,
    HAWAIIAN_NAME_ID INT NOT NULL,
    NATIVE_STATUS_ID INT NOT NULL,
    INVASIVE_STATUS_ID INT NOT NULL,
    FEDERAL_STATUS_ID INT NOT NULL,
        CONSTRAINT UNIQUE(SPECIES_NAME, SUBSPECIES_NAME),
        CONSTRAINT PK_SPECIES_ID PRIMARY KEY(ID),
        CONSTRAINT FK_SPECIES_GENUS_ID FOREIGN KEY(GENUS_ID) REFERENCES GENUS(ID),
        CONSTRAINT FK_SPECIES_COMMON_NAME_ID FOREIGN KEY(COMMON_NAME_ID) REFERENCES COMMON_NAME(ID),
        CONSTRAINT FK_SPECIES_HAWAIIAN_NAME_ID FOREIGN KEY(HAWAIIAN_NAME_ID) REFERENCES HAWAIIAN_NAME(ID),
        CONSTRAINT FK_SPECIES_NATIVE_STATUS_ID FOREIGN KEY(NATIVE_STATUS_ID) REFERENCES NATIVE_STATUS(ID),
        CONSTRAINT FK_SPECIES_INVASIVE_STATUS_ID FOREIGN KEY(INVASIVE_STATUS_ID) REFERENCES INVASIVE_STATUS(ID),
        CONSTRAINT FK_SPECIES_FEDERAL_STATUS_ID FOREIGN KEY(FEDERAL_STATUS_ID) REFERENCES FEDERAL_STATUS(ID)
);
------------------------------------------------------------------------------------------------------------------------------------------
