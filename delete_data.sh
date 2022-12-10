#! /bin/bash

PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"
echo "$($PSQL "DELETE FROM properties WHERE atomic_number = 1000;")"
echo "$($PSQL "DELETE FROM elements WHERE atomic_number = 1000;")"