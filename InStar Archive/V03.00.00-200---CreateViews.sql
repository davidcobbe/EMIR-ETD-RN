create or replace view v_fx_rates as
select  currency_sold,
        currency_bought,
        case when rate_inversion = 'true' then 1/cross_rate else cross_rate end as cross_rate
from    dim_rates
union
select  currency_bought,
        currency_sold,
        1/(case when rate_inversion = 'true' then 1/cross_rate else cross_rate end) as cross_rate
from    dim_rates;


create or replace view v_position_values as
select  p.account_id,
        p.product_id,
        e.etf_name,
        p.position_quantity,
        p.position_currency,
        e.etf_price_usd * x.cross_rate as etf_price_ccy,
        p.position_quantity * e.etf_price_usd * x.cross_rate as position_value
from    src_currency_etfs e,
        src_etf_positions p,
        v_fx_rates x
where   e.etf_code = p.product_id
and     p.position_currency = x.currency_bought
and     x.currency_sold = 'USD';