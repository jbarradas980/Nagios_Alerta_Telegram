#!/bin/bash
[[ $1  ]] || { echo "Es necesario ingresar el texto"; exit; }
#Se coloca la ID del chat de telegram
CHATID="6"
#Se coloca el identificador del bot
KEY="798k"
#El texto es el mensaje de error, se recibe como primer parametro
TEXT="$1"
#Establece el tiempo limite
TIME="10"
URL="https://api.telegram.org/bot$KEY/sendMessage"
curl -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null
