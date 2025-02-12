CLASS zcl_assg3_as DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.

  METHODS:deposit IMPORTING deposit_amount type i,
          withdraw IMPORTING withdraw_amount type i,
          get_balance RETURNING VALUE(result) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: balance type i value 0.
ENDCLASS.

CLASS zcl_assg3_as IMPLEMENTATION.
METHOD deposit.
    me->balance += deposit_amount.
  ENDMETHOD.

  METHOD withdraw.
    me->balance -= withdraw_amount.
  ENDMETHOD.

  METHOD get_balance.
    result = me->balance.
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
    deposit( 500 ).
    withdraw( 100 ).
    deposit( 6000 ).
    withdraw( 800 ).
    out->write( get_balance( ) ).
  ENDMETHOD.
ENDCLASS.
