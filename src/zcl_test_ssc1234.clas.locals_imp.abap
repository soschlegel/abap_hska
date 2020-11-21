*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
CLASS lcl_person DEFINITION DEFERRED.

INTERFACE lif_person.
  TYPES: BEGIN OF ts_attributes,
           id        TYPE i,
           firstname TYPE c LENGTH 20,
           lastname  TYPE c LENGTH 20,
           age       TYPE i,
         END OF ts_attributes.

  CLASS-METHODS:
    load
      IMPORTING
        id               TYPE ts_attributes-id
      RETURNING
        VALUE(ro_person) TYPE REF TO lcl_person,
    new
      IMPORTING
        is_person TYPE ts_attributes.

ENDINTERFACE.
CLASS lcl_person DEFINITION
    CREATE PRIVATE.


  PUBLIC SECTION.
    TYPES: tab TYPE STANDARD TABLE OF REF TO lcl_person WITH DEFAULT KEY.

    INTERFACES: lif_person.

    ALIASES: ts_person FOR lif_person~ts_attributes,
             load FOR lif_person~load.

    DATA:
            id TYPE ts_person-id READ-ONLY.

    CLASS-METHODS:
      class_constructor.

    METHODS:
      get_firstname
        RETURNING
          VALUE(r_result) TYPE lcl_person=>ts_person-firstname,
      set_firstname
        IMPORTING
          firstname TYPE lcl_person=>ts_person-firstname,
      get_lastname
        RETURNING
          VALUE(r_result) TYPE lcl_person=>ts_person-lastname,
      set_lastname
        IMPORTING
          lastname TYPE lcl_person=>ts_person-lastname,
      get_age
        RETURNING
          VALUE(r_result) TYPE lcl_person=>ts_person-age,
      set_age
        IMPORTING
          age TYPE lcl_person=>ts_person-age.



  PRIVATE SECTION.
    CLASS-DATA: gt_person TYPE tab.

    METHODS:
      constructor
        IMPORTING
          is_person TYPE ts_person.

    DATA: firstname TYPE ts_person-firstname,
          age       TYPE ts_person-age,
          lastname  TYPE ts_person-lastname.

ENDCLASS.


CLASS lcl_person IMPLEMENTATION.

  METHOD lif_person~load.

    READ TABLE gt_person WITH KEY table_line->id = id INTO ro_person.

  ENDMETHOD.

  METHOD get_firstname.
    r_result = me->firstname.
  ENDMETHOD.

  METHOD set_firstname.
    me->firstname = firstname.
  ENDMETHOD.

  METHOD get_lastname.
    r_result = me->lastname.
  ENDMETHOD.

  METHOD set_lastname.
    me->lastname = lastname.
  ENDMETHOD.

  METHOD get_age.
    r_result = me->age.
  ENDMETHOD.

  METHOD set_age.
    me->age = age.
  ENDMETHOD.

  METHOD class_constructor.

    DATA(lo_person) = NEW lcl_person( VALUE #( age = 18 id = 1 firstname = 'Schakeline' ) ).

    APPEND lo_person TO gt_person.

  ENDMETHOD.

  METHOD lif_person~new.

    DATA(ls_person) = is_person.

    DATA(lo_person) = NEW lcl_person( is_person = ls_person ).

  ENDMETHOD.

  METHOD constructor.

    id = is_person-id.
    firstname = is_person-firstname.
    lastname = is_person-lastname.
    age = is_person-age.

  ENDMETHOD.

ENDCLASS.
