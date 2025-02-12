CLASS zcl_assig1_as DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.

 PRIVATE SECTION.
 TYPES : BEGIN OF ty_employee,
          first_name TYPE string,
          last_name  TYPE string,
          END OF ty_employee.

  METHODS employee_name
       IMPORTING
        first_name TYPE string
        last_name  TYPE string
      RETURNING VALUE(RESULT) TYPE ty_employee.

ENDCLASS.

CLASS zcl_assig1_as IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA(employee_name) = employee_name( first_name = 'John' last_name = 'Cena' ).

    out->write( employee_name ).

  ENDMETHOD.

  METHOD employee_name.

  result = value #( first_name = first_name
                    last_name = last_name ).

  ENDMETHOD.


ENDCLASS.
