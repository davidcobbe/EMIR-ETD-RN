-- change to increase precision

alter table transactions
modify ( price_mtm number( 9,2 ) );

alter table iftt_extract
modify ( transaction_value number( 12,2 ) );

alter table iftt_extract
modify ( tax_amount number( 9,2 ) );
