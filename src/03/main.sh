#!/bin/bash

if [ $# -eq 4 ]
  then
    BG="$1"
    SR="$2"
    BG_S="$3"
    SR_S="$4"
elif [ $# -ne 4 ]
    then
        echo "Мало параметров!"
    # Сделать ду вайл пока не еквал 4 параметра и 1 и 2 разные как и 3 и 4 разные
    while [ $# -ne 4 ] ; do
       read -r -p "введите параметры фона и шрифта" $BG $SR $BG_S $SR_S
    done
fi
./script.sh $BG $SR $BG_S $SR_S
