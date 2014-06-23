create table ST_HOSTOPEN_RN
(
SERIAL_NUMBER	VARCHAR2(5),
ACCOUNT_TYPE	VARCHAR2(1),
LEDGER	VARCHAR2(6),
GROUP_ACCT_CODE	VARCHAR2(6),
ZRNR	VARCHAR2(8),
GROUP_REF1	VARCHAR2(2),
GROUP_REF2	VARCHAR2(2),
GROUP_REF3	VARCHAR2(2),
GROUP_REF4	VARCHAR2(2),
GROUP_REF5	VARCHAR2(2),
CLEARING_CODE	VARCHAR2(2),
OTHER_SIDE_LEDGER	VARCHAR2(6),
FAS_CURRENCY	VARCHAR2(2),
SWIFT_WRG_CD	VARCHAR2(3),
BASE_CURRENCY	VARCHAR2(2),
MARKET	VARCHAR2(4),
MARKET_CODE	VARCHAR2(4),
SECURITY_NUMBER	VARCHAR2(6),
BOERSENPLATZ_CD	VARCHAR2(3),
FAS_ACN	VARCHAR2(4),
PROMPT_DATE	VARCHAR2(8),
TRADE_TYPE	VARCHAR2(2),
SERIES	VARCHAR2(6),
DECLARATION_DATE	VARCHAR2(8),
OPEN_CLOSE	VARCHAR2(1),
RUN_DATE	VARCHAR2(8),
VALUE_DATE	VARCHAR2(8),
CASH_VALUE_DATE	VARCHAR2(8),
SECURITY_VALUE_DATE	VARCHAR2(8),
SERIAL	VARCHAR2(10),
LOTS	VARCHAR2(20),
LOT_SIZE	VARCHAR2(20),
LINK_NUMBER	VARCHAR2(10),
PREMIUM_RATE	VARCHAR2(20),
PREMIUM	VARCHAR2(20),
PRICE	VARCHAR2(20),
MARKET_RATE	VARCHAR2(20),
MARGIN	VARCHAR2(20),
IN_OR_OUT	VARCHAR2(1),
IN_OR_OUT_VALUE	VARCHAR2(20),
COMMISSION_RATE1	VARCHAR2(20),
COMMISSION_RATE2	VARCHAR2(20),
COMMISSION_RATE3	VARCHAR2(20),
COMMISSION_RATE4	VARCHAR2(20),
COMMISSION_RATE5	VARCHAR2(20),
COMMISSION_CURR1	VARCHAR2(2),
COMMISSION_CURR2	VARCHAR2(2),
COMMISSION_CURR3	VARCHAR2(2),
COMMISSION_CURR4	VARCHAR2(2),
COMMISSION_CURR5	VARCHAR2(2),
COMMISSION_VALUE1	VARCHAR2(20),
COMMISSION_VALUE2	VARCHAR2(20),
COMMISSION_VALUE3	VARCHAR2(20),
COMMISSION_VALUE4	VARCHAR2(20),
COMMISSION_VALUE5	VARCHAR2(20),
COMMISSION_GROUP	VARCHAR2(3),
TAX1	VARCHAR2(20),
TAX2	VARCHAR2(20),
TAX3	VARCHAR2(20),
TAX4	VARCHAR2(20),
TAX5	VARCHAR2(20),
BS_AT_STRIKE_PRICE	VARCHAR2(20),
BS_AT_MARKET_PRICE	VARCHAR2(20),
UNDERLYING_PRICE	VARCHAR2(20),
UNDERLYING_VALUE	VARCHAR2(20),
EXERCISE_VALUE	VARCHAR2(20),
EXERCISE_LOTS	VARCHAR2(20),
PAY_HOLD	VARCHAR2(1),
UNDERLYING_TYPE	VARCHAR2(1),
UNDERLYING_CURRENCY	VARCHAR2(2),
FX_ASSOCIATED_ACN	VARCHAR2(4),
MINOR_ACCOUNT_FLAG	VARCHAR2(1),
MINOR_ACCOUNT_CODE	VARCHAR2(6),
LAST_TRADED_DATE	VARCHAR2(8),
COVERED_FLAGS	VARCHAR2(1),
POST_COMMIS_UPFRONT	VARCHAR2(1),
SPARE_FLAG2	VARCHAR2(1),
SPARE_FLAG3	VARCHAR2(1),
OPT_SECURITY_NUMBER	VARCHAR2(6),
TRADE_COMMISSION_TYPE	VARCHAR2(1),
INSTRUMENT_DESCR	VARCHAR2(24),
EXERCISE_ASSIGN	VARCHAR2(2),
YESTERDAY_PRICE	VARCHAR2(20),
YESTERDAY_VALUE	VARCHAR2(20),
COMMOD_SHORT_DESCR	VARCHAR2(6),
COMMOD_LONG_DESCR	VARCHAR2(50),
DECLARATION_TIME	VARCHAR2(8),
OPTION_STYLE	VARCHAR2(1),
SERIES_QUOTE_RULE	VARCHAR2(2),
EXER_VALUE_DATE_RULE	VARCHAR2(2),
PREM_QUOTE_RULE	VARCHAR2(2),
PREM_VALUE_DATE_RULE	VARCHAR2(2),
MARGIN_RULE	VARCHAR2(2),
SETTLE_CURRENCY	VARCHAR2(2),
PAYMENT_ADDRESS	VARCHAR2(1),
TRADE_GOUP1	VARCHAR2(3),
TRADE_GOUP2	VARCHAR2(3),
TRADE_GOUP3	VARCHAR2(3),
TRADE_GOUP4	VARCHAR2(3),
TRADE_GOUP5	VARCHAR2(3),
OPERATOR_ID	VARCHAR2(6),
MEMO	VARCHAR2(25),
FX_BASE_CURRENCY	VARCHAR2(2),
POSTED_MARKTOM	VARCHAR2(20),
SETTLE_RATE	VARCHAR2(20),
ENTRY_DATE	VARCHAR2(8),
AMEND_DATE	VARCHAR2(8),
OTC_COUNTRY	VARCHAR2(2),
OTC_FULL_DESCR	VARCHAR2(24),
OTC_SHORT_DESCR	VARCHAR2(6),
OTC_FX_TRADED_CNCY	VARCHAR2(2),
OTC_UNDERLYING_ACN	VARCHAR2(4),
OTC_UNDERLYING_PRMT	VARCHAR2(8),
OTC_PRICE_SRCE_RULE	VARCHAR2(2),
OTC_PREM_VALUE_DATE	VARCHAR2(8),
OTC_PREM_VALUE_DELAY	VARCHAR2(2),
OTC_BARRIER_TYPE	VARCHAR2(2),
OTC_AVE_START_DATE	VARCHAR2(8),
OTC_AVE_END_DATE	VARCHAR2(8),
OTC_FLAVOUR	VARCHAR2(1),
OTC_SPREAD_CAP_PRICE	VARCHAR2(20),
OTC_SPREAD_FLR_PRICE	VARCHAR2(20),
OTC_BARRIER_STRIKE	VARCHAR2(20),
OTC_THEO_PRICE	VARCHAR2(20),
OTC_THEO_DELTA	VARCHAR2(20),
OTC_THEO_GAMMA	VARCHAR2(20),
OTC_THEO_THETA	VARCHAR2(20),
OTC_THEO_VEGA	VARCHAR2(20),
OTC_THEO_RHO	VARCHAR2(20),
OTC_AVERAGE_PRICE	VARCHAR2(20),
OTC_NO_OF_SAMPLES	VARCHAR2(20),
OTC_EXTREME_PRICE	VARCHAR2(20),
OTC_CHOICE_DATE	VARCHAR2(8),
OTC_AVERAGE_SAMPLES1	VARCHAR2(20),
OTC_AVERAGE_SAMPLES2	VARCHAR2(20),
OTC_AVERAGE_SAMPLES3	VARCHAR2(20),
OTC_AVERAGE_SAMPLES4	VARCHAR2(20),
OTC_AVERAGE_SAMPLES5	VARCHAR2(20),
OTC_MEMO	VARCHAR2(100),
FULL_SERIES	VARCHAR2(20),
COMB_ORDER_TYPE	VARCHAR2(1),
REG_CODE	VARCHAR2(2),
ORDER_NUMBER	VARCHAR2(16),
AMENDED_FLAG	VARCHAR2(1),
TIME_IN	VARCHAR2(8),
TIME_BROKER_RECEIPT	VARCHAR2(8),
TIME_EXECUTED	VARCHAR2(8),
TIME_OUT	VARCHAR2(8),
TIME_CTR_ORDER_NUMBER	VARCHAR2(8),
TIME_SPARE_1	VARCHAR2(8),
TIME_SPARE_2	VARCHAR2(8),
TIME_SPARE_3	VARCHAR2(8),
TRADER_ID	VARCHAR2(6),
TICKET_NUMBER	VARCHAR2(9),
TAKE_UP_IND	VARCHAR2(1),
MERGE_FLAG	VARCHAR2(1),
SLIP_NUMBER	VARCHAR2(16),
LIFFE_SERIAL_NUM	VARCHAR2(12),
COMM_TAGGING_REF	VARCHAR2(5),
FEE_CODE	VARCHAR2(1),
NEW_SPARE_FLAG_2	VARCHAR2(1),
NEW_SPARE_FLAG_3	VARCHAR2(1),
CASH_REQ	VARCHAR2(20),
CASH_COLL_REQ	VARCHAR2(20),
ORIG_EXCHANGE	VARCHAR2(1),
CUSTOMER_ACC	VARCHAR2(10),
BROKER_BUS_TYPE	VARCHAR2(1),
DISC_MARGIN	VARCHAR2(20),
COMP_DELTA	VARCHAR2(20),
OPEN_POSITION_RULE	VARCHAR2(1),
POSTING_RULE	VARCHAR2(1),
CABINET_TRADE	VARCHAR2(1),
EFP_TRADE	VARCHAR2(1),
ISIN_FUTURES_NO	VARCHAR2(12),
ISIN_OPTIONS_NO	VARCHAR2(12),
ISIN_UNDERLYING_NO	VARCHAR2(12),
LEDGER_ACCOUNT_NAME	VARCHAR2(25),
PREPRI_HEADER_1	VARCHAR2(25),
PREPRI_HEADER_2	VARCHAR2(25),
PREPRI_HEADER_3	VARCHAR2(25),
PREPRI_HEADER_4	VARCHAR2(25),
PREPRI_HEADER_5	VARCHAR2(25),
PREPRI_HEADER_6	VARCHAR2(25),
ORIGINAL_CURRENCY	VARCHAR2(2),
EURO_EXCHANGE_RATE	VARCHAR2(20),
EURO_MULTIPLY_DIVIDE	VARCHAR2(1)
)