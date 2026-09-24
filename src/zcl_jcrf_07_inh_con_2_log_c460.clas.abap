CLASS zcl_jcrf_07_inh_con_2_log_c460 DEFINITION INHERITING FROM zcl_jcrf_06_inh_const_log_c460
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      constructor
        IMPORTING
          iv_view_type TYPE string
          iv_box       TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jcrf_07_inh_con_2_log_c460 IMPLEMENTATION.
  METHOD constructor.

    super->constructor( iv_view_type = iv_view_type ).

    me->box = iv_box.

  ENDMETHOD.

ENDCLASS.
