#!/bin/bash


TOKEN= #inserir aqui seu HASH Token Telegram do seu Boot
CHAT_ID= #Inserir aqui o chatID do seu grupo telegram que vai receber as msg
MESSAGE=" -- Não se esqueça que hoje é nosso dia de **BUSCAR** o café --    
          Buscar: 08:00 e 13:00 | Hora agora:"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
currentDate=`date +”%H:%M”`

curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$MESSAGE $currentDate"
