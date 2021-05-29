*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
CLASS lhc_student DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS:
      validate_student_id
        FOR VALIDATE ON SAVE
        IMPORTING keys
                    FOR Student~validateStudentID,
      matriculateStudent
        FOR MODIFY
        IMPORTING keys
                    FOR ACTION Student~matriculateStudent RESULT result,
      get_instance_features
        FOR INSTANCE FEATURES
            IMPORTING keys
            REQUEST requested_features FOR Student RESULT result.

ENDCLASS.


CLASS lhc_student IMPLEMENTATION.

  METHOD validate_student_id.

    " Read relevant travel instance data
    READ ENTITIES OF zhska_i_00_student IN LOCAL MODE
    ENTITY Student
     FIELDS ( StudentID )
     WITH CORRESPONDING #(  keys )
    RESULT DATA(lt_Students).

    SELECT FROM zhska_00_student
        FIELDS student_id
        INTO TABLE @DATA(student_ids).

    LOOP AT lt_students INTO DATA(student).

      IF line_exists( student_ids[ student_id = student-StudentID ] ).
*      OR student-StudentID IS INITIAL.


        APPEND VALUE #( studentguid  = student-StudentGUID ) TO failed-student.
        APPEND VALUE #( studentguid = student-StudentGUID
                         %msg = new_message(
                                  id       = 'ZHSKA_00'
                                  number   = 001
                                  severity = if_abap_behv_message=>severity-error
                                  v1       = student-StudentID
                                )
                         %element-studentid = if_abap_behv=>mk-on )
          TO reported-student.

      ELSE.

        APPEND VALUE #( student_id = student-StudentID ) TO student_ids.

      ENDIF.


    ENDLOOP.


  ENDMETHOD.

  METHOD matriculateStudent.

    READ ENTITIES OF zhska_i_00_student IN LOCAL MODE
        ENTITY Student
        ALL FIELDS WITH CORRESPONDING #( keys )
        RESULT DATA(students)
        FAILED failed
        REPORTED reported.

    LOOP AT students ASSIGNING FIELD-SYMBOL(<student>).

      <student>-IsMatriculated = abap_true.


    ENDLOOP.


    MODIFY ENTITIES OF zhska_i_00_student IN LOCAL MODE
           ENTITY Student
              UPDATE FIELDS ( IsMatriculated )
                 WITH VALUE #( FOR student IN students ( StudentGUID = student-StudentGUID
                                                         IsMatriculated = student-IsMatriculated ) )
           FAILED   failed
           REPORTED reported.

    IF failed IS INITIAL.

      result = VALUE #( FOR student IN students ( StudentGUID = student-StudentGUID
                                                  %param    = student ) ).



    ENDIF.


  ENDMETHOD.

  METHOD get_instance_features.
  ENDMETHOD.

ENDCLASS.
