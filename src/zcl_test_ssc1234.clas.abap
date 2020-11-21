CLASS zcl_test_ssc1234 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES:
      if_oo_adt_classrun.



  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA mo_out TYPE REF TO if_oo_adt_classrun_out.

ENDCLASS.



CLASS zcl_test_ssc1234 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA(lo_person) = lcl_person=>load( id = 1 ).

  ENDMETHOD.




ENDCLASS.
