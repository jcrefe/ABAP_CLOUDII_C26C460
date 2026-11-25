@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consume Table Function'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_jcrf_38_log_c460

  with parameters
    pCountryCode : land1

  as select from /dmo/travel as Travel

  association [0..*] to ZTF_JCRF_01_LOG_C460 as _BookingsByCustomer on _BookingsByCustomer.TravelId = $projection.TravelId

{
  key Travel.travel_id                                                        as TravelId,
      Travel.agency_id                                                        as AgencyId,
      _BookingsByCustomer(pCountryCode: $parameters.pCountryCode).customer_id as CustomerId,
      Travel.begin_date                                                       as BeginDate,
      Travel.end_date                                                         as EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      booking_fee                                                             as BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      total_price                                                             as TotalPrice,
      currency_code                                                           as CurrencyCode,
      description                                                             as Description,
      status                                                                  as Status,
      _BookingsByCustomer(pCountryCode: $parameters.pCountryCode).last_name   as LastName

}
