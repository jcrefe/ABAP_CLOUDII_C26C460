CLASS zcl_jcrf_lab_06_elements DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES: BEGIN OF ty_elem_objects,
             class     TYPE string,
             instance  TYPE string,
             reference TYPE string,
           END OF ty_elem_objects.

    METHODS:
      set_object IMPORTING iv_class     TYPE string
                           iv_instance  TYPE string
                           iv_reference TYPE string,

      get_object EXPORTING es_object TYPE ty_elem_objects.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA ms_object TYPE ty_elem_objects.
ENDCLASS.

CLASS zcl_jcrf_lab_06_elements IMPLEMENTATION.
  METHOD set_object.
    ms_object-class =  iv_class.
    ms_object-instance =   iv_instance.
    ms_object-reference = iv_reference.
  ENDMETHOD.

  METHOD get_object.
    es_object = ms_object.
  ENDMETHOD.

ENDCLASS.
