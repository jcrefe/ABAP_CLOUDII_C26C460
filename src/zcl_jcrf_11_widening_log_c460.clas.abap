CLASS zcl_jcrf_11_widening_log_c460 DEFINITION INHERITING FROM zcl_jcrf_10_narrowing_log_c460
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      walk REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jcrf_11_widening_log_c460 IMPLEMENTATION.
  METHOD walk.
    rv_walk = 'The lion walk'.
  ENDMETHOD.

ENDCLASS.
