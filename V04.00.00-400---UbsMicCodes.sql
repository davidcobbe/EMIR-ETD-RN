--------------------------------------------------------
--  DDL for Table ubs_mic_codes
--------------------------------------------------------

  CREATE TABLE ubs_mic_codes
   (underlying VARCHAR2(12 BYTE), 
    mic_code VARCHAR2(12 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE( INITIAL 131072 NEXT 1048576 MINEXTENTS 1
  FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT);