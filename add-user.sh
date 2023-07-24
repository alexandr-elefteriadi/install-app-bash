#!/bin/bash

IP=$(curl ifconfig.me)

read -p "Введите имя нового пользователя: " username

read -p "Введите полное имя нового пользователя: " full_name

read -p "Введите домашний каталог нового пользователя (по умолчанию /home/$username): " home_dir

read -p "Введите комментарий для нового пользователя:" comment

sudo adduser --gecos "$comment" --home "${home_dir:-/home/$username}" --shell /bin/bash $username

sudo passwd $username

echo "Новый пользователь $username успешно создан."

ssh-keygen

echo "$(cat id_rsa.pub)" >> ~/.ssh/authorized_keys

echo "ssh -i ~/.ssh/$username_rsa $username@$IP