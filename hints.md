# Tipps and hints

## Classes

### READ TABLE for TABLE OF REF

In case of following definition of class LCL_PERSON

``` abap

    TYPES:
        BEGIN OF ts_person,
            id TYPE i,
        END OF ts_person.

    DATA:
        ms_person TYPE ts_person,
        mt_person TYPE TABLE OF REF TO lcl_person.

```

You can access them via the following command

``` abap

    READ TABLE mt_person WITH KEY table_line->ms_person-id = iv_id INTO DATA(lo_person)

```

### Get new Index

Working with MAX is depending on the approach of implementation not possible.

Other Possibilities are:

* Sort your list descending, read first line and add 1
* Save your MAX_INDEX in a class attribute
* If you use an internal Table: It's also possible to handle an internal Table like a DB-table [LINK](https://help.sap.com/doc/abapdocu_752_index_htm/7.52/de-DE/abapselect_itab.htm)

## Database and SQL

### Possible views and tables to try Selects

Information: Don't try Delete or Update! Only Select!

* /DMO/I_Airport
* I_Country
* /DMO/I_Booking