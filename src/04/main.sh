#!/bin/bash

BG=`cat config | grep column1_b | grep -oe '[0-9]$'`
NAME=`cat config | grep column1_f | grep -oe '[0-9]$'`
BG_SEC=`cat config | grep column2_b | grep -oe '[0-9]$'`
N_SEC=`cat config | grep column2_f | grep -oe '[0-9]$'`

BG_DEFAULT=0
NAME_DEFAULT=0
BG_SEC_DEFAULT=0
N_SEC_DEFAULT=0

if [[ BG -lt 1 ]] || [[ BG -gt 6 ]]
then
  BG=2
  BG_DEFAULT=1
fi
if [[ NAME -lt 1 ]] || [[ NAME -gt 6 ]]
then
  NAME=6
  NAME_DEFAULT=1
fi
if [[ BG_SEC -lt 1 ]] || [[ BG_SEC -gt 6 ]]
then
  BG_SEC=2
  BG_SEC_DEFAULT=1
fi
if [[ N_SEC -lt 1 ]] || [[ N_SEC -gt 6 ]]
then
  N_SEC=6
  N_SEC_DEFAULT=1
fi

if [[ $BG == $NAME ]] || [[ $BG_SEC == $N_SEC ]]
then
  echo -e "Фон и цвет текста не могут быть одинаковы. Исправьте файл конфигурации и перезапустите скрипт!"
  exit 1
fi

./colors.sh $BG $NAME $BG_SEC $N_SEC 
./color_scheme.sh $BG $NAME $BG_SEC $N_SEC $BG_DEFAULT $NAME_DEFAULT $BG_SEC_DEFAULT $N_SEC_DEFAULT

