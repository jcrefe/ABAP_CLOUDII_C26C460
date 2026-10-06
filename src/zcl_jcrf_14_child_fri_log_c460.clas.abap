CLASS zcl_jcrf_14_child_fri_log_c460 DEFINITION INHERITING FROM zcl_jcrf_13_friends_log_c460
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: my_meth.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jcrf_14_child_fri_log_c460 IMPLEMENTATION.
  METHOD my_meth.
    me->father_attr = 'Child hello'.

    DATA(lo_inst) = NEW zcl_jcrf_12_friends_log_c460(  ).

    lo_inst->private_attr = 'child'.
  ENDMETHOD.

ENDCLASS.
