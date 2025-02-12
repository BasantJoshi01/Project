CLASS zcl_test_as DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_test_as IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    out->write( 'Hello World!!' ).

  ENDMETHOD.

ENDCLASS.
