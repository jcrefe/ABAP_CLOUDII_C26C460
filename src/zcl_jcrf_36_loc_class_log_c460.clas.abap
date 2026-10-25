CLASS zcl_jcrf_36_loc_class_log_c460 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.



    METHODS: my_meth.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: ls_algo TYPE ty_first.
*          ls_algo2 type ty_first2.

ENDCLASS.



CLASS zcl_jcrf_36_loc_class_log_c460 IMPLEMENTATION.
  METHOD my_meth.

    DATA(lo_local) = NEW lcl_helper(  ).

  ENDMETHOD.

ENDCLASS.


