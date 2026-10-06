CLASS zcl_jcrf_16_inter_2_log_c460 DEFINITION INHERITING FROM zcl_jcrf_15_interface_log_c460
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: my_meth.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jcrf_16_inter_2_log_c460 IMPLEMENTATION.
  METHOD my_meth.
    me->zif_jcrf_01_log_c460~conn_id = '0002'.
  ENDMETHOD.

ENDCLASS.
