@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consume Scalar Function'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_jcrf_37_log_c460
  as select from /dmo/carrier
{
  key carrier_id                                           as CarrierId,
      name                                                 as Name,
      currency_code                                        as CurrencyCode,
      ZSF_JCRF_VAT_BY_AIRLI_C460( pAirline => carrier_id ) as VAT

}
