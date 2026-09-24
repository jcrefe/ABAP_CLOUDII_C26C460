CLASS zcl_jcrf_08_meth_inh_log_c460 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES: BEGIN OF ty_name,
             name TYPE string,
           END OF ty_name.

    DATA: gt_name TYPE STANDARD TABLE OF ty_name.

    METHODS:
      set_name
        IMPORTING
          is_name TYPE ty_name.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jcrf_08_meth_inh_log_c460 IMPLEMENTATION.
  METHOD set_name.
    APPEND is_name TO gt_name.
  ENDMETHOD.

ENDCLASS.
