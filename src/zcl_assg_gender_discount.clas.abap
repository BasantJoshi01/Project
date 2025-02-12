CLASS zcl_assg_gender_discount DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   INTERFACES if_oo_adt_classrun .

 TYPES: Amount TYPE p LENGTH 10 DECIMALS 2.
    METHODS:
      calculate_discount IMPORTING purchase_value TYPE REF TO zcl_purchase
                         RETURNING VALUE(discount) TYPE Amount.
  PROTECTED SECTION.
  PRIVATE SECTION.
   CONSTANTS:
      discount_rate TYPE f VALUE '0.1'.

ENDCLASS.



CLASS zcl_assg_gender_discount IMPLEMENTATION.
 METHOD if_oo_adt_classrun~main.

 ENDMETHOD.

METHOD calculate_discount.

    data(discount_rate) =  cond #(  when purchase_value->get_gender(  ) = 'F' then '0.2'
                                    else discount_rate ).

    discount = purchase_value->get_quantity( ) * purchase_value->get_product( )->get_unit_price( ) * discount_rate.
  ENDMETHOD.


ENDCLASS.
