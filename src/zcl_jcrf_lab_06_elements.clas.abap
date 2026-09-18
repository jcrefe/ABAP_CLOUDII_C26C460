CLASS zcl_jcrf_lab_06_elements DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CONSTANTS:
      gc_constant_01 TYPE string VALUE 'CLASS',
      gc_constant_02 TYPE string VALUE 'INSTANCE',
      gc_constant_03 TYPE string VALUE 'REFERENCE',
      gc_constant_04 TYPE string VALUE 'ABAP'.

    TYPES: BEGIN OF ty_elem_objects,
             class     TYPE string,
             instance  TYPE string,
             reference TYPE string,
           END OF ty_elem_objects.

    DATA ms_object TYPE ty_elem_objects.

    METHODS:
      set_object IMPORTING iv_class     TYPE string
                           iv_instance  TYPE string
                           iv_reference TYPE string,

      get_object EXPORTING es_object TYPE ty_elem_objects.

  PROTECTED SECTION.
  PRIVATE SECTION.

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
