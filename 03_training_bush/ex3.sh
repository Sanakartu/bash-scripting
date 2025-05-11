#!/bin/bash

read -p "Введите путь к директории или команду: " CURRENTDIR
echo "Привет, $USER! Сегодняшняя дата: $(date +%d.%m.%Y)"

#if CURRENTDIR == cd .. then 
if [[ "$CURRENTDIR" == "cd .." ]] then
    echo "Вы ввели команду, выполняю..."
    cd ..  # Doing like command
    echo "Переходим в директорию: $CURRENTDIR"
    echo "Рабочий каталог: $(pwd)"
    echo "Список файлов в текущей директории:"
    ls -l
else
    echo "Вы ввели путь к директории, выполняю..."
    cd "$CURRENTDIR"  # Doing like path
    echo "Переходим в директорию: $CURRENTDIR"
    echo "Рабочий каталог: $(pwd)"
    echo "Список файлов в текущей директории:"
    ls -l


fi
