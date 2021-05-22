CLASS zcl_hska_00_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: if_oo_adt_classrun.

    TYPES:
      BEGIN OF ty_student,
        student_id TYPE zhska_00_student_id,
      END OF ty_student,
      tt_student TYPE STANDARD TABLE OF ty_student WITH NON-UNIQUE KEY student_id.


  PROTECTED SECTION.



  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_hska_00_hello_world IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DELETE FROM zhska_00_student WHERE student_id NE 0.

    DATA(demo) = NEW lcl_demo( ).

    demo->do_something( ).




    SELECT * FROM zhska_00_student
*        FIELDS *
        WHERE student_id = 1
        INTO TABLE @DATA(students).

*    DATA: student_details TYPE zhska_00_student_details.
*
*    student_details-firstname = 'Max'.
*    student_details-lastname = 'Mustermann'.
*    student_details-id = '666'.

    DATA(student_details) = VALUE zhska_00_student_details( firstname = 'max'
                                                            lastname = 'Mustermann'  ).

    DATA: students_2 TYPE TABLE OF zhska_00_student.

    DATA(student_2) = VALUE zhska_00_student( name = 'Erika' ).


    students = VALUE #( ( student_id = 1 name = 'Max' )
                        ( student_id = 2 name = 'Erika' ) ).

    LOOP AT students ASSIGNING FIELD-SYMBOL(<student>).

        <student>-name = 'Klaus'.


    ENDLOOP.

*    students[ 1 ]-student_id = '005'.

    INSERT zhska_00_student FROM TABLE @students.

    out->write( students ).



  ENDMETHOD.

ENDCLASS.
