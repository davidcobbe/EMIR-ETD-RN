create or replace view v_fx_rates as
select  currency_sold,
        currency_bought,
        case when rate_inversion = 'true' then 1/cross_rate else cross_rate end as cross_rate
from    dim_rates
union
select  currency_bought,
        currency_sold,
        1/(case when rate_inversion = 'true' then 1/cross_rate else cross_rate end) as cross_rate
from    dim_rates
union
select  currency_bought,
        currency_bought,
        1
from    dim_rates
union
select  currency_sold,
        currency_sold,
        1
from    dim_rates
;