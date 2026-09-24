CLASS zcl_jcrf_09_met_inh_2_log_c460 DEFINITION INHERITING FROM zcl_jcrf_08_meth_inh_log_c460
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      set_name REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jcrf_09_met_inh_2_log_c460 IMPLEMENTATION.
  METHOD set_name.

*    TYPES: BEGIN OF ty_name,
*             name TYPE string,
*           END OF ty_name.

    DATA: ls_name TYPE ty_name.

    ls_name-name = 'Name1'.

    super->set_name( is_name =  ls_name ).

    ls_name-name = 'Name2'.

    APPEND ls_name TO me->gt_name.

*   My own logic
    me->set_name( is_name = ls_name ).
  ENDMETHOD.

ENDCLASS.
