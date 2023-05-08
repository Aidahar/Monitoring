#!/bin/bash
TIMEFORMAT="Время выполнения (в секундах) = %R"
time {
  NAME=$1
  TOTAL_FOLDERS=`(find $NAME -type d | wc -l) 2>/dev/null`
  MAX_FOLDERS=`(du -hs $NAME* | sort -rh | head -5 | awk '{printf "%s, %s\n", $2, $1}') 2>/dev/null`
  TOTAL_FILES=`(find $NAME -type f | wc -l) 2>/dev/null`
  TOTAL_CONFIG=`(find $NAME -type f -name "*.conf" | wc -l) 2>/dev/null`
  TOTAL_TXT=`(find $NAME -type f -name "*.TXT" | wc -l) 2>/dev/null`
  TOTAL_EXE=`(find $NAME -type f -perm /a=x | wc -l) 2>/dev/null`
  TOTAL_LOG=`(find $NAME -type f -name "*.log" | wc -l) 2>/dev/null`
  TOTAL_GZ=`(find $NAME -type f -name "*.tar*" | wc -l) 2>/dev/null`
  TOTAL_LINK=`(find $NAME -type l | wc -l) 2>/dev/null`
  MAX_FILES=`(find $NAME -type f -exec du -Sh {} + | sort -rh | head -10 | awk 'BEGIN{i=1}{p=index($2,"."); printf "%d: %s, %s, %s\n", i, $2, $1, substr($2,p+1); i++}') 2>/dev/null`
  MAX_EXE_FILES=`(find $NAME -type f -executable -not -path '*/\.*' -exec du -Sh {} + | sort -hr | head -10) 2>/dev/null`
  echo -e "Общее число папок, включая вложенные = ${TOTAL_FOLDERS}"
  echo -e "Топ 5 папок с самым большим весом в порядке убывания (путь и размер):\n${MAX_FOLDERS}"
  echo -e "Общее число файлов = ${TOTAL_FILES}"
  echo -e "Число конфигурационных файлов (с расширением .conf) = ${TOTAL_CONFIG}\nТекстовых файлов = ${TOTAL_TXT}\nИсполняемых файлов = ${TOTAL_EXE}\nЛогов (файлов с расширением .log) = ${TOTAL_LOG}\nАрхивов = ${TOTAL_GZ}\nСимволических ссылок = ${TOTAL_LINK}"
  echo -e "Топ 10 файлов с самым большим весом в порядке убывания (путь, размер и тип):\n${MAX_FILES}"
  echo -e "Топ 10 исполняемых файлов с самым большим весом в порядке убывания (путь, размер и хеш):${MAX_EXE_FILES}"
}
