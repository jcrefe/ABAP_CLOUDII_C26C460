CLASS zcl_jcrf_17_abstract_log_c460 DEFINITION ABSTRACT
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      merchandise_output
        RETURNING VALUE(rv_merchandise) TYPE string,

      production_line ABSTRACT
        RETURNING VALUE(rv_production) TYPE string,

      input_products ABSTRACT
        RETURNING VALUE(rv_input) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jcrf_17_abstract_log_c460 IMPLEMENTATION.
  METHOD merchandise_output.
    rv_merchandise = 'Merchandise output'.
  ENDMETHOD.

ENDCLASS.
