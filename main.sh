#!/bin/bash

echo -e "\n\033[34m ==> Выберите приложения для установки: <==\n"
echo -e "\033[37m 1. Full install app \n\033[32m docker, docker compose, htop, ncdu, nginx, nvm + node.js + npm, pm2"
echo -e "\033[37m 2. docker"
echo -e "\033[37m 3. htop"
echo -e "\033[37m 4. ncdu"
echo -e "\033[37m 5. nginx"
echo -e "\033[37m 6. node + nvm + npm + pm2 \n"
echo -e "\033[37m u. create new user \n"
read -p "Введите номер: " choice



case $choice in
    1)
        APP="Full install app"
        bash ./nginx-install.sh
        bash ./nvm-install.sh
        bash ./docker-install.sh
        bash ./htop-install.sh
        bash ./ncdu-install.sh

        ;;
    2)
        APP="docker"
        bash ./docker-install.sh
        ;;
    3)
        APP="htop"
        bash ./htop-install.sh
        ;;
    4)
        APP="ncdu"
        bash ./ncdu-install.sh
        ;;
    5)
        APP="nginx"
        bash ./nginx-install.sh
        ;;
    6)
        APP="node"
        bash ./node-install.sh
        ;;
    u)
        APP="user"
        bash ./add-user.sh
        ;;
    *)
        echo -e "\033[41m Установка отменена.\n"
        exit 1
        ;;
esac

echo "Вы выбрали: $APP"
echo -e "\n\033[34m ==>\033[37m Version: $(docker -v)"
echo -e "\n\033[34m ==>\033[37m Version: $(docker-compose -v)"

echo -e "\n\033[34m ==>\033[37m Version: $(htop --version)"

echo -e "\n\033[34m ==>\033[37m Version: $(ncdu -v)"

echo -e "\n\033[34m ==>\033[37m $(nginx -v 2>&1)"

echo -e "\n\033[34m ==>\033[37m node: $(node -v)"
echo -e "\n\033[34m ==>\033[37m npm: $(npm -v)"
echo -e "\n\033[34m ==>\033[37m pm2: $(pm2 -v)"

sudo gpasswd -a $USER docker 
newgrp docker 
