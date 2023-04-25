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
    NAME=$WHITE #White
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
    BACKGROUND=${BGWHITE} 
      ;;
  "2" ) 
    BACKGROUND=${BGRED}
      ;;
  "3" ) 
    BACKGROUND=${BGGREEN} 
      ;;
  "4" ) 
    BACKGROUND=${BGBLUE}
      ;;
  "5" ) 
    BACKGROUND=${BGMAGENTA} 
      ;;
  "6" ) 
    BACKGROUND=${BGBLACK}
      ;;
esac

case "$3" in
  "1" ) 
    N_SEC=$WHITE #White
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

HOSTNAME=`cat /etc/hostname`
TIMEZONE=`timedatectl | grep "Time zone" | awk '{print $3 $4 $5}'`
USER=`whoami`
OS=`cat /proc/version | awk '{print $1,$3,$4}'`
DATE=`date +"%d %b %Y %T"`
UPTIME=`uptime -p`
UPTIME_SEC=`cat /proc/uptime | awk '{print $2}'`
IP=`ip r | grep default | awk '/default/ {print $9}'`
NET_INTERFACE=`ip r | grep default | awk '/default/ {print $5}'`
MASK=`ifconfig $NET_INTERFACE | grep netmask | awk '{print $4}'`
GATEWAY=`ip r | grep default | awk '/default/ {print $3}'`
RAM_TOTAL=`free -m | awk '/Mem:/{printf "%.3f GB", $2/1024}'`
RAM_USED=`free -m | awk '/Mem:/{printf "%.3f GB", $3/1024}'`
RAM_FREE=`free -m | awk '/Mem:/{printf "%.3f GB", $4/1024}'`
SPACE_ROOT=`df -k /root/ | awk '/dev/{printf "%.2f MB", $2/1024}'`
SPACE_ROOT_USED=`df -k /root/ | awk '/dev/{printf "%.2f MB", $3/1024}'`
SPACE_ROOT_FREE=`df -k /root/ | awk '/dev/{printf "%.2f MB", $4/1024}'`
echo -e "${BACKGROUND}**${NAME}HOSTNAME${NORMAL}${BACKGROUND}**${NORMAL}        = ${BG}${N_SEC}$HOSTNAME${NORMAL}"
echo -e "${BACKGROUND}**${NAME}GATEWAY${NORMAL}${BACKGROUND}**${NORMAL}         = ${BG}${N_SEC}$GATEWAY${NORMAL}"
echo -e "${BACKGROUND}**${NAME}TIMEZONE${NORMAL}${BACKGROUND}**${NORMAL}        = ${BG}${N_SEC}$TIMEZONE${NORMAL}" 
echo -e "${BACKGROUND}**${NAME}USER${NORMAL}${BACKGROUND}**${NORMAL}            = ${BG}${N_SEC}$USER${NORMAL}"
echo -e "${BACKGROUND}**${NAME}OS${NORMAL}${BACKGROUND}**${NORMAL}              = ${BG}${N_SEC}$OS${NORMAL}"
echo -e "${BACKGROUND}**${NAME}DATE${NORMAL}${BACKGROUND}**${NORMAL}            = ${BG}${N_SEC}$DATE${NORMAL}"
echo -e "${BACKGROUND}**${NAME}UPTIME${NORMAL}${BACKGROUND}**${NORMAL}          = ${BG}${N_SEC}$UPTIME${NORMAL}"
echo -e "${BACKGROUND}**${NAME}UPTIME_SEC${NORMAL}${BACKGROUND}**${NORMAL}      = ${BG}${N_SEC}$UPTIME_SEC${NORMAL}"
echo -e "${BACKGROUND}**${NAME}IP${NORMAL}${BACKGROUND}**${NORMAL}              = ${BG}${N_SEC}$IP${NORMAL}"
echo -e "${BACKGROUND}**${NAME}MASK${NORMAL}${BACKGROUND}**${NORMAL}            = ${BG}${N_SEC}$MASK${NORMAL}"
echo -e "${BACKGROUND}**${NAME}RAM_TOTAL${NORMAL}${BACKGROUND}**${NORMAL}       = ${BG}${N_SEC}$RAM_TOTAL${NORMAL}"
echo -e "${BACKGROUND}**${NAME}RAM_USED${NORMAL}${BACKGROUND}**${NORMAL}        = ${BG}${N_SEC}$RAM_USED${NORMAL}"
echo -e "${BACKGROUND}**${NAME}RAM_FREE${NORMAL}${BACKGROUND}**${NORMAL}        = ${BG}${N_SEC}$RAM_FREE${NORMAL}"
echo -e "${BACKGROUND}**${NAME}SPACE_ROOT${NORMAL}${BACKGROUND}**${NORMAL}      = ${BG}${N_SEC}$SPACE_ROOT${NORMAL}"
echo -e "${BACKGROUND}**${NAME}SPACE_ROOT_USED${NORMAL}${BACKGROUND}**${NORMAL} = ${BG}${N_SEC}$SPACE_ROOT_USED${NORMAL}"
echo -e "${BACKGROUND}**${NAME}SPACE_ROOT_FREE${NORMAL}${BACKGROUND}**${NORMAL} = ${BG}${N_SEC}$SPACE_ROOT_FREE${NORMAL}"
