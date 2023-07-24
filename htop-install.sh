#!/bin/bash

output=$(sudo apt-get update 2>&1)
htop_output=$(sudo apt install htop 2>&1)


echo -e "\n\033[34m ==>\033[37m [ОБНОВЛЕНИЕ ПАКЕТОВ]"
sudo apt-get update

if [ $? -eq 0 ]; then
    echo -e "\n\033[34m ==>\033[32m [ОБНОВЛЕНИЕ ПАКЕТОВ УСПЕШНО ЗАВЕРШЕННО]"
else
    echo -e "\n\033[34m ==>\033[31m [ОБНОВЛЕНИЕ ПАКЕТОВ ЗАВЕРШИЛОСЬ ОШИБКОЙ, ЛОГ:]"
    echo "$output"
fi

echo -e "\n\033[34m ==>\033[37m [HTOP INSTALL]"
sudo apt install htop
if [ $? -eq 0 ]; then
    echo -e "\n\033[34m ==>\033[32m [УСТАНОВКА HTOP УСПЕШНО ЗАВЕРШИЛАСЬ]"
else
    echo -e "\n\033[34m ==>\033[31m [УСТАНОВКА HTOP ЗАВЕРШИЛОСЬ ОШИБКОЙ, ЛОГ:]"
    echo "$nginx_output"
fi

echo -e "\n\033[34m ==>\033[32m [УСТАНОВКА ЗАВЕРШЕНА]"
echo -e "\n\033[34m ==>\033[37m Version: $(htop --version)"