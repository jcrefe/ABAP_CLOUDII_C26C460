CLASS zcl_jcrf_01_exec_log_c460 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jcrf_01_exec_log_c460 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA(lo_inst) = NEW zcl_jcrf_lab_09_account(  ).

    lo_inst->set_iban( 'ES12312345645465' ).

    out->write( lo_inst->get_iban( ) ).


*    zcl_jcrf_lab_08_work_record=>open_new_record(
*      iv_date       = '19880726'
*      iv_first_name = 'Carlos'
*      iv_last_name  = 'Reyes'
**  iv_surname    =
*    ).

*    DATA(lo_inst) = NEW zcl_jcrf_lab_07_student(  ).
*
*    lo_inst->set_birth_date( '19880726' ).

*    lo_inst->birth_date = '19880726'.

*    out->write( zcl_jcrf_lab_06_elements=>gc_constant_01 ).
*    out->write( zcl_jcrf_lab_06_elements=>gc_constant_02 ).
*    out->write( zcl_jcrf_lab_06_elements=>gc_constant_03 ).
*    out->write( zcl_jcrf_lab_06_elements=>gc_constant_04 ).

*    DATA: ls_object TYPE zcl_jcrf_lab_06_elements=>ty_elem_objects.
*
*    DATA(lo_inst) = NEW zcl_jcrf_lab_06_elements(  ).
*
*    lo_inst->set_object(
*      iv_class     = 'Elements'
*      iv_instance  = 'Instancia'
*      iv_reference = 'Reference' ).
*
*      out->write( lo_inst->ms_object ).

*    DATA(lo_inst) = NEW zcl_jcrf_lab_05_flight(  ).
*
*    DATA lv_carrier_id TYPE /dmo/flight-carrier_id.
*
*    lv_carrier_id = 'SQ'.
*
*    IF lo_inst->exist_carrier_id( lv_carrier_id ).
*      out->write(  |{ 'La compañía aérea' } { lv_carrier_id } { 'existe' }| ).
*    ELSE.
*      out->write(  |{ 'La compañía aérea' } { lv_carrier_id } { 'no existe' }| ).
*    ENDIF.
*
*    lv_carrier_id = 'WW'.
*
*    IF lo_inst->exist_carrier_id( lv_carrier_id ).
*      out->write(  |{ 'La compañía aérea' } { lv_carrier_id } { 'existe' }| ).
*    ELSE.
*      out->write(  |{ 'La compañía aérea' } { lv_carrier_id } { 'no existe' }| ).
*    ENDIF.

*    DATA(lo_inst) = NEW zcl_jcrf_lab_04_person(  ).
*
*    lo_inst->set_age( 38 ).
*
*    lo_inst->get_age(
*      IMPORTING
*        ev_age = DATA(lv_age) ).
*
*    out->write( lv_age ).

*    out->write( 'Hola Logaly' ).
*
*    DATA(lo_inst) = NEW zcl_jcrf_02_basics_log_c460(  ).
*
*    lo_inst->set_attr(
*      iv_name    = 'Juan'
*      iv_address = 'Gladiolas N1' ).
*
*    lo_inst->get_attr(
*      IMPORTING
*        ev_name    = DATA(lv_name)
*        ev_address = DATA(lv_addr) ).
*
*    out->write( |{ lv_name }-{ lv_addr }| ).
*
*    zcl_jcrf_02_basics_log_c460=>set_name( 'Pedro' ).
*
*    zcl_jcrf_02_basics_log_c460=>get_name(
*      IMPORTING
*        ev_name = lv_name ).
*
*    out->write( lv_name ).


  ENDMETHOD.

ENDCLASS.
