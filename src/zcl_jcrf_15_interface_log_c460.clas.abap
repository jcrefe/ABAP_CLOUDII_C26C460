CLASS zcl_jcrf_15_interface_log_c460 DEFINITION
  PUBLIC

  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: zif_jcrf_01_log_c460,
      zif_jcrf_02_log_c460.


    ALIASES: get_conn_id FOR zif_jcrf_01_log_c460~get_conn_id,
    set_conn_id FOR zif_jcrf_01_log_c460~set_conn_id,
    get_customer FOR zif_jcrf_02_log_c460~get_customer,
    conn_id for zif_jcrf_01_log_c460~conn_id .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jcrf_15_interface_log_c460 IMPLEMENTATION.

  METHOD get_conn_id.
    rv_conn_id = conn_id. "me->zif_jcrf_01_log_c460~conn_id.
  ENDMETHOD.

  METHOD set_conn_id.
    me->zif_jcrf_01_log_c460~conn_id = iv_conn_id.
  ENDMETHOD.

  METHOD get_customer.

    SELECT SINGLE FROM /dmo/customer
    FIELDS FIRST_name, LAST_name
     WHERE customer_id EQ @iv_cust_id
      INTO @rs_cust_address.

  ENDMETHOD.

  METHOD zif_jcrf_03_log_c460~get_airports.

  ENDMETHOD.

ENDCLASS.
