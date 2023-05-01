#!/bin/bash

BG=$1
NAME=$2
BG_SEC=$3
N_SEC=$4
NORMAL='\033[0m'

HOSTNAME=`hostnamectl | grep hostname | awk '{printf "%s\n", $3}'`
TIMEZONE=`timedatectl | grep "Time zone" | awk '{printf "%s ", $3}' && date +"%Z %z"`
USER=`whoami`
OS=`hostnamectl | grep "Operating System" | awk '{print $3, $4}'`
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
echo -e "${BG}**${NAME}HOSTNAME${NORMAL}${BG}**${NORMAL}        = ${BG_SEC}${N_SEC}$HOSTNAME${NORMAL}"
echo -e "${BG}**${NAME}TIMEZONE${NORMAL}${BG}**${NORMAL}        = ${BG_SEC}${N_SEC}$TIMEZONE${NORMAL}" 
echo -e "${BG}**${NAME}USER${NORMAL}${BG}**${NORMAL}            = ${BG_SEC}${N_SEC}$USER${NORMAL}"
echo -e "${BG}**${NAME}OS${NORMAL}${BG}**${NORMAL}              = ${BG_SEC}${N_SEC}$OS${NORMAL}"
echo -e "${BG}**${NAME}DATE${NORMAL}${BG}**${NORMAL}            = ${BG_SEC}${N_SEC}$DATE${NORMAL}"
echo -e "${BG}**${NAME}UPTIME${NORMAL}${BG}**${NORMAL}          = ${BG_SEC}${N_SEC}$UPTIME${NORMAL}"
echo -e "${BG}**${NAME}UPTIME_SEC${NORMAL}${BG}**${NORMAL}      = ${BG_SEC}${N_SEC}$UPTIME_SEC${NORMAL}"
echo -e "${BG}**${NAME}IP${NORMAL}${BG}**${NORMAL}              = ${BG_SEC}${N_SEC}$IP${NORMAL}"
echo -e "${BG}**${NAME}MASK${NORMAL}${BG}**${NORMAL}            = ${BG_SEC}${N_SEC}$MASK${NORMAL}"
echo -e "${BG}**${NAME}GATEWAY${NORMAL}${BG}**${NORMAL}         = ${BG_SEC}${N_SEC}$GATEWAY${NORMAL}"
echo -e "${BG}**${NAME}RAM_TOTAL${NORMAL}${BG}**${NORMAL}       = ${BG_SEC}${N_SEC}$RAM_TOTAL${NORMAL}"
echo -e "${BG}**${NAME}RAM_USED${NORMAL}${BG}**${NORMAL}        = ${BG_SEC}${N_SEC}$RAM_USED${NORMAL}"
echo -e "${BG}**${NAME}RAM_FREE${NORMAL}${BG}**${NORMAL}        = ${BG_SEC}${N_SEC}$RAM_FREE${NORMAL}"
echo -e "${BG}**${NAME}SPACE_ROOT${NORMAL}${BG}**${NORMAL}      = ${BG_SEC}${N_SEC}$SPACE_ROOT${NORMAL}"
echo -e "${BG}**${NAME}SPACE_ROOT_USED${NORMAL}${BG}**${NORMAL} = ${BG_SEC}${N_SEC}$SPACE_ROOT_USED${NORMAL}"
echo -e "${BG}**${NAME}SPACE_ROOT_FREE${NORMAL}${BG}**${NORMAL} = ${BG_SEC}${N_SEC}$SPACE_ROOT_FREE${NORMAL}"
