CLASS zcl_01_loops DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_loops IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

*----------------------------------------------------------------------
* 📘 TOPIC   : ABAP Loops
* 🎯 PURPOSE : Learn iteration techniques in ABAP
* 🧠 NOTE    : Loops are essential for processing data sets
*----------------------------------------------------------------------

    "--------------------------------------------------------------
    " 🔁 DO LOOP
    "--------------------------------------------------------------
    DATA lv_counter TYPE i.

    DO 5 TIMES.
      lv_counter = lv_counter + 1.
      out->write( |DO Loop Counter: { lv_counter }| ).
    ENDDO.

    "--------------------------------------------------------------
    " 🔄 WHILE LOOP
    "--------------------------------------------------------------
    DATA lv_index TYPE i VALUE 1.

    WHILE lv_index <= 5.
      out->write( |WHILE Loop Index: { lv_index }| ).
      lv_index = lv_index + 1.
    ENDWHILE.

    "--------------------------------------------------------------
    " 📊 INTERNAL TABLE LOOP (REAL SAP WORLD)
    "--------------------------------------------------------------
    TYPES: BEGIN OF ty_employee,
             id   TYPE i,
             name TYPE string,
           END OF ty_employee.

    DATA lt_employees TYPE STANDARD TABLE OF ty_employee WITH EMPTY KEY.

    lt_employees = VALUE #(
      ( id = 1 name = 'Hafize' )
      ( id = 2 name = 'Bilge' )
      ( id = 3 name = 'Ahmet' )
    ).

    LOOP AT lt_employees INTO DATA(ls_employee).

      out->write( |Employee: { ls_employee-id } - { ls_employee-name }| ).

      "----------------------------------------------------------
      " ⛔ EXIT example (break loop)
      "----------------------------------------------------------
      IF ls_employee-id = 2.
        EXIT.
      ENDIF.

    ENDLOOP.

    "--------------------------------------------------------------
    " ⏭ CONTINUE EXAMPLE
    "--------------------------------------------------------------
    DO 5 TIMES.

      IF sy-index = 3.
        CONTINUE.
      ENDIF.

      out->write( |DO with CONTINUE: { sy-index }| ).

    ENDDO.

  ENDMETHOD.

ENDCLASS.
