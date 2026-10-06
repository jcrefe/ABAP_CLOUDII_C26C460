CLASS zcl_jcrf_20_cargo_pla_log_c460 DEFINITION
  PUBLIC
  INHERITING FROM zcl_jcrf_19_polymor_log_c460
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: airplane_type REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jcrf_20_cargo_pla_log_c460 IMPLEMENTATION.
  METHOD airplane_type.
    rv_airplane_type = 'Cargo plane'.
  ENDMETHOD.

ENDCLASS.
