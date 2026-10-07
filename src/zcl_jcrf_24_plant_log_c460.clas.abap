CLASS zcl_jcrf_24_plant_log_c460 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      assign_company IMPORTING io_company      TYPE REF TO zif_jcrf_04_log_c460
                     RETURNING VALUE(rv_plant) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_jcrf_24_plant_log_c460 IMPLEMENTATION.
  METHOD assign_company.
    rv_plant = |Plant was assigned to ... { io_company->define_company( ) }|.
  ENDMETHOD.

ENDCLASS.
