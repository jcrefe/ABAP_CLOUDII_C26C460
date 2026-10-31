CLASS zcl_jcrf_47_sales_dep_log_c460 DEFINITION INHERITING FROM zcl_jcrf_46_observer_log_c460
  PUBLIC

  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: state TYPE string.

    METHODS: on_modified_state REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jcrf_47_sales_dep_log_c460 IMPLEMENTATION.
  METHOD on_modified_state.
    me->state = ev_new_state.
  ENDMETHOD.

ENDCLASS.
