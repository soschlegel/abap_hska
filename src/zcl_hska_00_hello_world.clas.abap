CLASS zcl_hska_00_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: if_oo_adt_classrun.


  PROTECTED SECTION.



  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_hska_00_hello_world IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

*    DELETE FROM zhska_00_student WHERE student_id NE 0.


    SELECT * FROM zhska_00_student
*        FIELDS *
        WHERE student_id = 1
        INTO TABLE @DATA(students).


    students = VALUE #( ( student_id = 1 name = 'Max' )
                        ( student_id = 2 name = 'Erika' ) ).

    INSERT zhska_00_student FROM TABLE @students.

    out->write( students ).

  ENDMETHOD.

ENDCLASS.
