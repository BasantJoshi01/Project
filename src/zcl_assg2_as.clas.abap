CLASS zcl_assg2_as DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_assg2_as IMPLEMENTATION.
METHOD if_oo_adt_classrun~main.
    DATA(EmployeeLastName) = to_upper( 'Cena' ).
    out->write( EmployeeLastName ).
  ENDMETHOD.
ENDCLASS.
