create or replace view v_emir_delivery_positions as
select  'RAN'                                                                   as data_source,                     -- assumes RAN = Rolfe + Nolan
        to_date( t.hosttran_run_date, 'YYYYMMDD' )                              as tev_datum,                       -- stamdard server time
        null                                                                    as comments,
        'ETD1.0'                                                                as version,
        'Transaction'                                                           as message_type,
        'New'                                                                   as action,                          -- Cancel / Modify only relevant when cancelling or modifying a previously submitted position message for a lifecycle event.
        'Trade'                                                                 as transaction_type,                -- all trade messages are type trade (positions hold lifecycle events)
        '0BLT17BBV6'                                                            as uti_prefix,                      -- assumes same uti prefix as per OTCs.
        'E02' ||
        l.lei ||
        t.hosttran_serial_number                                                as uti_value,                       -- TRADES ONLY - follows "method 2" definition of uti_value but not necessary to linke trade UTI to position UTI
        pm.primary_asset_class                                                  as primary_asset_class,             -- check product mapping...
        'true'                                                                  as exchange_traded_derivative_ind,  -- assumption: all trades are ETDs
        to_char( to_date( t.hosttran_run_date, 'YYYYMMDD' ), 'YYYY-MM-DD' ) ||
        '00:00:00'                                                            as as_of_date_time,
        'E02' ||
        l.lei ||
        substr( t.hosttran_data, 1, 10 ) || '.' ||
        t.hosttran_serial_number                                                as event_id_party_1,                -- Unique identifier for the trade / position life-cycle event = position UTI + trade serial number
        null                                                                    as event_id_party_2,                -- assume party 2 = BJB.
        null                                                                    as additional_repository_1_prefix,
        null                                                                    as additional_repository_1_value,
        'ESMA'                                                                  as reporting_obligation_party_1,    -- both FC and NFC+?
        null                                                                    as reporting_obligation_party_2,
        'LEI'                                                                   as trade_party_1_prefix,
        l.lei                                                                   as trade_party_1_value,             -- note, via Host, all counterparty ZRNR numbers represent the client internal broker @ BJB and not the client ZR specifically.
        'LEI'                                                                   as trade_party_2_prefix,            -- rule based: is always BJB
        'PNWU8O0BLT17BBV61Y18'                                                  as trade_party_2_value,             -- rule based: is always BJB
        cpty_1.domicile_country_code                                            as trade_party_1_domicile,          -- assume account holder
        null                                                                    as trade_party_2_domicile,
        cpty_1.branch_country_code                                              as trade_party_1_branch,            -- assume ISO country code for the account opening branch.
        null                                                                    as trade_party_2_branch,
        l.trade_prty1_corp                                                      as trade_party_1_corporate_sector,
        null                                                                    as trade_party_2_corporate_sector,
        l.trade_prty1_fin                                                       as trade_party_1_fe_jurisdiction,
        l.trade_prty1_nonfin                                                    as trade_party_1_nfe_jurisdiction,
        null                                                                    as trade_party_2_fe_jurisdiction,
        null                                                                    as trade_party_2_nfe_jurisdiction,
        'LEI'                                                                   as broker_id_party_1_prefix,        -- rule based: is always BJB
        'PNWU8O0BLT17BBV61Y18'                                                  as broker_id_party_1_value,         -- rule based: is always BJB
        null                                                                    as broker_id_party_2_prefix,
        null                                                                    as broker_id_party_2_value,
        'LEI'                                                                   as data_submitter_prefix,           -- rule based: is always BJB
        'PNWU8O0BLT17BBV61Y18'                                                  as data_submitter_value,            -- rule based: is always BJB
        'LEI'                                                                   as submitted_for_prefix,
        l.lei                                                                   as submitted_for_value,
        'Independent'                                                           as reporting_delegation_model,      -- “Full” would mean that we report for ourselves and the client, but we only report for the client, so it must be “Independent"
        'LEI'                                                                   as clearing_broker_party_1_prefix,  -- rule based: is always BJB (perspective of the client)
        'PNWU8O0BLT17BBV61Y18'                                                  as clearing_broker_party_1_value,   -- rule based: is always BJB (perspective of the client)
        null                                                                    as clearing_broker_party_2_prefix,
        null                                                                    as clearing_broker_party_2_value,
        'LEI'                                                                   as execution_agent_party_1_prefix,  -- rule based: is always BJB
        'PNWU8O0BLT17BBV61Y18'                                                  as execution_agent_party_1_value,   -- rule based: is always BJB
        null                                                                    as execution_agent_party_2_prefix,
        null                                                                    as execution_agent_party_2_value,
        l.ben_id_prty1_pre                                                      as beneficiary_id_party_1_prefix,
        l.ben_id_prty1_val                                                      as beneficiary_id_party_1_value,
        null                                                                    as beneficiary_id_party_2_prefix,
        null                                                                    as beneficiary_id_party_2_value,
        'Principal'                                                             as trading_capacity_party_1,
        null                                                                    as trading_capacity_party_2,
        'LEI'                                                                   as buyer_prefix_party_1,            -- assumption: new deals buyer 1 = client takes the risk; 2 = broker takes risk
        case when t.hosttran_type in( '001', '003' )
             then l.lei
             else 'PNWU8O0BLT17BBV61Y18'
        end                                                                     as buyer_value_party_1,             -- assumption: new deals buyer 1 = client takes the risk; 2 = broker takes risk
        null                                                                    as buyer_prefix_party_2,            -- assumption: don't report for party 2
        null                                                                    as buyer_value_party_2,             -- assumption: don't report for party 2
        l.prty_region                                                           as party_region,
        cpty_1.counterparty_region                                              as counterparty_region,
        nvl( trim(l.dl_com_act_prty1), 'false' )                                      as directly_linked_party_1,
        'false'                                                                 as directly_linked_party_2,
        null                                                                    as mtm_value_party_1,               -- n/a for trade reporting
        null                                                                    as mtm_value_party_2,               -- n/a for trade reporting
        null                                                                    as mtm_value_ccp,                   -- n/a for trade reporting
        null                                                                    as mtm_currency_party_1,            -- n/a for trade reporting
        null                                                                    as mtm_currency_party_2,            -- n/a for trade reporting
        null                                                                    as mtm_currency_ccp,                -- n/a for trade reporting
        null                                                                    as valuation_datetime_party_1,      -- n/a for trade reporting
        null                                                                    as valuation_datetime_party_2,      -- n/a for trade reporting
        null                                                                    as valuation_datetime_ccp,          -- n/a for trade reporting
        null                                                                    as valuation_type_party_1,          -- n/a for trade reporting
        null                                                                    as valuation_type_party_2,          -- n/a for trade reporting
        null                                                                    as valuation_type_ccp,              -- n/a for trade reporting
        null                                                                    as collateralized_party_1,          -- @ Rolfe+Nolan: impossible to know if the trade is collateralised or not
        null                                                                    as collateralized_party_2,          -- @ Rolfe+Nolan: impossible to know if the trade is collateralised or not
        null                                                                    as collateral_portfolio_party_1,    -- @ Rolfe+Nolan: impossible to know if the trade is collateralised or not
        null                                                                    as collateral_portfolio_party_2,    -- @ Rolfe+Nolan: impossible to know if the trade is collateralised or not
        null                                                                    as collateral_value_party_1,        -- @ Rolfe+Nolan: impossible to know if the trade is collateralised or not
        null                                                                    as collateral_value_party_2,        -- @ Rolfe+Nolan: impossible to know if the trade is collateralised or not
        null                                                                    as collateral_currency_party_1,     -- @ Rolfe+Nolan: impossible to know if the trade is collateralised or not
        null                                                                    as collateral_currency_party_2,     -- @ Rolfe+Nolan: impossible to know if the trade is collateralised or not
        'E'                                                                     as product_id_prefix_1,
        pm.product_id                                                           as product_id_value_1,              -- check product mapping
        'E'                                                                     as product_id_prefix_2,
        case when t.hosttran_type in( '001', '002', '005' )
             then 'FU'
             else 'OP'
        end                                                                     as product_id_value_2,
        case when pm.isin is not null
             then pm.isin
             else pm.name
        end                                                                     as underlying_asset,
        pm.currency_code                                                        as notional_currency,
        pm.currency_code                                                        as settlement_currency,
        null                                                                    as prior_uti_prefix,
        null                                                                    as prior_uti_value,
        t.hosttran_serial_number                                                as transaction_reference_id,        -- Unique identifier for the trade / position life-cycle event = position UTI + trade serial number
        l.lei ||
        substr( t.hosttran_data, 1, 10 )                                        as internal_trade_reference,
        case when um.underlying is not null
             then 'MIC'
             else 'FREEFORMATTEXT'
        end                                                                     as execution_venue_prefix,
        case when um.underlying is not null
             then um.mic_code
             else 'RAN.' || t.hosttran_market
        end                                                                     as execution_venue_value,
        case when t.hosttran_type = '007'
             then to_number( substr( t.hosttran_data, 643, 20 ) )               -- close_prem_rate
             else null
        end                                                                     as price_notation_price,
        'Price'                                                                 as price_notation_price_type,
        case when t.hosttran_type = '007'
             then to_number( substr( t.hosttran_data, 686, 20 ) ) * -1          -- closing_premium * -1
             else null
        end                                                                     as notional_amount,
        case when t.hosttran_type = '007'
             then to_number( substr( t.hosttran_data,  47, 20 ) )               -- lot_size
             else null
        end                                                                     as price_multiplier,
        case when t.hosttran_type = '007'
             then to_number( substr( t.hosttran_data,  37, 10 ) )               -- lots
             else null
        end                                                                     as quantity,
        case when t.hosttran_type = '007'
             then to_number( substr( t.hosttran_data, 463, 20 ) ) +
                  to_number( substr( t.hosttran_data, 563, 20 ) )               -- close_com_value1 + close_tax1
             else null
        end                                                                     as upfront_payment,
        pm.currency_code                                                        as upfront_payment_ccy,
        'C'                                                                     as delivery_type,
        to_char( to_date( t.hosttran_run_date, 'YYYYMMDD' ), 'YYYY-MM-DD' ) ||
        case when t.hosttran_type = '007'
             then 'T' || trim( substr( t.hosttran_data, 985,  6 ) ) || ':00' || 'Z' -- c_time_stamp
             else null
        end                                                                     as execution_timestamp,
        to_char( to_date( t.hosttran_run_date, 'YYYYMMDD' ), 'YYYY-MM-DD' )     as effective_date,
        case when t.hosttran_type = '007'
             then to_char( to_date( substr( t.hosttran_data,  67,  8 ), 'YYYYMMDD' ), 'YYYY-MM-DD' ) -- prompt_date
             else null
        end                                                                     as scheduled_termination_date,
        to_char( to_date( t.hosttran_run_date, 'YYYYMMDD' ), 'YYYY-MM-DD' )     as termination_date,
        to_char( to_date( t.hosttran_cash_value_date, 'YYYYMMDD' ), 'YYYY-MM-DD' ) as date_of_settlement,
        'true'                                                                  as cleared,
        null                                                                    as clearing_timestamp,
        null                                                                    as clearing_dco_prefix,
        null                                                                    as clearing_dco_value,
        'false'                                                                 as intragroup,
        case when t.hosttran_type = '007'
             then substr( t.hosttran_data, 101,  2 )                            -- option_type
             else null
        end                                                                     as option_type,
        case when t.hosttran_type = '007'
             then decode( substr( t.hosttran_data, 732,  1 ), 'A', 'American', 'European' ) -- option_style
             else null
        end                                                                     as option_style,
        case when t.hosttran_type = '007'
             then to_number( substr( t.hosttran_data,  95,  6 ) )               -- series
             else null
        end                                                                     as option_strike_price,
        pm.currency_code                                                        as option_strike_price_ccy,
        to_char( to_date( t.hosttran_run_date, 'YYYYMMDD' ), 'YYYY-MM-DD' )     as lifecycle_event_effective_date,
        'Compression'                                                           as lifecycle_event,
