CLASS zcl_jcrf_22_polym_int_log_c460 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: zif_jcrf_04_log_c460.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jcrf_22_polym_int_log_c460 IMPLEMENTATION.

  METHOD zif_jcrf_04_log_c460~define_company.
    rv_company = 'Company Europe....'.
  ENDMETHOD.

ENDCLASS.
