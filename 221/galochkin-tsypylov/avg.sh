#!/bim/bash
if [$# -eq 0]; then
	echo "Ошибка: необходимо передать хотя бы одно число."
	exit 1
fi
sum=0
count=0
for arg in "$@"; do
	if [[$arg=~^-?[0-9]+(\.[0-9]+)?$]]; then
		sum=$(echo "$sum + $arg" | bc)
		count=$((count + 1))
	else
		echo "Предупреждение: '$arg' не является числом и будет проигнорировано."
	fi
done
if [$count -eq 0]; then
	echo "Ошибка: ни один аргумент не является числом."
	exit 1
fi
average=$(echo "scale=2; $sum / $count" | bc)
echo "Среднее значение: $average"



