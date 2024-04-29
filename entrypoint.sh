#!/bin/sh -l

token_id=$1
chat_id=$2
text=$3
parse_mode=$4
disable_web_page_preview=$5
disable_notification=$6

response=`curl -X POST https://api.telegram.org/bot$token_id/sendMessage -H 'Content-Type: application/json' -d "{\"chat_id\": \"$chat_id\", \"text\": \"$text\", \"parse_mode\": \"$parse_mode\", \"disable_web_page_preview\": \"$disable_web_page_preview\", \"disable_notification\": \"$disable_notification\"}"}`

echo "response=$response" >> $GITHUB_OUTPUT