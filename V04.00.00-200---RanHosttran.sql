--------------------------------------------------------
--  DDL for Table RAN_HOST_TRAN
--------------------------------------------------------

  CREATE TABLE RAN_HOST_TRAN 
   (	HOSTTRAN_TYPE VARCHAR2(3 BYTE), 
	HOSTTRAN_SERIAL_NUMBER VARCHAR2(5 BYTE), 
	HOSTTRAN_ACCOUNT_TYPE VARCHAR2(1 BYTE), 
	HOSTTRAN_LEDGER VARCHAR2(6 BYTE), 
	HOSTTRAN_GROUP_ACCT_CODE VARCHAR2(6 BYTE), 
	HOSTTRAN_ZRNR VARCHAR2(8 BYTE), 
	FILLER_1 VARCHAR2(17 BYTE), 
	HOSTTRAN_GROUP_REF1 VARCHAR2(2 BYTE), 
	HOSTTRAN_GROUP_REF2 VARCHAR2(2 BYTE), 
	HOSTTRAN_GROUP_REF3 VARCHAR2(2 BYTE), 
	HOSTTRAN_GROUP_REF4 VARCHAR2(2 BYTE), 
	HOSTTRAN_GROUP_REF5 VARCHAR2(2 BYTE), 
	HOSTTRAN_CLEARING_CODE VARCHAR2(2 BYTE), 
	HOSTTRAN_OTHER_SIDE_LEDGER VARCHAR2(6 BYTE), 
	HOSTTRAN_FAS_CURRENCY VARCHAR2(2 BYTE), 
	HOSTTRAN_SWIFT_WRG_CD VARCHAR2(3 BYTE), 
	FILLLER_2 VARCHAR2(17 BYTE), 
	HOSTTRAN_BASE_CURRENCY VARCHAR2(2 BYTE), 
	HOSTTRAN_MARKET VARCHAR2(4 BYTE), 
	HOSTTRAN_MARKET_CODE VARCHAR2(4 BYTE), 
	HOSTTRAN_SECURITY_NUMBER VARCHAR2(6 BYTE), 
	HOSTTRAN_BOERSENPLATZ_CD VARCHAR2(3 BYTE), 
	FILLER_3 VARCHAR2(17 BYTE), 
	HOSTTRAN_FAS_ACN VARCHAR2(4 BYTE), 
	HOSTTRAN_UNDERLYING_TYPE VARCHAR2(1 BYTE), 
	HOSTTRAN_UNDERLYING_CURRENCY VARCHAR2(2 BYTE), 
	HOSTTRAN_VALUE_DATE VARCHAR2(8 BYTE), 
	HOSTTRAN_CASH_VALUE_DATE VARCHAR2(8 BYTE), 
	HOSTTRAN_SECURITY_VALUE_DATE VARCHAR2(8 BYTE), 
	HOSTTRAN_RUN_DATE VARCHAR2(8 BYTE), 
	HOSTTRAN_FILLER_1 VARCHAR2(1 BYTE), 
	HOSTTRAN_ORDER_REFERENCE VARCHAR2(10 BYTE), 
	HOSTTRAN_FAS_TRANS_TYPE VARCHAR2(3 BYTE), 
	HOSTTRAN_STATUS VARCHAR2(1 BYTE), 
	HOSTTRAN_MINOR_CODE VARCHAR2(6 BYTE), 
	HOSTTRAN_OTHER_SIDE_MINOR_CODE VARCHAR2(6 BYTE), 
	HOSTTRAN_TIME_CREATED VARCHAR2(5 BYTE), 
	HOSTTRAN_OPT_SECURITY_NUMBER VARCHAR2(6 BYTE), 
	HOSTTRAN_FILLER_2 VARCHAR2(1 BYTE), 
	HOSTTRAN_LEDGER_CHARGE_CURR VARCHAR2(2 BYTE), 
	HOSTTRAN_COMMOD_EU_REPORT VARCHAR2(1 BYTE), 
	HOSTTRAN_ACCOUNT_EU_REPORT VARCHAR2(1 BYTE), 
	HOSTTRAN_TRANS_NUMBER VARCHAR2(5 BYTE), 
	HOSTTRAN_TRANS_OPERATOR_ID VARCHAR2(6 BYTE), 
	HOSTTRAN_FILLER_3 VARCHAR2(17 BYTE), 
	HOSTTRAN_DATA VARCHAR2(1768 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE( INITIAL 11534336 NEXT 1048576 MINEXTENTS 1
  FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) ;