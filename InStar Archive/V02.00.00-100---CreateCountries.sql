-- Static and reference data for EU member states.
-- Determines whether Italian financial transaction tax applies.

create table countries
( country_name			  varchar2( 256 ),
  is_european_member		  varchar2( 8 ) );
