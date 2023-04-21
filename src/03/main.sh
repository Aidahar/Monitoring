#!/bin/bash

if [ $# -ne 4 ]
    then
        echo "Мало параметров!"
else 
    ./script.sh $1 $2 $3 $4
fi