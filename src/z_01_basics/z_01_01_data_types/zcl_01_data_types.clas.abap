CLASS zcl_01_data_types DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_data_types IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  "*----------------------------------------------------------------------
* 📘 TOPIC   : ABAP Elementary Data Types
* 🎯 PURPOSE : Learn basic ABAP data types with clean code approach
* 🧠 NOTE    : Each type represents a fundamental data storage model
*----------------------------------------------------------------------

    "------------------------------------------------------------------
    " INTEGER TYPE (i)
    " Used for whole numbers. No decimals allowed.
    " Typical usage: counters, loops, indexes
    "------------------------------------------------------------------
    DATA lv_integer TYPE i VALUE 10.
    out->write( |Integer value: { lv_integer }| ).

    "------------------------------------------------------------------
    " CHARACTER TYPE (c)
    " Fixed length text type.
    " Unused space is filled with blanks.
    "------------------------------------------------------------------
    DATA lv_char TYPE c LENGTH 10 VALUE 'ABAP'.
    out->write( |Char value: { lv_char }| ).

    "------------------------------------------------------------------
    " STRING TYPE (string)
    " Dynamic length text type.
    " Preferred over CHAR in modern ABAP.
    "------------------------------------------------------------------
    DATA lv_string TYPE string VALUE 'Hello ABAP Clean Code'.
    out->write( |String value: { lv_string }| ).

    "------------------------------------------------------------------
    " PACKED TYPE (p)
    " Used for financial / precise calculations.
    " DECIMALS define precision.
    "------------------------------------------------------------------
    DATA lv_price TYPE p LENGTH 8 DECIMALS 2 VALUE '99.99'.
    out->write( |Price value: { lv_price }| ).

    "------------------------------------------------------------------
    " DATE TYPE (d)
    " Stores calendar dates in YYYYMMDD format.
    " sy-datum gives system date.
    "------------------------------------------------------------------
   DATA lv_date TYPE d.
   lv_date = sy-datum.
    out->write( |Date value: { lv_date }| ).
  ENDMETHOD.
ENDCLASS.
