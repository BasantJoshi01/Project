CLASS zcl_cats DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  INTERFACES zif_animals_as .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_cats IMPLEMENTATION.
METHOD zif_animals_as~eat_food.

result_food = 'Cat is Eating Food'.

 ENDMETHOD.

 METHOD zif_animals_as~make_sound.

result_sound =  'Meow'.

 ENDMETHOD.
ENDCLASS.
