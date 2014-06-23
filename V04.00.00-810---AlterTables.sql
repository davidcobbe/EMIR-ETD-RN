alter table emir_delivery_positions modify( uti_value varchar2( 40 ) );
alter table emir_delivery_positions modify( mtm_value_party_1 varchar2( 25 ) );
alter table emir_delivery_positions modify( mtm_value_ccp varchar2( 25 ) );
alter table emir_delivery_positions modify( VALUATION_DATETIME_PARTY_1 varchar2( 20 ) );
alter table emir_delivery_positions modify( VALUATION_DATETIME_ccp varchar2( 20 ) );
alter table emir_delivery_positions modify( VALUATION_TYPE_PARTY_1 varchar2( 12 ) );
alter table emir_delivery_positions modify( VALUATION_TYPE_ccp varchar2( 12 ) );
alter table emir_delivery_positions modify( DATA_SUBMITTER_MESSAGE_ID varchar2( 256 ) );
