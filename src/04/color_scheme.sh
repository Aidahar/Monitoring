#!/bin/bash

BG=$1
NAME=$2
BG_SEC=$3
N_SEC=$4
BG_DEFAULT=$5
NAME_DEFAULT=$6
BG_SEC_DEFAULT=$7
N_SEC_DEFAULT=$8

echo -e "\nЦветовая схема: \n"
if [[ $BG_DEFAULT == 0 ]]
then
  case "${BG}" in
    '1' ) 
      echo -e "Column 1 background = 1 (white)"
      ;;
    '2' )
      echo -e "Column 1 background = 2 (red)"
      ;;
    '3' )
      echo -e "Column 1 background = 3 (green)"
      ;;
    '4' )
      echo -e "Column 1 background = 4 (blue)"
      ;;
    '5' )
      echo -e "Column 1 background = 5 (purple)"
      ;;
    '6' )
      echo -e "Column 1 background = 6 (black)"
      ;;
  esac
else
  case "${BG}" in
    '1' ) 
      echo -e "Column 1 background = default (white)"
      ;;
    '2' )
      echo -e "Column 1 background = default (red)"
      ;;
    '3' )
      echo -e "Column 1 background = default (green)"
      ;;
    '4' )
      echo -e "Column 1 background = default (blue)"
      ;;
    '5' )
      echo -e "Column 1 background = default (purple)"
      ;;
    '6' )
      echo -e "Column 1 background = default (black)"
      ;;
  esac
fi
if [[ $NAME_DEFAULT == 0 ]]
then
  case "${NAME}" in
    '1' ) 
      echo -e "Column 1 font color = 1 (white)"
      ;;
    '2' )
      echo -e "Column 1 font color = 2 (red)"
      ;;
    '3' )
      echo -e "Column 1 font color = 3 (green)"
      ;;
    '4' )
      echo -e "Column 1 font color = 4 (blue)"
      ;;
    '5' )
      echo -e "Column 1 font color = 5 (purple)"
      ;;
    '6' )
      echo -e "Column 1 font color = 6 (black)"
      ;;
  esac
else
  case "${NAME}" in
    '1' ) 
      echo -e "Column 1 font color = default (white)"
      ;;
    '2' )
      echo -e "Column 1 font color = default (red)"
      ;;
    '3' )
      echo -e "Column 1 font color = default (green)"
      ;;
    '4' )
      echo -e "Column 1 font color = default (blue)"
      ;;
    '5' )
      echo -e "Column 1 font color = default (purple)"
      ;;
    '6' )
      echo -e "Column 1 font color = default (black)"
      ;;
  esac
fi
if [[ $BG_SEC_DEFAULT == 0 ]]
then
  case "${BG_SEC}" in
    '1' ) 
      echo -e "Column 2 background = 1 (white)"
      ;;
    '2' )
      echo -e "Column 2 background = 2 (red)"
      ;;
    '3' )
      echo -e "Column 2 background = 3 (green)"
      ;;
    '4' )
      echo -e "Column 2 background = 4 (blue)"
      ;;
    '5' )
      echo -e "Column 2 background = 5 (purple)"
      ;;
    '6' )
      echo -e "Column 2 background = 6 (black)"
      ;;
  esac
else
  case "${BG_SEC}" in
    '1' ) 
      echo -e "Column 2 background = default (white)"
      ;;
    '2' )
      echo -e "Column 2 background = default (red)"
      ;;
    '3' )
      echo -e "Column 2 background = default (green)"
      ;;
    '4' )
      echo -e "Column 2 background = default (blue)"
      ;;
    '5' )
      echo -e "Column 2 background = default (purple)"
      ;;
    '6' )
      echo -e "Column 2 background = default (black)"
      ;;
  esac
fi
if [[ $N_SEC_DEFAULT == 0 ]]
then
  case "${N_SEC}" in
    '1' ) 
      echo -e "Column 2 font color = 1 (white)"
      ;;
    '2' )
      echo -e "Column 2 font color = 2 (red)"
      ;;
    '3' )
      echo -e "Column 2 font color = 3 (green)"
      ;;
    '4' )
      echo -e "Column 2 font color = 4 (blue)"
      ;;
    '5' )
      echo -e "Column 2 font color = 5 (purple)"
      ;;
    '6' )
      echo -e "Column 2 font color = 6 (black)"
      ;;
  esac
else
  case "${N_SEC}" in
    '1' ) 
      echo -e "Column 2 font color = default (white)"
      ;;
    '2' )
      echo -e "Column 2 font color = default (red)"
      ;;
    '3' )
      echo -e "Column 2 font color = default (green)"
      ;;
    '4' )
      echo -e "Column 2 font color = default (blue)"
      ;;
    '5' )
      echo -e "Column 2 font color = default (purple)"
      ;;
    '6' )
      echo -e "Column 2 font color = default (black)"
      ;;
  esac
fi
