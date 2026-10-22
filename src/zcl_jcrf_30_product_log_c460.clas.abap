CLASS zcl_jcrf_30_product_log_c460 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      return_category RETURNING VALUE(rv_category) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: category TYPE string VALUE 'AS'.
ENDCLASS.



CLASS zcl_jcrf_30_product_log_c460 IMPLEMENTATION.
  METHOD return_category.
    rv_category = me->category.
  ENDMETHOD.

ENDCLASS.
