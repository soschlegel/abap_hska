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

## Naming Conventions for Dev Objects (for CDS Objects)
### General Rules
`<namespace>_[prefix]_<objectName>_[suffix]`

Examples:
* /DMO/I_Booking
* YHSKA_I_Booking
* ZTUTOR_I_TRAVEL_U

Consider that the namespace `/DMO/` is reserved for demo purposes. Do not use this namespace in your package.

The  **suffixed** characters (**_R** , **_U**, **_M**, **_C**) used in the ABAP Flight Reference Scenario identifie the development object to belong to one specific development guide (Read-only, Unmanaged, Managed, service Consumption).

### CDS Objects
Use the prefix:
* **I_** for an interface view.
* **C_** for a projection view. (The character C represents the consumption layer)
 * **BP_** for an ABAP class that implements the behavior of a business object.

Example: /DMO/I_Travel_U, /DMO/C_Travel_Processor_M, /DMO/BP_ORDER_U, ...
