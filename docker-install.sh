#!/bin/bash

output=$(sudo apt-get update 2>&1)

echo -e "\n\033[34m ==>\033[37m [ОБНОВЛЕНИЕ ПАКЕТОВ]"
sudo apt-get update

if [ $? -eq 0 ]; then
    echo -e "\n\033[34m ==>\033[32m [ОБНОВЛЕНИЕ ПАКЕТОВ УСПЕШНО ЗАВЕРШЕННО]"
else
    echo -e "\n\033[34m ==>\033[31m [ОБНОВЛЕНИЕ ПАКЕТОВ ЗАВЕРШИЛОСЬ ОШИБКОЙ, ЛОГ:]"
    echo "$output"
fi

echo -e "\n\033[34m ==>\033[37m [DOCKER INSTALL]"
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt-cache policy docker-ce
sudo apt install docker-ce

sudo usermod -aG docker ${USER}
su - ${USER}
sudo usermod -aG docker username

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

# sudo gpasswd -a $USER docker 
# newgrp docker 

if [ $? -eq 0 ]; then
    echo -e "\n\033[34m ==>\033[32m [УСТАНОВКА DOCKER УСПЕШНО ЗАВЕРШИЛАСЬ]"
else
    echo -e "\n\033[34m ==>\033[31m [УСТАНОВКА DOCKER ЗАВЕРШИЛОСЬ ОШИБКОЙ, ЛОГ:]"
    echo "$nginx_output"
fi

echo -e "\n\033[34m ==>\033[32m [УСТАНОВКА ЗАВЕРШЕНА]"
echo -e "\n\033[34m ==>\033[37m Version: $(docker -v)"
echo -e "\n\033[34m ==>\033[37m Version: $(docker-compose -v)"