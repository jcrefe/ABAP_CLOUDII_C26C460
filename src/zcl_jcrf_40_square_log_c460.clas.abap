CLASS zcl_jcrf_40_square_log_c460 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_jcrf_06_log_c460 .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jcrf_40_square_log_c460 IMPLEMENTATION.

  METHOD zif_jcrf_06_log_c460~draw_shape.
    rv_shape = 'Square'.
  ENDMETHOD.
ENDCLASS.
