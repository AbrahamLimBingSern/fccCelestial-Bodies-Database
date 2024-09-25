#!/bin/bash
if [ -z "$1" ]; then
  echo "Please provide an element as an argument."
  exit 0
fi
PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"

SYMBOL=$1

DISPLAY_DATA() {
  if [[ -z $1 ]]
  then
    echo "I could not find that element in the database."
  else
    ATOMIC_NUMBER=$(echo "$1" | cut -d'|' -f1 | xargs)
    SYMBOL=$(echo "$1" | cut -d'|' -f2 | xargs)
    NAME=$(echo "$1" | cut -d'|' -f3 | xargs)
    TYPE=$(echo "$1" | cut -d'|' -f4 | xargs)
    MASS=$(echo "$1" | cut -d'|' -f5 | xargs)
    MELTING_POINT=$(echo "$1" | cut -d'|' -f6 | xargs)
    BOILING_POINT=$(echo "$1" | cut -d'|' -f7 | xargs)

    echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL)." "It's a $TYPE, with a mass of $MASS amu." "$NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
  fi
}

if [[ ! $SYMBOL =~ ^[0-9]+$ ]]
then
  # if input is greater than two letter
  LENGTH=$(echo -n "$SYMBOL" | wc -m)
  if [[ $LENGTH -gt 2 ]]
  then
    # get data by full name
    DATA=$($PSQL "SELECT atomic_number, symbol, name, type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id) WHERE name = '$SYMBOL'")
    DISPLAY_DATA "$DATA"
  else
    # get data by atomic symbol
    DATA=$($PSQL "SELECT atomic_number, symbol, name, type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id) WHERE symbol = '$SYMBOL'")
    DISPLAY_DATA "$DATA"
  fi

else
  # get data by atomic number
  DATA=$($PSQL "SELECT atomic_number, symbol, name, type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id) WHERE atomic_number = $SYMBOL")
  DISPLAY_DATA "$DATA"
fi
