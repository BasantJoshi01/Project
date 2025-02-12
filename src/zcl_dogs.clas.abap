CLASS zcl_dogs DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

     INTERFACES zif_animals_as .
    METHODS PROTECT RETURNING VALUE(RESULT) TYPE STRING.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_dogs IMPLEMENTATION.

METHOD zif_animals_as~eat_food.


result_food =  'Dog is Eating Food'.

ENDMETHOD.

METHOD zif_animals_as~make_sound.

result_sound =  'Woof'.

ENDMETHOD.

METHOD protect.

RESULT = 'Dog has Bitten Stranger '.

ENDMETHOD.
ENDCLASS.
