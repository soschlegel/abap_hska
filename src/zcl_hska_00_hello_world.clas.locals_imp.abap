*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations


INTERFACE zif_interface.



ENDINTERFACE.

CLASS lcl_demo DEFINITION.

  PUBLIC SECTION.

    METHODS:
      do_something.


ENDCLASS.

CLASS lcl_demo2 DEFINITION
FRIENDS lcl_demo.

  PUBLIC SECTION.

    METHODS:
      do_something_else
        IMPORTING
          i_input1        TYPE i
          i_input2        TYPE i OPTIONAL
        EXPORTING
          e_export        TYPE i
          e_export2       TYPE i
          e_export3       TYPE i
        CHANGING
          c_change        TYPE i OPTIONAL
        RETURNING
          VALUE(r_result) TYPE i.

  PRIVATE SECTION.

    METHODS:
      do_something_secret.

ENDCLASS.


CLASS lcl_demo IMPLEMENTATION.


  METHOD do_something.

*    DATA: result TYPE d34n.

*     result = 3 / 0.

    DATA: demo2a TYPE REF TO lcl_demo2.

    CREATE OBJECT demo2a.

    DATA(demo2) = NEW lcl_demo2( ).

    demo2->do_something_secret( ).

    DATA: var1 TYPE i.

    CALL METHOD demo2->do_something_else
      EXPORTING
        i_input1 = 1
        i_input2 = 2
      IMPORTING
        e_export = DATA(lv_var2)
      CHANGING
        c_change = var1
      RECEIVING
        r_result = DATA(r_result).


    DATA(result)  =  demo2->do_something_else( 1 ).
**
*    DATA(result) = 3 / 0.

  ENDMETHOD.

ENDCLASS.


CLASS lcl_demo2 IMPLEMENTATION.

  METHOD do_something_else.

    DATA(demo) = NEW lcl_demo( ).

    IF i_input2 IS SUPPLIED.

      r_result = i_input1 * i_input2.

    ENDIF.

*    demo->do_something( ).

    IF e_export IS SUPPLIED.

      e_export = 5.


    ENDIF.


  ENDMETHOD.

  METHOD do_something_secret.

  ENDMETHOD.

ENDCLASS.
