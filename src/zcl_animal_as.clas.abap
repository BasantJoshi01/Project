CLASS zcl_animal_as DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_animal_as IMPLEMENTATION.

METHOD if_oo_adt_classrun~main.

  data(dog) = new ZCL_CLASS_DOGS(  ).
 out->write( |{ dog->zif_class_animals~eat_food( ) }| ).

  data(cat) = new zcl_class_cats(  ).
  out->write( |{ cat->zif_class_animals~make_sound( ) }| ).

  ENDMETHOD.
ENDCLASS.
