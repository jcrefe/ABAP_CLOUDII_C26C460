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

*   Factorial
    DATA(lo_fact) = NEW zcl_jcrf_49_bus_proc_log_c460(  ).

    lo_fact->get_factorial(
      EXPORTING
        iv_number    = 4
      IMPORTING
        ev_factorial = DATA(lv_factorial) ).

    out->write( lv_factorial ).

*Observer
*
*    DATA(lo_processes) = NEW zcl_jcrf_45_processes_log_c460(  ).
*    DATA(lo_sales) = NEW zcl_jcrf_47_sales_dep_log_c460(  ).
*    DATA(lo_billing) = NEW zcl_jcrf_48_bill_dep_log_c460(  ).
*
*    SET HANDLER lo_sales->on_modified_state FOR lo_processes.
*    SET HANDLER lo_billing->on_modified_state FOR lo_processes.
*
*    "Set new state
*    lo_processes->set_state( 'NewSales 01 - Product 9999 - iPhone 17 sold' ).
*
*    out->write( lo_processes->get_state(  ) ).
*
*    out->write( lo_sales->state ).
*    out->write( lo_billing->state ).

*Model-View-Controller

*    DATA: lv_name TYPE string VALUE 'Juan Lopez',
*          lv_role TYPE string VALUE 'Sr. Developer'.
*
*    DATA(lo_model) = NEW zcl_jcrf_42_model_log_c460(
*      iv_name = lv_name
*      iv_role = lv_role ).
*
*    DATA(lo_view) = NEW zcl_jcrf_43_view_log_c460(  ).
*
*    DATA(lo_controller) = NEW zcl_jcrf_44_control_log_c460(  ).
*
*    lo_controller->set_model( lo_model ).
*
*    lo_controller->set_view( lo_view ).
*
*    lo_controller->get_view( )->display_employee(
*      iv_name = lo_model->get_name( )
*      iv_role = lo_model->get_role(  )
*      io_out  = out ).

*Factory Method

*    DATA: lo_shape   TYPE REF TO zif_jcrf_06_log_c460,
*          lo_factory TYPE REF TO zcl_jcrf_41_factory_log_c460.
*
*    lo_factory = NEW #(  ).
*
*    lo_shape = lo_factory->get_shape( 'Triangle' ).
*
*    out->write( lo_shape->draw_shape(  ) ).

*Design Patterns

*Singleton

*    DATA: lo_sing_1 TYPE REF TO zcl_jcrf_37_singleton_log_c460,
*          lo_sing_2 TYPE REF TO zcl_jcrf_37_singleton_log_c460.
*
*    lo_sing_1 = zcl_jcrf_37_singleton_log_c460=>get_instance(  ).
*    WAIT UP TO 2 SECONDS.
*    lo_sing_2 = zcl_jcrf_37_singleton_log_c460=>get_instance(  ).
*
*    out->write( lo_sing_1->time ).
*    out->write( lo_sing_1->time ).
*
*    DATA(lo_inst) = NEW zcl_jcrf_37_singleton_log_c460(  ).

**Exceptions
*
*    DATA(lo_exept) = NEW zcl_jcrf_35_mana_auth_log_c460(  ).
*
*    DATA: lx_excep TYPE REF TO zcx_jcrf_01_auth_log_c460.
*
*    DATA: lv_result TYPE i,
*          lv_num1   TYPE i VALUE 10,
*          lv_num2   TYPE i.
*
*    TRY.
*
*        lv_result = lv_num1 / lv_num2.
*
*        lo_exept->check_user( sy-uname ).
*      CATCH zcx_jcrf_01_auth_log_c460 INTO lx_excep.
**      CATCH cx_root INTO DATA(lx_ex).
**        out->write( lx_ex->get_text( ) ).
**        out->write( 'Exception Handled' ).
*        out->write( lx_excep->get_text( ) ).
*
*      CATCH cx_sy_zerodivide INTO DATA(lx_zero).
*        out->write( lx_zero->get_text( ) ).
*
*        lv_num2 = 2.
*
*        RETRY.
*    ENDTRY.
*
*    out->write( lv_result ).

*Events with interfaces

