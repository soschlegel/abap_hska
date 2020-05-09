# About

On this Page, you'll find important information like links, snippets etc. needed for the course

# ADT installation:
To install the front-end component of ADT, proceed as follows:
1. Get an installation of [Eclipse 2020-03](https://www.eclipse.org/downloads/packages/release/2020-03/r) (e.g. Eclipse IDE for Java Developers)
2. In Eclipse, choose in the menu bar Help > Install New Software...
3. Enter the URL <https://tools.hana.ondemand.com/latest>
4. Press Enter to display the available features.
5. Select ABAP Development Tools and choose Next.
6. On the next wizard page, you get an overview of the features to be installed. Choose Next.
7. Confirm the license agreements and choose Finish to start the installation.
<!-- Quelle: https://tools.hana.ondemand.com/#abap -->

# ABAP Code Conventions
(Replace ## with group number)
* Package: YHSKA##
* Class: YCL_HSKA##

# Useful
The [12 most useful keyboard shortcuts](https://soschlegel.github.io/abap_hska/ABAP_Shortcuts.html)

# Onboarding Links for ABAP in the Cloud and Hands On
* Create a Trial Account on SAP Cloud Platform: [Link](https://developers.sap.com/tutorials/hcp-create-trial-account.html)
* Create an SAP Cloud Platform ABAP Environment Trial User: [Link](https://developers.sap.com/tutorials/abap-environment-trial-onboarding.html)
* Create Your First ABAP Console Application: [Link](https://developers.sap.com/tutorials/abap-environment-console-application.html)



# Timeline

## Day 1

## Day 2

1. Internal Tables
    * 09:00 to 09:15: Onboarding
    * 09:15 to 10:15: Lecture (including live demo)
    * 10:15 to 11:00: Hands-on (including small break)
    * 11:00 to 11:30: Feedback and Questions
    * 11:30 to 11:55: Hands-On Completion

2. ABAP Classes
   * 12:00 to 12:40: Lecture (including live demo)
   * 12:40 to 14:00: Lunch-Break & Hands-On
   * 14:00 to 14:15: Exchange and Discussion
   * 14:15 to 15:20: Hands-On Completion

3. Database Accesses (ABAP Dictionary)
   * 15:30 to 16:00: Lecture (including live demo)
   * 16:00 to 16:25: Hands-On (including small break)

## Day 3

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

## Possible Tables for try out

/DMO/I_Airport

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

# Known Errors
   
* No SMS during Trial-Account Registration
  - Try with Page Reload
  - Add the leading 0
