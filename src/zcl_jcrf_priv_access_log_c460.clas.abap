CLASS zcl_jcrf_priv_access_log_c460 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jcrf_priv_access_log_c460 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    SELECT FROM zcds_jcrf_34_log_c460 WITH PRIVILEGED ACCESS
    FIELDS *
      INTO TABLE @DATA(lt_results)
        UP TO 50 ROWS.

    IF sy-subrc EQ 0.
      out->write( lt_results ).
    ENDIF.
  ENDMETHOD.

ENDCLASS.