*    DATA(lo_central_bank) = NEW zcl_jcrf_33_bank_log_c460(  ).
*    DATA(lo_client_bank) = NEW zcl_jcrf_34_client_ac_log_c460(  ).
*
*    SET HANDLER lo_client_bank->on_new_transfer FOR lo_central_bank ACTIVATION abap_true.
*
*    DO 5 TIMES.
*      WAIT UP TO 1 SECONDS.
*      out->write( lo_central_bank->create_notification(  ) ).
*      out->write( lo_client_bank->notification ).
*      IF sy-index EQ 3.
*        SET HANDLER lo_client_bank->on_new_transfer FOR lo_central_bank ACTIVATION abap_false.
*        lo_client_bank->notification = 'No handler for Event new transfer'.
*      ENDIF.
*    ENDDO.

*    DATA(lo_timer) = NEW zcl_jcrf_31_timer_log_c460(  ).
*    DATA(lo_conexion) = NEW zcl_jcrf_32_conexion_log_c460(  ).
*
*    SET HANDLER lo_conexion->on_time_out FOR lo_timer.
*
*    DO.
*      WAIT UP TO 1 SECONDS.
*      lo_timer->increment_counter( 1 ).
*
*      IF lo_conexion->hour IS INITIAL.
*        out->write( |Event not yet executed: { cl_abap_context_info=>get_system_time(  ) }| ).
*      ELSE.
*        out->write( |Event was raised at: { lo_conexion->hour }-{ lo_conexion->sender_user }| ).
*        EXIT.
*      ENDIF.
*
*    ENDDO.

*Generic class Object

*    DATA: lo_object TYPE REF TO object.
*
*    lo_object = NEW zcl_jcrf_30_product_log_c460(  ).
*
*    DATA(lv_method_name) = 'RETURN_CATEGORY'.
*
*    DATA lv_category TYPE string.
*
*    CALL METHOD lo_object->(lv_method_name) RECEIVING rv_category = lv_category.
*
*    out->write( lv_category ).

*References

*    DATA: lo_vat_ind_1 TYPE REF TO zcl_jcrf_29_vat_ind_log_c460,
*          lo_vat_ind_2 TYPE REF TO zcl_jcrf_29_vat_ind_log_c460,
*          lo_vat_ind_3 TYPE REF TO zcl_jcrf_29_vat_ind_log_c460.
*
*    lo_vat_ind_1 = NEW #(  ).
**    lo_vat_ind_2 = NEW #(  ).
**    lo_vat_ind_3 = NEW #(  ).
*
*    lo_vat_ind_2 = lo_vat_ind_1.
*    lo_vat_ind_3 = lo_vat_ind_1.
*
*    lo_vat_ind_1->vat_ind = 'A1'.
*    lo_vat_ind_2->vat_ind = 'A2'.
*    lo_vat_ind_3->vat_ind = 'A3'.
*
*    out->write( lo_vat_ind_1->vat_ind ).
*    out->write( lo_vat_ind_2->vat_ind ).
*    out->write( lo_vat_ind_3->vat_ind ).

*Composition

*    DATA(lo_keyboard) = NEW zcl_jcrf_27_keyboard_log_c460(  ).
*    DATA(lo_laptop) = NEW zcl_jcrf_28_laptop_log_c460( lo_keyboard ).
*
*    lo_keyboard->keyboard_type = 'ES'.
*
*    out->write( lo_laptop->keyboard->keyboard_type ).

*Association

*    DATA(lo_credit_card) = NEW zcl_jcrf_25_cred_card_log_c460(  ).
*    DATA(lo_client) = NEW zcl_jcrf_26_client_log_c460(  ).
*
*    lo_credit_card->set_card_num( '9999 8888 7777 5555' ).
*    lo_client->set_credit_card( lo_credit_card ).
*
*    out->write( lo_client->get_credit_card(  )->get_card_num(  ) ).

*Polymorphism with interfaces

