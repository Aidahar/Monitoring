#/bin/bash

REGEX="^[+-]?[0-9]+([.][0-9]+)?$"
if [[ "$1" =~ $REGEX ]] 
  then
    echo 1
  else
    echo 0
fi