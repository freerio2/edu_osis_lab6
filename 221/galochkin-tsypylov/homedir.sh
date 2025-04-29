#!/bin/bash
if  [-z "$1"]; then
	echo "Ошибка: Укажите имя пользователя."
	exit 1
fi
user_home=$(grep"^$1:" /etc/passwd | cut -d: -f6)
if [-z "$user_home"];then
	echo "Ошибка: Пользователь '$1' не найден."
else
	echo "Домашняя директория пользоватиеля '$1': $user_home"
fi

