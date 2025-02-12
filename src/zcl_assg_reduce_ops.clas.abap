CLASS zcl_assg_reduce_ops DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_assg_reduce_ops IMPLEMENTATION.

METHOD if_oo_adt_classrun~main.

  DATA(SUM) = REDUCE I( INIT INDEX  = 0 FOR COUNT = 1 THEN COUNT + 1 UNTIL COUNT > 300
                         NEXT INDEX = INDEX + COUNT ).

  out->write( |Sum : { sum }| ).

  ENDMETHOD.
ENDCLASS.
