CLASS zcl_01_conditions DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_conditions IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

*----------------------------------------------------------------------
* 📘 TOPIC   : ABAP Conditions
* 🎯 PURPOSE : Learn decision-making logic using IF and CASE
* 🧠 NOTE    : Conditions control business flow in ABAP programs
*----------------------------------------------------------------------

    "--------------------------------------------------------------
    " 🧮 BASIC IF / ELSE CONDITION
    "--------------------------------------------------------------
    DATA lv_age TYPE i VALUE 20.

    IF lv_age >= 18.
      out->write( 'Adult user' ).
    ELSE.
      out->write( 'Minor user' ).
    ENDIF.

    "--------------------------------------------------------------
    " ⚖️ ELSEIF STRUCTURE
    "--------------------------------------------------------------
    DATA lv_score TYPE i VALUE 75.

    IF lv_score >= 90.
      out->write( 'Grade A' ).
    ELSEIF lv_score >= 70.
      out->write( 'Grade B' ).
    ELSE.
      out->write( 'Grade C' ).
    ENDIF.

    "--------------------------------------------------------------
    " 🔀 CASE STATEMENT
    "--------------------------------------------------------------
    DATA lv_day TYPE i VALUE 3.

    CASE lv_day.
      WHEN 1.
        out->write( 'Monday' ).
      WHEN 2.
        out->write( 'Tuesday' ).
      WHEN 3.
        out->write( 'Wednesday' ).
      WHEN 4.
        out->write( 'Thursday' ).
      WHEN 5.
        out->write( 'Friday' ).
      WHEN OTHERS.
        out->write( 'Weekend' ).
    ENDCASE.

    "--------------------------------------------------------------
    " 🧠 BUSINESS LOGIC EXAMPLE
    "--------------------------------------------------------------
    DATA lv_balance TYPE p DECIMALS 2 VALUE '1500'.

    IF lv_balance > 1000.
      out->write( 'Premium customer' ).
    ELSEIF lv_balance > 500.
      out->write( 'Standard customer' ).
    ELSE.
      out->write( 'Basic customer' ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
