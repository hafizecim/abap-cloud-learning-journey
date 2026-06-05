CLASS zcl_01_operators DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_operators IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*----------------------------------------------------------------------

*    📘 TOPIC : ABAP Operators
*    🎯 PURPOSE : Learn arithmetic, comparison, logical and assignment operators

*    🧠 NOTE : Operators are used to manipulate and evaluate data
*    ----------------------------------------------------------------------

    "--------------------------------------------------------------
    " 🧮 ARITHMETIC OPERATORS
    "--------------------------------------------------------------
    DATA lv_a TYPE i VALUE 10.
    DATA lv_b TYPE i VALUE 5.

    DATA lv_sum TYPE i.
    lv_sum = lv_a + lv_b.

    DATA lv_diff TYPE i.
    lv_diff = lv_a - lv_b.

    DATA lv_mul TYPE i.
    lv_mul = lv_a * lv_b.

    DATA lv_div TYPE i.
    lv_div = lv_a / lv_b.

    out->write( |Sum: { lv_sum }| ).
    out->write( |Difference: { lv_diff }| ).
    out->write( |Multiplication: { lv_mul }| ).
    out->write( |Division: { lv_div }| ).

    "--------------------------------------------------------------
    " ⚖️ COMPARISON OPERATORS
    "--------------------------------------------------------------
    IF lv_a = lv_b.
    out->write( 'Equal' ).
    ELSEIF lv_a > lv_b.
    out->write( 'A is greater than B' ).
    ELSE.
    out->write( 'A is less than B' ).
    ENDIF.

    "--------------------------------------------------------------
    " 🔗 LOGICAL OPERATORS
    "--------------------------------------------------------------
    DATA lv_x TYPE abap_bool VALUE abap_true.
    DATA lv_y TYPE abap_bool VALUE abap_false.

    IF lv_x = abap_true AND lv_y = abap_true.
    out->write( 'Both true' ).
    ELSEIF lv_x = abap_true OR lv_y = abap_true.
    out->write( 'At least one is true' ).
    ELSE.
    out->write( 'None is true' ).
    ENDIF.

    "--------------------------------------------------------------
    " 🧾 ASSIGNMENT OPERATORS
    "--------------------------------------------------------------
    DATA lv_result TYPE i.

    lv_result = lv_a.
    lv_result += 5.
    lv_result -= 2.
    lv_result *= 2.
    lv_result /= 3.

    out->write( |Final Result: { lv_result }| ).
  ENDMETHOD.
ENDCLASS.
