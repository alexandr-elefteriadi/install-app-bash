#!/bin/bash

output=$(sudo apt-get update 2>&1)
nginx_output=$(sudo apt-get install -y nginx 2>&1)

echo -e "\n\033[34m ==>\033[37m [ОБНОВЛЕНИЕ ПАКЕТОВ]"
sudo apt-get update

if [ $? -eq 0 ]; then
    echo -e "\n\033[34m ==>\033[32m [ОБНОВЛЕНИЕ ПАКЕТОВ УСПЕШНО ЗАВЕРШЕННО]"
else
    echo -e "\n\033[34m ==>\033[31m [ОБНОВЛЕНИЕ ПАКЕТОВ ЗАВЕРШИЛОСЬ ОШИБКОЙ, ЛОГ:]"
    echo "$output"
fi

echo -e "\n\033[34m ==>\033[37m [NGINX INSTALL...]"

sudo apt-get install -y nginx
if [ $? -eq 0 ]; then
    echo -e "\n\033[34m ==>\033[32m [УСТАНОВКА NGINX УСПЕШНО ЗАВЕРШИЛАСЬ]"
else
    echo -e "\n\033[34m ==>\033[31m [УСТАНОВКА NGINX ЗАВЕРШИЛОСЬ ОШИБКОЙ, ЛОГ:]"
    echo "$nginx_output"
fi

echo -e "\n\033[34m ==>\033[37m $(nginx -v 2>&1)"