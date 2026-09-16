CLASS zcl_jcrf_lab_02_product DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      set_product IMPORTING iv_product    TYPE matnr,

      get_product EXPORTING ev_product    TYPE matnr,

      set_creation_date IMPORTING iv_creation_date    TYPE zdate,

      get_creation_date EXPORTING ev_creation_date    TYPE zdate.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: product       TYPE matnr,
          creation_date TYPE zdate.
ENDCLASS.



CLASS zcl_jcrf_lab_02_product IMPLEMENTATION.
  METHOD set_product.
    product = iv_product.
  ENDMETHOD.

  METHOD get_product.
    ev_product = product.
  ENDMETHOD.

  METHOD set_creation_date.
    creation_date = iv_creation_date.
  ENDMETHOD.

  METHOD get_creation_date.
    ev_creation_date = creation_date.
  ENDMETHOD.
ENDCLASS.
