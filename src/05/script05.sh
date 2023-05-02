#!/bin/bash
TIMEFORMAT="Время выполнения (в секундах) = %R"
time {
  NAME=$1
  TOTAL_FOLDERS=`(find $NAME -type d | wc -l) 2>/dev/null`
  
  TOTAL_FILES=`(find $NAME -type f | wc -l) 2>/dev/null`
  TOTAL_CONFIG=`(find $NAME -type f -name "*.conf" | wc -l) 2>/dev/null`
  TOTAL_TXT=`(find $NAME -type f -name "*.TXT" | wc -l) 2>/dev/null`
  TOTAL_EXE=`(find $NAME -perm /a=x | wc -l) 2>/dev/null`
  TOTAL_LOG=`(find $NAME -type f -name "*.log" | wc -l) 2>/dev/null`
  TOTAL_GZ=`(find $NAME -type f -name "*.tar*" | wc -l) 2>/dev/null`
  TOTAL_LINK=`(find $NAME -type l | wc -l) 2>/dev/null`

  echo -e "Общее число папок, включая вложенные = ${TOTAL_FOLDERS}"
  echo -e "Общее число файлов = ${TOTAL_FILES}"
  echo -e "Число конфигурационных файлов (с расширением .conf) = ${TOTAL_CONFIG}\nТекстовых файлов = ${TOTAL_TXT}\nИсполняемых файлов = ${TOTAL_EXE}\nЛогов (файлов с расширением .log) = ${TOTAL_LOG}\nАрхивов = ${TOTAL_GZ}\nСимволических ссылок = ${TOTAL_LINK}"
}

