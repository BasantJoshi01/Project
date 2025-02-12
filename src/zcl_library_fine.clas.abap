CLASS zcl_library_fine DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  types : begin of ty_fine,
          fine_amount(10) type p decimals 2,
          end of ty_fine.

      METHODS:
      calculate_fine
        IMPORTING days_overdue  TYPE int4
        RETURNING VALUE(result) TYPE ty_fine-fine_amount.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_library_fine IMPLEMENTATION.

METHOD calculate_fine.
    result = days_overdue * 1.
  ENDMETHOD.
ENDCLASS.
