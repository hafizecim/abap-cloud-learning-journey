CLASS zcl_hafize_modern_demo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
ENDCLASS.

CLASS zcl_hafize_modern_demo IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    " 1. Modern Inline Declaration: Tip belirtmeden doğrudan değişken tanımlama
    DATA(lv_welcome_msg) = 'Modern ABAP Journey Begins!'.
    out->write( lv_welcome_msg ).

    " 2. Modern Value Operator: Tabloyu tek satırda tanımlayıp doldurma
    TYPES: BEGIN OF ty_student,
             id   TYPE i,
             name TYPE string,
           END OF ty_student.

    " 0. ADIM: İşte eksik olan parça!
    " Tablo tipini buraya tanımlıyoruz.
    TYPES tt_students TYPE STANDARD TABLE OF ty_student WITH EMPTY KEY.

    " Şimdi bu tip, VALUE operatörü için kullanılabilir durumda:
    DATA(lt_students) = VALUE tt_students(
      ( id = 1 name = 'Hafize' )
      ( id = 2 name = 'Bilge' )
    ).

    " 3. Modern Loop: Tablo üzerinde hızlı iterasyon
    LOOP AT lt_students INTO DATA(ls_student).
      out->write( |Student Name: { ls_student-name }| ).
    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