-- IRS only
        null                                                                    as fixed_rate_of_leg_1,
        null                                                                    as fixed_rate_of_leg_2,
        null                                                                    as fixed_rate_day_count,
        null                                                                    as fixed_leg_pay_frequency,
        null                                                                    as floating_rate_pay_frequency,
        null                                                                    as floating_rate_reset_frequency,
        null                                                                    as floating_rate_of_leg_1,
        null                                                                    as floating_rate_of_leg_2,
-- FX only
        null                                                                    as currency_2,
        null                                                                    as exchange_rate_1,
        null                                                                    as forward_exchange_rate,
        null                                                                    as exchange_rate_basis,
-- Commodities only
        pm.commodity_base                                                       as commodity_base,
        pm.commodity_detail                                                     as commodity_details,
        null                                                                    as delivery_point_or_zone,
        null                                                                    as interconnection_point,
        null                                                                    as load_type,
        null                                                                    as delivery_start_date,
        null                                                                    as delivery_end_date,
        null                                                                    as contract_capacity,
        null                                                                    as quantity_unit,
        null                                                                    as price_time_interval_quantities,
--
        null                                                                    as clearing_threshold_party_1,
        null                                                                    as clearing_threshold_party_2,
        'true'                                                                  as compression,
        to_char( to_date( t.hosttran_run_date, 'YYYYMMDD' ), 'YYYY-MM-DD' ) ||
        ' 00:00:00'                                                            as confirmation_date_time,
        'Electronic'                                                            as confirmation_type,
        'ESMA'                                                                  as mandatory_clearing_indicator,
        'ETD.message.ID.' ||
        'E02' ||
        l.lei ||
        substr( t.hosttran_data, 1, 10 ) || '.' ||
        t.hosttran_serial_number                                                as data_submitter_message_id,
        null                                                                    as name_of_trade_party_1,
        null                                                                    as name_of_trade_party_2, 
        case when pm.isin is not null
             then 'ISIN'
             else 'FREEFORMATTEXT'
        end                                                                     as underlying_asset_id_type,
        null                                                                    as master_agreement_type,
        null                                                                    as master_agreement_version
from    ubs_mic_codes um,
        ran_product_map pm,
        counterparty_details cpty_1,
        ran_host_tran t,
        control_table_lei l
where   um.underlying = pm.isin
and     pm.market = t.hosttran_market
and     pm.market_code = t.hosttran_market_code
and     pm.security_number = t.hosttran_security_number
and     cpty_1.zrnr = l.zrnr
and     t.hosttran_account_type = '1'                                           -- client positions only
and     t.hosttran_zrnr = l.zrnr
and     l.reporting = 'Y'
and     l.otc_etd like '%ETD%'
and     substr( t.hosttran_data, 1, 10 ) = '14031700M6'
and     trim( t.hosttran_serial_number ) != '99999'
;
