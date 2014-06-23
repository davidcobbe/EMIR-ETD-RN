 CREATE TABLE ran_product_map 
   (
   market	varchar2(255),
   market_code	varchar2(255),
   security_number	varchar2(255),
   isin_futures_no	varchar2(255),
   isin_options_no	varchar2(255),
   isin_underlying_no	varchar2(255),
   instrument_id	varchar2(255),
   telekurs_number	varchar2(255),
   valor_number	varchar2(255),
   isin	varchar2(255),
   currency_code	varchar2(255),
   name	varchar2(255),
   industry_sector	varchar2(255),
   primary_holder	varchar2(255),
   instrument_division	varchar2(255),
   instrument_classification	varchar2(255),
   instrument_type_code	varchar2(255),
   instrument_type	varchar2(255),
   instrument_class_group_code	varchar2(255),
   instrument_class_group	varchar2(255),
   instrument_class_subgroup_code	varchar2(255),
   instrument_class_subgroup	varchar2(255),
   instrument_class_category_code	varchar2(255),
   instrument_class_category	varchar2(255),
   primary_asset_class	varchar2(255),
   product_id	varchar2(255),
   commodity_base	varchar2(255),
   commodity_detail varchar2(255)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE( INITIAL 524288 NEXT 131072 MINEXTENTS 1
  FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT);