CLASS zcl_01_variables DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_variables IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*    ----------------------------------------------------------------------

*     Topic   : Variables
*     Purpose : Learn variable declaration and naming conventions

*    ----------------------------------------------------------------------

*     | Prefix | Meaning              |
*     | ------ | -------------------- |
*     | lv_    | Local Variable       |
*     | lt_    | Local Internal Table |
*     | ls_    | Local Structure      |
*     | lo_    | Local Object         |
*     | lr_    | Local Reference      |
*     | gv_    | Global Variable      |
*     | gt_    | Global Table         |
*     | gs_    | Global Structure     |

*    ----------------------------------------------------------------------

      DATA lv_name TYPE string VALUE 'Hafize'.
      DATA lv_age TYPE i VALUE 30.

      out->write( |Name: { lv_name }| ).
      out->write( |Age : { lv_age }| ).

      lv_name = 'Bilge'.

      out->write( |Updated Name: { lv_name }| ).

      DATA(lv_city) = 'Konya'.

      out->write( |City: { lv_city }| ).

  ENDMETHOD.
ENDCLASS.
