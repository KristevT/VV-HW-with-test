#!/bin/bash

i=0
folders_cnt=0
png_cnt=0
txt_cnt=0
misc_cnt=0
result=result.txt

if [[ -d $1 ]]
then
	files=$(ls $1)
	from_st="$1/"
	echo "Папка найдена. Подсчитываем файлы в $1..."
else
	files=$(ls)
	from_st=""
	echo "Папка не найдена. Подсчитываем файлы в текущей директории"
fi

for file in $files
do
	from="$from_st$file"
	if [[ -d $from ]]
	then
		folders_cnt=$(($folders_cnt+1))
	elif [[ $from == *.png ]]
	then
		png_cnt=$(($png_cnt+1))
	elif [[ $from == *.txt ]]
	then
		txt_cnt=$(($txt_cnt+1))
	else
		misc_cnt=$(($misc_cnt+1))
	fi
done

if [[ -f $from_st$result ]]
then 
	txt_cnt=$(($txt_cnt-1)) #файл с результатами подсчёта не учитывается
fi

echo "Результаты подсчёта:"
echo "Найдено $folders_cnt папок"
echo "Найдено $png_cnt файлов формата .png"
echo "Найдено $txt_cnt файлов формата .txt"
echo "Найдено $misc_cnt файлов с прочими форматами"
echo "Вы можете повторно посмотреть статистику в файле $result в указанной папке"

touch $from_st$result
echo "Дата проверки: `date`" >> $from_st$result
echo "Найдено $folders_cnt папок" >> $from_st$result
echo "Найдено $png_cnt файлов формата .png" >> $from_st$result
echo "Найдено $txt_cnt файлов формата .txt" >> $from_st$result
echo "Найдено $misc_cnt файлов с прочими форматами" >> $from_st$result
echo "" >> $from_st$result
exit 0