CLASS zcl_jcrf_10_narrowing_log_c460 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      walk
        RETURNING VALUE(rv_walk) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jcrf_10_narrowing_log_c460 IMPLEMENTATION.
  METHOD walk.
    rv_walk = 'The animal walk'.
  ENDMETHOD.

ENDCLASS.
