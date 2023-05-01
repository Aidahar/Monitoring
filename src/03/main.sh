#!/bin/bash

if [ $# -eq 4 ]
  then
    NAME="$1"
    BG="$2"
    N_SEC="$3"
    BG_SEC="$4"
elif [ $# -ne 4 ]
    then
        echo "Мало параметров!"
    # Сделать ду вайл пока не еквал 4 параметра и 1 и 2 разные как и 3 и 4 разные
    while [[ $# -ne 4 ]] ; do
        read -r -p "Введите 4 параметра " NAME BG N_SEC BG_SEC
    done
fi

./colors.sh $NAME $BG $N_SEC $BG_SEC
