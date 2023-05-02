#/bin/bash

# Обозначения цветов: ()  
# **Параметр 1** - это фон названий значений (HOSTNAME, TIMEZONE, USER и т.д.)  
# **Параметр 2** - это цвет шрифта названий значений (HOSTNAME, TIMEZONE, USER и т.д.)  
# **Параметр 3** - это фон значений (после знака '=')  
# **Параметр 4** - это цвет шрифта значений (после знака '=')

# Цвет фона
BGBLACK='\033[40m'		#	${BGBLACK}
BGRED='\033[41m'		#	${BGRED}
BGGREEN='\033[42m'		#	${BGGREEN}
BGBLUE='\033[44m'		#	${BGBLUE}
BGMAGENTA='\033[45m'    #   ${BGMAGENTA}
BGWHITE='\033[47m'      #   ${BGWHITE}

# Цвет текста:
BLACK='\033[30m'		#	${BLACK}		# чёрный цвет знаков
RED='\033[31m'			#	${RED}			# красный цвет знаков
GREEN='\033[32m'		#	${GREEN}		# зелёный цвет знаков
BLUE='\033[34m'			#	${BLUE}			# синий цвет знаков
MAGENTA='\033[35m'		#	${MAGENTA}		# фиолетовый цвет знаков
WHITE='\033[37m'        #   ${WHITE}        # белый

NORMAL='\033[0m'

case "$1" in
  "1" ) 
    BG=${BGWHITE} #White
      ;;
  "2" ) 
    BG=${BGRED} #Red
      ;;
  "3" ) 
    BG=${BGGREEN} #Green
      ;;
  "4" ) 
    BG=${BGBLUE} #Blue
      ;;
  "5" ) 
    BG=${BGMAGENTA} #Purple
      ;;
  "6" ) 
    BG=${BGBLACK} #Black
      ;;
esac

case "$2" in
  "1" ) 
    NAME=${WHITE} 
      ;;
  "2" ) 
    NAME=${RED}
      ;;
  "3" ) 
    NAME=${GREEN} 
      ;;
  "4" ) 
    NAME=${BLUE}
      ;;
  "5" ) 
    NAME=${MAGENTA} 
      ;;
  "6" ) 
    NAME=${BLACK}
      ;;
esac

case "$3" in
  "1" ) 
    BG_SEC=${BGWHITE} #White
      ;;
  "2" ) 
    BG_SEC=${BGRED} #Red
      ;;
  "3" ) 
    BG_SEC=${BGGREEN} #Green
      ;;
  "4" ) 
    BG_SEC=${BGBLUE} #Blue
      ;;
  "5" ) 
    BG_SEC=${BGMAGENTA} #Purple
      ;;
  "6" ) 
    BG_SEC=${BGBLACK} #Black
      ;;
esac

case "$4" in
  "1" ) 
    N_SEC=${WHITE} 
      ;;
  "2" ) 
    N_SEC=${RED} 
      ;;
  "3" ) 
    N_SEC=${GREEN} 
      ;;
  "4" ) 
    N_SEC=${BLUE} 
      ;;
  "5" ) 
    N_SEC=${MAGENTA} 
      ;;
  "6" ) 
    N_SEC=${BLACK} 
      ;;
esac

./data.sh $BG $NAME $BG_SEC $N_SEC 
