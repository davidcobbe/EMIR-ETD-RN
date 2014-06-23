-- change the transaction identifiers to long strings..

alter table transactions
modify ( transaction_ID varchar2( 12 ) );

alter table iftt_extract
modify ( transaction_ID varchar2( 12 ) );
