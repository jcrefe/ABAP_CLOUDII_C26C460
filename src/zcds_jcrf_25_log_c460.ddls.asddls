@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface - Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zcds_jcrf_25_log_c460
  provider contract transactional_interface
  as projection on zcds_jcrf_23_log_c460
{
  key TravelId,
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalPrice,
      CurrencyCode,
      Description,
      Status,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,
      /* Associations */
      _Agency,
      _Booking : redirected to composition child zcds_jcrf_26_log_c460,
      _Customer
}
