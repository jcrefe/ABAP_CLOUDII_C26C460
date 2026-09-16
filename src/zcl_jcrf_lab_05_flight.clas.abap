CLASS zcl_jcrf_lab_05_flight DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      exist_carrier_id IMPORTING iv_carrier_id  TYPE /dmo/carrier_id
                          RETURNING VALUE(rv_bool) TYPE abap_boolean.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_jcrf_lab_05_flight IMPLEMENTATION.
  METHOD exist_carrier_id.
    CLEAR rv_bool.

    SELECT COUNT( * )
      FROM /dmo/flight
     WHERE carrier_id EQ @iv_carrier_id.
    IF sy-subrc EQ 0.
      rv_bool = 'X'.
    ENDIF.

  ENDMETHOD.

ENDCLASS.
