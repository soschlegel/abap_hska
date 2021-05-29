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

    TYPES:
      BEGIN OF ty_student,
        client       TYPE   mandt,
        student_guid TYPE  sysuuid_x16,
        student_id   TYPE int4,
        name         TYPE char80,
      END OF ty_student.


    DATA: students TYPE TABLE OF ty_student.


    SELECT * FROM zhska_00_student
*        FIELDS *
        WHERE student_id = 1
        INTO TABLE @students.


    students = VALUE #( ( student_id = 1 name = 'Max123456789012345678901234567890123456789012345678901234567890' ) ).

    INSERT zhska_00_student FROM TABLE @students.

    out->write( students ).

  ENDMETHOD.
ENDCLASS.
