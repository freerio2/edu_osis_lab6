#i/bin/bash
if [-z "$1"]; then
	echo "Ошибка: Укажите путь к директории."
	exit
fi
if [-d "$1" ] ; then
	echo " директория '$1' уже суествует."
else
	mkdir -p "$1" 2>/dev/null
	if [$? -eq 0] ; then
		echo "Директория '$1' успешно создана."
	else
		echo "Ошибка: невозможно создать директорю '$1'. Нет прав."
	fi
fi



