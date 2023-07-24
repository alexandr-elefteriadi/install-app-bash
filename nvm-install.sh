#!/bin/bash
output=$(nvm install $version 2>&1)

read -p "Выберите версию Node.js для установки: " version

sudo apt install curl

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

nvm install node
nvm install $version


if [ $? -eq 0 ]; then
    echo -e "\n\033[34m ==>\033[32m [УСТАНОВКА NODE УСПЕШНО ЗАВЕРШЕННА]"
else
    echo -e "\n\033[34m ==>\033[31m [УСТАНОВКА NODE  ЗАВЕРШИЛАСЬ ОШИБКОЙ, ЛОГ:]"
    echo "$output"
fi


echo -e "\n\033[34m ==>\033[32m [УСТАНОВКА NPM]" && tput sgr0

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

npm install -g npm

echo -e "\n\033[34m ==>\033[32m [УСТАНОВКА PM2]" && tput sgr0

npm install -g pm2

echo -e "\n\033[34m ==>\033[32m [УСТАНОВКА ЗАВЕРШЕНА]"
echo -e "\n\033[34m ==>\033[37m node: $(node -v)"
echo -e "\n\033[34m ==>\033[37m npm: $(npm -v)"
echo -e "\n\033[34m ==>\033[37m pm2: $(pm2 -v)"