*    DATA: gt_companies TYPE STANDARD TABLE OF REF TO zif_jcrf_04_log_c460,
*          lo_company   TYPE REF TO zif_jcrf_04_log_c460,
*          lo_comp_eu   TYPE REF TO zcl_jcrf_22_polym_int_log_c460,
*          lo_comp_usa  TYPE REF TO zcl_jcrf_23_pol_int_2_log_c460,
*          lo_plant     TYPE REF TO zcl_jcrf_24_plant_log_c460.
*
*    lo_comp_eu = NEW #( ).
*    APPEND lo_comp_eu TO gt_companies.
*
*    lo_comp_usa = NEW #( ).
*    APPEND lo_comp_usa TO gt_companies.
*
*    lo_plant = NEW #( ).
*
*    LOOP AT gt_companies INTO lo_company.
*
*      out->write( lo_company->define_company(  ) ).
*      out->write( lo_plant->assign_company( lo_company ) ).
*
*    ENDLOOP.

*Polymorphism
*    DATA: gt_airplanes   TYPE STANDARD TABLE OF REF TO zcl_jcrf_19_polymor_log_c460,
*          lo_airplane    TYPE REF TO zcl_jcrf_19_polymor_log_c460,
*          lo_cargo_plane TYPE REF TO zcl_jcrf_20_cargo_pla_log_c460,
*          lo_pass_plane  TYPE REF TO zcl_jcrf_21_pass_plan_log_c460.
*
*    lo_cargo_plane = NEW #( ). "CREATE OBJECT lo_cargo_plane
*    APPEND lo_cargo_plane TO gt_airplanes.
*
*    lo_pass_plane = NEW #( ).
*    APPEND lo_pass_plane TO gt_airplanes.
*
*    LOOP AT gt_airplanes INTO lo_airplane.
*      out->write( lo_airplane->airplane_type(  ) ).
*    ENDLOOP.

*data(lo_interf) = new zcl_jcrf_15_interface_log_c460(  ).
*
*lo_interf->zif_jcrf_03_log_c460~get_airports(
*  EXPORTING
*    iv_airport_id =
**  RECEIVING
**    rs_airport    =
*).

* Instance enc.
*    DATA(lo_animal) = NEW zcl_jcrf_10_narrowing_log_c460(  ).
*    DATA(lo_lion) = NEW zcl_jcrf_11_widening_log_c460(  ).
*
*    out->write( lo_animal->walk( ) ).
*    out->write( lo_lion->walk(  ) ).
*
*    "lo_animal = lo_lion.
*    out->write( 'Narrowing cast' ).
*    out->write( lo_animal->walk( ) ).
*    out->write( lo_lion->walk(  ) ).
*
*    TRY.
*        lo_lion ?= lo_animal.
*      CATCH cx_sy_move_cast_error.
*        out->write( 'Casting error' ).
*        RETURN.
*    ENDTRY.
*
*    out->write( 'Widening cast' ).
*    out->write( lo_animal->walk( ) ).
*    out->write( lo_lion->walk(  ) ).

*Constructors
*    DATA(lo_const_her) = NEW zcl_jcrf_07_inh_con_2_log_c460(
*      iv_view_type = 'VIEW01'
*      iv_box       = 'BOX01' ).

**   Heritance
*
*    DATA(lo_heritance) = NEW zcl_jcrf_05_inherit_2_log_c460(  ).
*
*    out->write( lo_heritance->get_architecture(  ) ).

*    DATA(lo_inst) = NEW zcl_jcrf_03_instances_log_c460( ).
*
*    out->write( zcl_jcrf_03_instances_log_c460=>log ).
*
*    DATA(lo_inst2) = NEW zcl_jcrf_03_instances_log_c460( ).
*
*    out->write( zcl_jcrf_03_instances_log_c460=>log ).

*    DATA(lo_inst) = NEW zcl_jcrf_02_basics_log_c460(  ).
*
*    out->write( lo_inst->get_flight( 'AA' ) ).
*
*    out->write( | { zcl_jcrf_02_basics_log_c460=>c_1 } | ).
*
*    out->write( | { zcl_jcrf_02_basics_log_c460=>c_logali-name }-{ zcl_jcrf_02_basics_log_c460=>c_logali-master }-{ zcl_jcrf_02_basics_log_c460=>c_logali-group } | ).

*    DATA(lo_inst) = NEW zcl_jcrf_lab_09_account(  ).
*
*    lo_inst->set_iban( 'ES12312345645465' ).
*
*    out->write( lo_inst->get_iban( ) ).

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
