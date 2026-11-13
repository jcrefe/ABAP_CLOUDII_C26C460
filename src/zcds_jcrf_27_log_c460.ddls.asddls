@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zcds_jcrf_27_log_c460
  provider contract transactional_query
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
      _Booking : redirected to composition child zcds_jcrf_28_log_c460,
      _Customer
}
