-----------------------------------------------------------------------------
SET IDENTITY_INSERT [dbo].[ORDER] ON;
INSERT INTO [ORDER](ID, [NAME]) VALUES(0, 'N/A')
SET IDENTITY_INSERT [dbo].[ORDER] OFF;
-----------------------------------------------------------------------------
SET IDENTITY_INSERT [dbo].COMMON_NAME ON;
INSERT INTO COMMON_NAME(ID, [NAME]) VALUES(0, 'N/A')
SET IDENTITY_INSERT [dbo].COMMON_NAME OFF;
-----------------------------------------------------------------------------
SET IDENTITY_INSERT [dbo].HAWAIIAN_NAME ON;
INSERT INTO HAWAIIAN_NAME(ID, [NAME]) VALUES(0, 'N/A')
SET IDENTITY_INSERT [dbo].HAWAIIAN_NAME OFF;
-----------------------------------------------------------------------------
SET IDENTITY_INSERT [dbo].NATIVE_STATUS ON;
INSERT INTO NATIVE_STATUS(ID, [STATUS]) VALUES(0, 'N/A')
SET IDENTITY_INSERT [dbo].NATIVE_STATUS OFF;
-----------------------------------------------------------------------------
SET IDENTITY_INSERT [dbo].INVASIVE_STATUS ON;
INSERT INTO INVASIVE_STATUS(ID, [STATUS]) VALUES(0, 'N/A')
SET IDENTITY_INSERT [dbo].INVASIVE_STATUS OFF;
-----------------------------------------------------------------------------
SET IDENTITY_INSERT [dbo].FEDERAL_STATUS ON;
INSERT INTO FEDERAL_STATUS(ID, [STATUS], CODE) VALUES(0, 'N/A', '~~')
SET IDENTITY_INSERT [dbo].FEDERAL_STATUS OFF;
-----------------------------------------------------------------------------
SET IDENTITY_INSERT [dbo].[USER] ON;
INSERT INTO [USER](ID, [USERNAME], EMAIL, PASSWORD_HASH) VALUES(0, 'TEST', 'TEST@TEST.TEST', HASHBYTES('SHA2_512', 'TEST'))
SET IDENTITY_INSERT [dbo].[USER] OFF;
-----------------------------------------------------------------------------
SET IDENTITY_INSERT [dbo].ISLAND ON;
INSERT INTO ISLAND(ID, [NAME]) VALUES(0, 'N/A')
SET IDENTITY_INSERT [dbo].ISLAND OFF;
-----------------------------------------------------------------------------
SET IDENTITY_INSERT [dbo].GENUS ON;
INSERT INTO GENUS(ID, [NAME], ORDER_ID) VALUES(0, 'N/A', 0)
SET IDENTITY_INSERT [dbo].GENUS OFF;
-----------------------------------------------------------------------------
SET IDENTITY_INSERT [dbo].SPECIES ON;
INSERT INTO SPECIES(ID, SPECIES_NAME, SUBSPECIES_NAME, [DESCRIPTION], STORY, GENUS_ID, COMMON_NAME_ID, HAWAIIAN_NAME_ID, NATIVE_STATUS_ID, INVASIVE_STATUS_ID, FEDERAL_STATUS_ID) VALUES(0, 'N/A', 'N/A', 'N/A', 'N/A', 0, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].SPECIES OFF;
-----------------------------------------------------------------------------
