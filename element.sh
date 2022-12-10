#! /bin/bash
#elements search

#query database 
PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"

if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
  exit
elif ! [[ $1 =~ ^[0-9]+$ ]]
then
  GET_ELEMENT_FROM_DB="$($PSQL "SELECT atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id) WHERE symbol='$1' OR name='$1';")"
else
  GET_ELEMENT_FROM_DB="$($PSQL "SELECT atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id) WHERE atomic_number=$1;")"
fi
if ! [[ -z $GET_ELEMENT_FROM_DB ]]
then
  echo $GET_ELEMENT_FROM_DB | while read ATOMIC_NUMBER BAR NAME BAR SYMBOL BAR TYPE BAR ATOMIC_MASS BAR MELTING_POINTS_CELSIUS BAR BOILING_POINT_CELSIUS
    do
      echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINTS_CELSIUS celsius and a boiling point of $BOILING_POINT_CELSIUS celsius."
    done
else
  echo "I could not find that element in the database."
fi

#echo  "$($PSQL "SELECT atomic_number, name, symbol, type, melting_point_celsius, boiling_point_celsius FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id);")"
