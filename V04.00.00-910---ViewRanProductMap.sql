create or replace view v_ran_product_map as
select  distinct
        p.market,
        p.market_code,
        p.security_number,
        p.isin_futures_no,
        p.isin_options_no,
        p.isin_underlying_no,
        i.instrument_id,
        i.telekurs_number,
        i.valor_number,
        i.isin,
        i.currency_code,
        i.name,
        i.industry_sector,
        i.primary_holder,
        i.instrument_division,
        i.instrument_classification,
        i.instrument_type_code,
        i.instrument_type,
        i.instrument_class_group_code,
        i.instrument_class_group,
        i.instrument_class_subgroup_code,
        i.instrument_class_subgroup,
        i.instrument_class_category_code,
        i.instrument_class_category,
        case when i.instrument_class_category_code in( 12 )
             then 'ForeignExchange'
             when i.instrument_class_category_code in( 35, 36, 39, 41, 117 )
             then 'Commodity'
             when i.instrument_class_category_code in( 23, 24, 116, 122 )
             then 'Equity'
             when i.instrument_class_category_code in( 5, 16, 112, 121 )
             then 'InterestRate'
             else 'Other'
        end                                                                     as primary_asset_class,
        case when i.instrument_class_category_code in( 12 )
             then 'FX'
             when i.instrument_class_category_code in( 35, 36, 39, 41, 117 )
             then 'CO'
             when i.instrument_class_category_code in( 23, 24, 116, 122 )
             then 'EQ'
             when i.instrument_class_category_code in( 5, 16, 112, 121 )
             then 'IR'
             else 'OT'
        end                                                                     as product_id,
        case when i.instrument_id in( '000274205', '003948758', '001784679', '001654916', '000274203',
                                      '000188436', '000943744', '000274202', '000544999', '000274225',
                                      '000274230', '000274224', '000274223', '000274213', '000274222' )
             then 'AG'
             when i.instrument_id in( '002291143', '000274214', '001594836', '000274551', '013729828' )
             then 'EN'
             when i.instrument_id in( '000274089', '000274206', '000274212' )
             then 'EX'
             when i.instrument_id in( '002861894', '012554687', '000998675', '000274227', '000274207',
                                      '000274233' )
             then 'IN'
             when i.instrument_id in( '000274605', '000274603', '000274604', '000274607', '000274234',
                                      '000274609', '000205843', '004258191', '002546720', '000274695',
                                      '000274690', '000287633', '001262335', '000274702' )
             then 'ME'
             else null
        end                                                                     as commodity_base,
        case when i.instrument_id in( '000274205', '000188436', '000943744', '000274225', '000274230',
                                      '000274224', '000274223', '000274213', '000274222' )
             then 'GO'
             when i.instrument_id in( '000274202', '000544999' )
             then 'LI'
             when i.instrument_id in( '002291143', '000274551' )
             then 'NG'
             when i.instrument_id in( '000274605', '000274603', '000274604', '000274607', '000274234',
                                      '000274609', '000205843' )
             then 'NP'
             when i.instrument_id in( '000274214', '001594836', '013729828' )
             then 'OI'
             when i.instrument_id in( '004258191', '002546720', '000274695', '000274690', '000287633',
                                      '001262335', '000274702' )
             then 'PR'
             when i.instrument_id in( '003948758', '001784679', '001654916', '000274203' )
             then 'SO'
             else null
        end                                                                     as commodity_detail
from    dim_instrument i,
        ran_host_open_positions p
where   i.instrument_id(+) = substr( p.isin_underlying_no, 3, 9 )
and     p.market is not null;
