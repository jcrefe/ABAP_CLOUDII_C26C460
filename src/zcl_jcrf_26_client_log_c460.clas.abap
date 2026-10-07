CLASS zcl_jcrf_26_client_log_c460 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      set_credit_card IMPORTING io_credit_card TYPE REF TO zcl_jcrf_25_cred_card_log_c460,
      get_credit_card RETURNING VALUE(ro_credit_card) TYPE REF TO zcl_jcrf_25_cred_card_log_c460.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: credit_card TYPE REF TO zcl_jcrf_25_cred_card_log_c460.

ENDCLASS.



CLASS zcl_jcrf_26_client_log_c460 IMPLEMENTATION.
  METHOD get_credit_card.
    ro_credit_card = credit_card.
  ENDMETHOD.

  METHOD set_credit_card.
    credit_card = io_credit_card.
  ENDMETHOD.

ENDCLASS.
