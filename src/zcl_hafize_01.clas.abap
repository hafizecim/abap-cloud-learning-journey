CLASS zcl_hafize_01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_hafize_01 IMPLEMENTATION.


 METHOD if_oo_adt_classrun~main.

    " 1. Klasik Yöntemle Değişken Tanımlama
    DATA lv_degisken TYPE string.
    lv_degisken = 'ABAP Cloud Öğreniyorum'.

    " 2. Modern (Inline) Yöntemle Tanımlama (Tipi sistem otomatik algılar)
    DATA(lv_sayi) = 42.              " Integer (i)
    DATA(lv_tarih) = cl_abap_context_info=>get_system_date( ). " Sistem Tarihi (d)

    " 3. Konsola Çıktı Verme
    out->write( '--- Değişken Değerleri ---' ).
    out->write( lv_degisken ).
    out->write( lv_sayi ).
    out->write( lv_tarih ).

ENDMETHOD.

ENDCLASS.
