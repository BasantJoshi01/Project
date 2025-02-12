CLASS zcl_assg_audiobook DEFINITION
  PUBLIC
  INHERITING FROM zcl_method_03_library
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS calculate_fine REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
  CONSTANTS fine type p DECIMALS 2 value '1.5'.
ENDCLASS.



CLASS zcl_assg_audiobook IMPLEMENTATION.
  METHOD calculate_fine.

    result = days_overdue * fine.
  ENDMETHOD.
ENDCLASS.
