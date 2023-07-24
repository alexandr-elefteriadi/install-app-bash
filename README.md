# Репозиторий скриптов для установки необходимых приложений на новом сервере

Добро пожаловать в репозиторий скриптов, который содержит все необходимые инструменты и приложения для настройки вашего нового сервера. Здесь вы найдете установочный скрипт, который автоматизирует процесс установки следующих компонентов:

1. Docker - мощный инструмент для контейнеризации приложений, облегчающий развертывание и управление приложениями.

2. Docker Compose - инструмент для определения и управления многоконтейнерными Docker-приложениями.

3. Nginx - веб-сервер и обратный прокси, предоставляющий высокую производительность и масштабируемость.

4. NVM (Node Version Manager) - утилита для управления версиями Node.js, позволяющая устанавливать и переключаться между различными версиями Node.js.

5. Node.js и NPM - популярная среда для выполнения JavaScript-кода и менеджер пакетов для установки зависимостей.

6. PM2 - процесс-менеджер для Node.js приложений, который обеспечивает их надежную работу в фоновом режиме.

7. htop - интерактивный монитор ресурсов, предоставляющий детальную информацию о загрузке системы и процессах.

8. ncdu - интерактивная утилита для анализа использования дискового пространства.

#

Инструкции по установке
Для запуска установочного скрипта выполните следующие шаги:

1. Склонируйте данный репозиторий на свой сервер:
   
 # git clone <ссылка на репозиторий.git>

2. Перейдите в каталог с репозиторием:

 # cd <название репозитория>

3. Запустите установочный скрипт:
   
 # bash main.sh

4. Следуйте инструкциям на экране для выбора необходимых компонентов для установки. Вы можете установить все компоненты сразу или выбрать их по отдельности.
Примечание: Если вы хотите установить только часть программ, после установки одного компонента, необходимо снова выполнить команду:

 # bash main.sh

# Возможности скрипта

- Создание нового пользователя: Скрипт предоставляет возможность создать нового пользователя на сервере, что поможет обеспечить безопасность и удобство управления.

- Создание пары ключей SSH: Секьюрити-аспекты не забыты! Скрипт также предоставляет функциональность для генерации пары SSH-ключей, чтобы обеспечить безопасный доступ к серверу по SSH.

Мы надеемся, что данный репозиторий и установочный скрипт сделают процесс настройки сервера удобным и быстрым. Если у вас возникли вопросы или предложения, не стесняйтесь создавать Issue или отправлять Pull Request'ы. Желаем приятного использования!




