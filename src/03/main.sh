#!/bin/bash

if [ $# -eq 4 ]
  then
    for idx in "$@"
    do
      if [[ idx -lt 1 ]] || [[ idx -gt 6 ]]
        then
          echo -e "Параметр должен быть в диапазоне от 1 до 6!"
          echo -e "Перезапустите скрипт!"
          exit 1
      fi
    done
    if [[ $1 == $2 ]] || [[ $3 == $4 ]]
      then
        echo -e "Цвет шрифта и цвет фона не должны совпадать!"
        echo -e "Перезапустите скрипт!"
        exit 1
    fi
    BG="$1"
    NAME="$2"
    BG_SEC="$3"
    N_SEC="$4"
else 
    echo -e "Необходимо ввести 4 параметра в диапазоне от 1 до 6!"
    echo -e "Перезапустите скрипт!"
    exit 1
fi

./colors.sh $BG $NAME $BG_SEC $N_SEC 
