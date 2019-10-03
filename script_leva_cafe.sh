#!/bin/bash

TOKEN= #Inserir aqui o seu HASH Token do seu boot Telegram
CHAT_ID= #Inserir aqui o ChatID do seu grupo Telegram que ira receber as mensagens
MESSAGE=" -- Não se esqueça que hoje é nosso dia de **LEVAR** o café --           
        Levar: 10:40hrs e 16:30hrs | Hora agora:"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
currentDate=`date +”%H:%M”`

curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$MESSAGE $currentDate"
