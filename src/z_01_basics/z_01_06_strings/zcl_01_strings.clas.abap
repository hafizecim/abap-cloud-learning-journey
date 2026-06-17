CLASS zcl_01_strings DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_strings IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

*----------------------------------------------------------------------
* 📘 TOPIC   : ABAP Strings
* 🎯 PURPOSE : Learn basic string operations in ABAP
*----------------------------------------------------------------------

    "--------------------------------------------------------------
    " STRING DECLARATION
    "--------------------------------------------------------------
    DATA lv_text TYPE string VALUE 'ABAP is powerful'.

    out->write( lv_text ).

    "--------------------------------------------------------------
    " CONCATENATION
    "--------------------------------------------------------------
    DATA lv_first TYPE string VALUE 'Hafize'.
    DATA lv_last TYPE string VALUE 'Senyil'.

    DATA lv_full TYPE string.

    lv_full = lv_first && | | && lv_last.

    out->write( lv_full ).

    "--------------------------------------------------------------
    " STRING TEMPLATE
    "--------------------------------------------------------------
    DATA lv_msg TYPE string.

    lv_msg = |Welcome { lv_first }|.

    out->write( lv_msg ).

    "--------------------------------------------------------------
    " STRING LENGTH
    "--------------------------------------------------------------
    DATA lv_len TYPE i.

    lv_len = strlen( lv_text ).

    out->write( lv_len ).

  ENDMETHOD.

ENDCLASS.
