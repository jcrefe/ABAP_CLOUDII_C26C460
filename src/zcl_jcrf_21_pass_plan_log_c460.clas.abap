CLASS zcl_jcrf_21_pass_plan_log_c460 DEFINITION INHERITING FROM zcl_jcrf_19_polymor_log_c460
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: airplane_type REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jcrf_21_pass_plan_log_c460 IMPLEMENTATION.
  METHOD airplane_type.
    rv_airplane_type = 'Passenger Plane'.
  ENDMETHOD.

ENDCLASS.
