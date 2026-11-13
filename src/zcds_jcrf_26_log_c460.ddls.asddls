@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface - Child Entity'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_jcrf_26_log_c460
  as projection on zcds_jcrf_24_log_c460
{
  key TravelId,
  key BookingId,
      BookingDate,
      CustomerId,
      CarrierId,
      ConnectionId,
      FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      FlightPrice,
      CurrencyCode,
      /* Associations */
      _Customer,
      _Travel: redirected to parent zcds_jcrf_25_log_c460
}
