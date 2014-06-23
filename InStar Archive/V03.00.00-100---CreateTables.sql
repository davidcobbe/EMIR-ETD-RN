-- Auto generated using ErWin SQL Builder v1.0
-- Tables columns created using domains: stringId, stringCode, stringName, numeric, date

create table src_currency_etfs
( etf_code              varchar2( 8 ),
  etf_name              varchar2( 256 ),
  etf_price_usd         number( 12, 4 ),
  etf_price_change      number( 12, 9 ),
  etf_assets            number( 9 ),
  etf_volume            number( 9 ),
  etf_ytd_gain_loss     number( 12, 9 ) );

create table dim_currencies
( currency_code         varchar2( 8 ),
  currency              varchar2( 256 ) );

create table dim_rates
( currency_sold         varchar2( 8 ),
  currency_bought       varchar2( 8 ),
  cross_rate            number( 12, 9 ),
  rate_inversion        varchar2( 8 ) );

create table src_etf_positions
( account_id            varchar2( 8 ),
  product_id            varchar2( 8 ),
  position_currency     varchar2( 8 ),
  position_quantity     number( 9 ) );