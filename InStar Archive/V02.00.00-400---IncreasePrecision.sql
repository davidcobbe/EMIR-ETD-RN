-- change to increase precision

alter table transactions
modify ( price_mtm number( 21,8 ) );

alter table iftt_extract
modify ( transaction_value number( 21,8 ) );

alter table iftt_extract
modify ( tax_amount number( 21,8 ) );
