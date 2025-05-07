
#!/bin/bash
echo "Привет, $USER! Сегодняшняя дата: $(date +%d.%m.%Y)"

CURRENTDIR=$1
echo "Going to the another folder: $CURRENTDIR"
cd $CURRENTDIR
echo "Рабочий каталог: $CURRENTDIR"

echo "Список файлов в текущей директории:"                  
ls -l
                                
