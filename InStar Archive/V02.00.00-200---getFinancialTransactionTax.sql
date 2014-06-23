-- create simple mapping function

create or replace package body map_iftt as
  procedure getFinancialTransactionTax is
    cursor c_all_transactions
    is
      select  t.transaction_id,
              t.counterparty_id,
              c.counterparty_name,
              c.counterparty_domicile,
              c.tax_id,
              s.security_name,
              s.product_type,
              t.transaction_date,
              lower( nvl( x.is_european_member, 'FALSE' ) )                     as eligible_for_tax,
              t.transaction_currency,
              t.quantity,
              t.quantity * t.price_mtm                                          as transaction_value,
              t.quantity * t.price_mtm * 0.1                                    as tax_amount
      from    countries x,
              securities s,
              counterparties c,
              transactions t
      where   x.country_name(+) = c.counterparty_domicile
      and     s.security_id = t.security_id
      and     c.counterparty_id = t.counterparty_id;
  begin
    for c_taxes in c_all_transactions loop
      insert
      into    iftt_extract
      values  ( c_taxes.transaction_ID,
                c_taxes.counterparty_ID,
                c_taxes.counterparty_name,
                c_taxes.counterparty_domicile,
                c_taxes.tax_id,
                c_taxes.security_name,
                c_taxes.product_type,
                c_taxes.transaction_date,
                c_taxes.eligible_for_tax,
                c_taxes.transaction_currency,
                c_taxes.quantity,
                c_taxes.transaction_value,
                c_taxes.tax_amount );
    end loop;
    commit;
  end getFinancialTransactionTax;
end map_iftt;
/
