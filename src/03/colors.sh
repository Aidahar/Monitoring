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
    NAME=${WHITE} #White
      ;;
  "2" ) 
    NAME=${RED} #Red
      ;;
  "3" ) 
    NAME=${GREEN} #Green
      ;;
  "4" ) 
    NAME=${BLUE} #Blue
      ;;
  "5" ) 
    NAME=${MAGENTA} #Purple
      ;;
  "6" ) 
    NAME=${BLACK} #Black
      ;;
esac

case "$2" in
  "1" ) 
    BG=${BGWHITE} 
      ;;
  "2" ) 
    BG=${BGRED}
      ;;
  "3" ) 
    BG=${BGGREEN} 
      ;;
  "4" ) 
    BG=${BGBLUE}
      ;;
  "5" ) 
    BG=${BGMAGENTA} 
      ;;
  "6" ) 
    BG=${BGBLACK}
      ;;
esac

case "$3" in
  "1" ) 
    N_SEC=${WHITE} #White
      ;;
  "2" ) 
    N_SEC=${RED} #Red
      ;;
  "3" ) 
    N_SEC=${GREEN} #Green
      ;;
  "4" ) 
    N_SEC=${BLUE} #Blue
      ;;
  "5" ) 
    N_SEC=${MAGENTA} #Purple
      ;;
  "6" ) 
    N_SEC=${BLACK} #Black
      ;;
esac

case "$4" in
  "1" ) 
    BG_SEC=${BGWHITE} 
      ;;
  "2" ) 
    BG_SEC=${BGRED} 
      ;;
  "3" ) 
    BG_SEC=${BGGREEN} 
      ;;
  "4" ) 
    BG_SEC=${BGBLUE} 
      ;;
  "5" ) 
    BG_SEC=${BGMAGENTA} 
      ;;
  "6" ) 
    BG_SEC=${BGBLACK} 
      ;;
esac

./data.sh $NAME $BG $N_SEC $BG_SEC 
