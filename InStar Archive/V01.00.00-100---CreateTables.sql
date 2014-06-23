-- Auto generated using ErWin SQL Builder v1.0
-- Tables columns created using domains: stringId, stringCode, stringName, numeric, date

create table counterparties
( counterparty_ID                 varchar2( 8 ),
  counterparty_name               varchar2( 256 ),
  counterparty_domicile           varchar2( 32 ),
  tax_id                          varchar2( 8 ),
  eligible_for_tax                varchar2( 8 ) );

create table securities
( security_id                     varchar2( 8 ),
  security_name                   varchar2( 256 ),
  product_type                    varchar2( 8 ) );

create table transactions
( transaction_date                date,
  transaction_ID                  varchar2( 8 ),
  counterparty_ID                 varchar2( 8 ),
  security_ID                     varchar2( 8 ),
  transaction_currency            varchar2( 8 ),
  transaction_type                varchar2( 8 ),
  quantity                        number( 9 ),
  price_mtm                       number( 9 ) );

create table iftt_extract
( transaction_ID                  varchar2( 8 ),
  counterparty_ID                 varchar2( 8 ),
  counterparty_name               varchar2( 256 ),
  counterparty_domicile           varchar2( 32 ),
  tax_id                          varchar2( 8 ),
  security_name                   varchar2( 256 ),
  product_type                    varchar2( 8 ),
  transaction_date                date,
  eligible_for_tax                varchar2( 8 ),
  transaction_currency            varchar2( 8 ),
  quantity                        number( 9 ),
  transaction_value               number( 9 ),
  tax_amount                      number( 9 ) );
