# Базовый образ (alpine - облегчённый)
FROM nginx:1.29.4-alpine

# Устанавливаем bash
RUN apk add bash

# Для удобства выполнения следующих команд
WORKDIR /usr/share/nginx/html

# Очищаем директорию от стандартных файлов nginx
RUN rm *

# Копируем ресурсы нашего сайта в контейнер
COPY website .

# Сбросим рабочую директорию
WORKDIR /

EXPOSE 80
