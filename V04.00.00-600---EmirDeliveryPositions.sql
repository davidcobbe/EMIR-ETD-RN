CREATE TABLE EMIR_DELIVERY_POSITIONS
  (
    DATA_SOURCE VARCHAR2(3 BYTE),
    TEV_DATUM DATE,
    COMMENTS                       VARCHAR2(4 BYTE),
    VERSION                        VARCHAR2(6 BYTE),
    MESSAGE_TYPE                   VARCHAR2(11 BYTE),
    ACTION                         VARCHAR2(3 BYTE),
    TRANSACTION_TYPE               VARCHAR2(5 BYTE),
    UTI_PREFIX                     VARCHAR2(10 BYTE),
    UTI_VALUE                      VARCHAR2(28 BYTE),
    PRIMARY_ASSET_CLASS            VARCHAR2(255 BYTE),
    EXCHANGE_TRADED_DERIVATIVE_IND VARCHAR2(4 BYTE),
    AS_OF_DATE_TIME                VARCHAR2(20 BYTE),
    EVENT_ID_PARTY_1               VARCHAR2(39 BYTE),
    EVENT_ID_PARTY_2               VARCHAR2(4 BYTE),
    ADDITIONAL_REPOSITORY_1_PREFIX VARCHAR2(4 BYTE),
    ADDITIONAL_REPOSITORY_1_VALUE  VARCHAR2(4 BYTE),
    REPORTING_OBLIGATION_PARTY_1   VARCHAR2(4 BYTE),
    REPORTING_OBLIGATION_PARTY_2   VARCHAR2(4 BYTE),
    TRADE_PARTY_1_PREFIX           VARCHAR2(3 BYTE),
    TRADE_PARTY_1_VALUE            VARCHAR2(20 BYTE),
    TRADE_PARTY_2_PREFIX           VARCHAR2(3 BYTE),
    TRADE_PARTY_2_VALUE            VARCHAR2(20 BYTE),
    TRADE_PARTY_1_DOMICILE         VARCHAR2(8 BYTE),
    TRADE_PARTY_2_DOMICILE         VARCHAR2(4 BYTE),
    TRADE_PARTY_1_BRANCH           VARCHAR2(8 BYTE),
    TRADE_PARTY_2_BRANCH           VARCHAR2(4 BYTE),
    TRADE_PARTY_1_CORPORATE_SECTOR VARCHAR2(1 BYTE),
    TRADE_PARTY_2_CORPORATE_SECTOR VARCHAR2(4 BYTE),
    TRADE_PARTY_1_FE_JURISDICTION  VARCHAR2(4 BYTE),
    TRADE_PARTY_1_NFE_JURISDICTION VARCHAR2(4 BYTE),
    TRADE_PARTY_2_FE_JURISDICTION  VARCHAR2(4 BYTE),
    TRADE_PARTY_2_NFE_JURISDICTION VARCHAR2(4 BYTE),
    BROKER_ID_PARTY_1_PREFIX       VARCHAR2(3 BYTE),
    BROKER_ID_PARTY_1_VALUE        VARCHAR2(20 BYTE),
    BROKER_ID_PARTY_2_PREFIX       VARCHAR2(4 BYTE),
    BROKER_ID_PARTY_2_VALUE        VARCHAR2(4 BYTE),
    DATA_SUBMITTER_PREFIX          VARCHAR2(3 BYTE),
    DATA_SUBMITTER_VALUE           VARCHAR2(20 BYTE),
    SUBMITTED_FOR_PREFIX           VARCHAR2(3 BYTE),
    SUBMITTED_FOR_VALUE            VARCHAR2(20 BYTE),
    REPORTING_DELEGATION_MODEL     VARCHAR2(11 BYTE),
    CLEARING_BROKER_PARTY_1_PREFIX VARCHAR2(3 BYTE),
    CLEARING_BROKER_PARTY_1_VALUE  VARCHAR2(20 BYTE),
    CLEARING_BROKER_PARTY_2_PREFIX VARCHAR2(4 BYTE),
    CLEARING_BROKER_PARTY_2_VALUE  VARCHAR2(4 BYTE),
    EXECUTION_AGENT_PARTY_1_PREFIX VARCHAR2(3 BYTE),
    EXECUTION_AGENT_PARTY_1_VALUE  VARCHAR2(20 BYTE),
    EXECUTION_AGENT_PARTY_2_PREFIX VARCHAR2(4 BYTE),
    EXECUTION_AGENT_PARTY_2_VALUE  VARCHAR2(4 BYTE),
    BENEFICIARY_ID_PARTY_1_PREFIX  VARCHAR2(14 BYTE),
    BENEFICIARY_ID_PARTY_1_VALUE   VARCHAR2(50 BYTE),
    BENEFICIARY_ID_PARTY_2_PREFIX  VARCHAR2(4 BYTE),
    BENEFICIARY_ID_PARTY_2_VALUE   VARCHAR2(4 BYTE),
    TRADING_CAPACITY_PARTY_1       VARCHAR2(9 BYTE),
    TRADING_CAPACITY_PARTY_2       VARCHAR2(4 BYTE),
    BUYER_PREFIX_PARTY_1           VARCHAR2(3 BYTE),
    BUYER_VALUE_PARTY_1            VARCHAR2(20 BYTE),
    BUYER_PREFIX_PARTY_2           VARCHAR2(4 BYTE),
    BUYER_VALUE_PARTY_2            VARCHAR2(4 BYTE),
    PARTY_REGION                   VARCHAR2(6 BYTE),
    COUNTERPARTY_REGION            VARCHAR2(8 BYTE),
    DIRECTLY_LINKED_PARTY_1        VARCHAR2(5 BYTE),
    DIRECTLY_LINKED_PARTY_2        VARCHAR2(5 BYTE),
    MTM_VALUE_PARTY_1              VARCHAR2(4 BYTE),
    MTM_VALUE_PARTY_2              VARCHAR2(4 BYTE),
    MTM_VALUE_CCP                  VARCHAR2(4 BYTE),
    MTM_CURRENCY_PARTY_1           VARCHAR2(4 BYTE),
    MTM_CURRENCY_PARTY_2           VARCHAR2(4 BYTE),
    MTM_CURRENCY_CCP               VARCHAR2(4 BYTE),
    VALUATION_DATETIME_PARTY_1     VARCHAR2(4 BYTE),
    VALUATION_DATETIME_PARTY_2     VARCHAR2(4 BYTE),
    VALUATION_DATETIME_CCP         VARCHAR2(4 BYTE),
    VALUATION_TYPE_PARTY_1         VARCHAR2(4 BYTE),
    VALUATION_TYPE_PARTY_2         VARCHAR2(4 BYTE),
    VALUATION_TYPE_CCP             VARCHAR2(4 BYTE),
    COLLATERALIZED_PARTY_1         VARCHAR2(4 BYTE),
    COLLATERALIZED_PARTY_2         VARCHAR2(4 BYTE),
    COLLATERAL_PORTFOLIO_PARTY_1   VARCHAR2(4 BYTE),
    COLLATERAL_PORTFOLIO_PARTY_2   VARCHAR2(4 BYTE),
    COLLATERAL_VALUE_PARTY_1       VARCHAR2(4 BYTE),
    COLLATERAL_VALUE_PARTY_2       VARCHAR2(4 BYTE),
    COLLATERAL_CURRENCY_PARTY_1    VARCHAR2(4 BYTE),
    COLLATERAL_CURRENCY_PARTY_2    VARCHAR2(4 BYTE),
    PRODUCT_ID_PREFIX_1            VARCHAR2(1 BYTE),
    PRODUCT_ID_VALUE_1             VARCHAR2(255 BYTE),
    PRODUCT_ID_PREFIX_2            VARCHAR2(1 BYTE),
    PRODUCT_ID_VALUE_2             VARCHAR2(2 BYTE),
    UNDERLYING_ASSET               VARCHAR2(255 BYTE),
    NOTIONAL_CURRENCY              VARCHAR2(255 BYTE),
    SETTLEMENT_CURRENCY            VARCHAR2(255 BYTE),
    PRIOR_UTI_PREFIX               VARCHAR2(4 BYTE),
    PRIOR_UTI_VALUE                VARCHAR2(4 BYTE),
    TRANSACTION_REFERENCE_ID       VARCHAR2(5 BYTE),
    INTERNAL_TRADE_REFERENCE       VARCHAR2(30 BYTE),
    EXECUTION_VENUE_PREFIX         VARCHAR2(14 BYTE),
    EXECUTION_VENUE_VALUE          VARCHAR2(12 BYTE),
    PRICE_NOTATION_PRICE           NUMBER,
    PRICE_NOTATION_PRICE_TYPE      VARCHAR2(5 BYTE),
    NOTIONAL_AMOUNT                NUMBER,
    PRICE_MULTIPLIER               NUMBER,
    QUANTITY                       NUMBER,
    UPFRONT_PAYMENT                NUMBER,
    UPFRONT_PAYMENT_CCY            VARCHAR2(255 BYTE),
    DELIVERY_TYPE                  VARCHAR2(1 BYTE),
    EXECUTION_TIMESTAMP            VARCHAR2(21 BYTE),
    EFFECTIVE_DATE                 VARCHAR2(10 BYTE),
    SCHEDULED_TERMINATION_DATE     VARCHAR2(10 BYTE),
    TERMINATION_DATE               VARCHAR2(10 BYTE),
    DATE_OF_SETTLEMENT             VARCHAR2(10 BYTE),
    CLEARED                        VARCHAR2(4 BYTE),
    CLEARING_TIMESTAMP             VARCHAR2(4 BYTE),
    CLEARING_DCO_PREFIX            VARCHAR2(4 BYTE),
    CLEARING_DCO_VALUE             VARCHAR2(4 BYTE),
    INTRAGROUP                     VARCHAR2(5 BYTE),
    OPTION_TYPE                    VARCHAR2(2 BYTE),
    OPTION_STYLE                   VARCHAR2(8 BYTE),
    OPTION_STRIKE_PRICE            NUMBER,
    OPTION_STRIKE_PRICE_CCY        VARCHAR2(255 BYTE),
    LIFECYCLE_EVENT_EFFECTIVE_DATE VARCHAR2(10 BYTE),
    LIFECYCLE_EVENT                VARCHAR2(11 BYTE),
    FIXED_RATE_OF_LEG_1            VARCHAR2(4 BYTE),
    FIXED_RATE_OF_LEG_2            VARCHAR2(4 BYTE),
    FIXED_RATE_DAY_COUNT           VARCHAR2(4 BYTE),
    FIXED_LEG_PAY_FREQUENCY        VARCHAR2(4 BYTE),
    FLOATING_RATE_PAY_FREQUENCY    VARCHAR2(4 BYTE),
    FLOATING_RATE_RESET_FREQUENCY  VARCHAR2(4 BYTE),
    FLOATING_RATE_OF_LEG_1         VARCHAR2(4 BYTE),
    FLOATING_RATE_OF_LEG_2         VARCHAR2(4 BYTE),
    CURRENCY_2                     VARCHAR2(4 BYTE),
    EXCHANGE_RATE_1                VARCHAR2(4 BYTE),
    FORWARD_EXCHANGE_RATE          VARCHAR2(4 BYTE),
    EXCHANGE_RATE_BASIS            VARCHAR2(4 BYTE),
    COMMODITY_BASE                 VARCHAR2(255 BYTE),
    COMMODITY_DETAILS              VARCHAR2(255 BYTE),
    DELIVERY_POINT_OR_ZONE         VARCHAR2(4 BYTE),
    INTERCONNECTION_POINT          VARCHAR2(4 BYTE),
    LOAD_TYPE                      VARCHAR2(4 BYTE),
    DELIVERY_START_DATE            VARCHAR2(4 BYTE),
    DELIVERY_END_DATE              VARCHAR2(4 BYTE),
    CONTRACT_CAPACITY              VARCHAR2(4 BYTE),
    QUANTITY_UNIT                  VARCHAR2(4 BYTE),
    PRICE_TIME_INTERVAL_QUANTITIES VARCHAR2(4 BYTE),
    CLEARING_THRESHOLD_PARTY_1     VARCHAR2(4 BYTE),
    CLEARING_THRESHOLD_PARTY_2     VARCHAR2(4 BYTE),
    COMPRESSION                    VARCHAR2(4 BYTE),
    CONFIRMATION_DATE_TIME         VARCHAR2(20 BYTE),
    CONFIRMATION_TYPE              VARCHAR2(10 BYTE),
    MANDATORY_CLEARING_INDICATOR   VARCHAR2(4 BYTE),
    DATA_SUBMITTER_MESSAGE_ID      VARCHAR2(54 BYTE),
    NAME_OF_TRADE_PARTY_1          VARCHAR2(4 BYTE),
    NAME_OF_TRADE_PARTY_2          VARCHAR2(4 BYTE),
    UNDERLYING_ASSET_ID_TYPE       VARCHAR2(14 BYTE),
    MASTER_AGREEMENT_TYPE          VARCHAR2(4 BYTE),
    MASTER_AGREEMENT_VERSION       VARCHAR2(4 BYTE)
  )
  SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING STORAGE
  (
    INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645 PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT
  );