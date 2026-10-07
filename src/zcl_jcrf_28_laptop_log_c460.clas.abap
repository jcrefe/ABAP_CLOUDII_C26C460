CLASS zcl_jcrf_28_laptop_log_c460 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: keyboard TYPE REF TO zcl_jcrf_27_keyboard_log_c460.

    METHODS:
      constructor IMPORTING io_keyboard TYPE REF TO zcl_jcrf_27_keyboard_log_c460.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_jcrf_28_laptop_log_c460 IMPLEMENTATION.
  METHOD constructor.
    keyboard = io_keyboard.
  ENDMETHOD.

ENDCLASS.
