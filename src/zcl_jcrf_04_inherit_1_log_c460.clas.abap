CLASS zcl_jcrf_04_inherit_1_log_c460 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA: architecture TYPE string VALUE '64 bits'.

    METHODS:
      get_architecture
        RETURNING VALUE(rv_architecture) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jcrf_04_inherit_1_log_c460 IMPLEMENTATION.

  METHOD get_architecture.
    rv_architecture = me->architecture.
  ENDMETHOD.

ENDCLASS.
