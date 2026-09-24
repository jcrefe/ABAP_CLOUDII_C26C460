CLASS zcl_jcrf_02_basics_log_c460 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES: BEGIN OF ty_flight,
             carrier_id     TYPE /dmo/carrier_id,
             coznnection_id TYPE /dmo/connection_id,
             flight_date    TYPE /dmo/flight_date,
             price          TYPE /dmo/flight_price,
           END OF ty_flight,

           tt_flight TYPE STANDARD TABLE OF ty_flight WITH EMPTY KEY.

    CONSTANTS: BEGIN OF c_logali,
                 name   TYPE string VALUE 'Locali',
                 group  TYPE string VALUE 'C460',
                 master TYPE string VALUE 'ABAP CLOUD II',
               END OF c_logali,

               c_1 TYPE string VALUE 'Hello'.

    "Instance components
    DATA: name    TYPE string,
          address TYPE string.

    METHODS:
      set_attr IMPORTING iv_name    TYPE string
                         iv_address TYPE string,

      get_attr EXPORTING ev_name    TYPE string
                         ev_address TYPE string,

      get_flight
        IMPORTING iv_carrier       TYPE string
        RETURNING VALUE(rs_flight) TYPE ty_flight,

      get_flights
        IMPORTING iv_carrier        TYPE string
                  iv_conn_id        TYPE string OPTIONAL
        RETURNING VALUE(rt_flights) TYPE tt_flight.

    "Static components
    CLASS-DATA: name2 TYPE string.


    CLASS-METHODS:
      set_name IMPORTING iv_name TYPE string,
      get_name EXPORTING ev_name TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: private_attr TYPE string.
ENDCLASS.

CLASS zcl_jcrf_02_basics_log_c460 IMPLEMENTATION.
  METHOD get_attr.
    ev_name = name.
    ev_address = address.
  ENDMETHOD.

  METHOD get_name.
    ev_name = name2.
  ENDMETHOD.

  METHOD set_attr.
    name = iv_name.
    address = iv_address.
  ENDMETHOD.

  METHOD set_name.
    name2 = iv_name.
  ENDMETHOD.

  METHOD get_flight.

    SELECT SINGLE carrier_id, connection_id, flight_date, price
      FROM /dmo/flight
     WHERE carrier_id EQ @iv_carrier
      INTO @rs_flight.

  ENDMETHOD.

  METHOD get_flights.

    IF iv_conn_id IS SUPPLIED.

      SELECT FROM /dmo/flight
      FIELDS carrier_id, connection_id, flight_date, price
       WHERE carrier_id EQ @iv_carrier
         AND connection_id EQ @iv_conn_id
        INTO TABLE @rt_flights.
    ELSE.
      SELECT FROM /dmo/flight
      FIELDS carrier_id, connection_id, flight_date, price
       WHERE carrier_id EQ @iv_carrier
         AND connection_id EQ @iv_conn_id
        INTO TABLE @rt_flights.

*    SELECT carrier_id, connection_id, flight_date, price
*      FROM /dmo/flight
*     WHERE carrier_id EQ @iv_carrier
*      INTO table @rt_flights.
    ENDIF.
  ENDMETHOD.

ENDCLASS.
