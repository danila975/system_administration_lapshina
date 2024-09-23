#!/bin/bash

echo 'топ 10 - ip адресов с которых идут запросы:' >> homwork1.txt
grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}' access.log | sort | uniq -c | sort -nr | head -10 >> homwork1.txt


echo 'подсчет количества методов POST, GET, PUT, DELETE, PATCH:' >> homwork1.txt
grep -Eo 'GET|POST|PUT|DELETE|PATCH' access.log | sort | uniq -c >> homwork1.txt

echo 'количество операционных систем с которых выполняются запросы в порядке убывания:' >> homwork1.txt
grep -Eo '\((Windows|Linux|Macintosh|Android|iPhone)[^)]*\)' access.log | sort | uniq -c | sort -nr >> homwork1.txt

echo 'Самое популярное устройство по количеству сделанных запросов:' >> homwork1.txt
grep -Eo '\((Linux|Android|iPhone|Windows|Macintosh|Other);' access.log | sort | uniq -c | sort -nr | head -1 >> homwork1.txt

echo 'перечисление пяти самых популярных браузеров включая их версию (как в заголовке):' >> homwork1.txt
grep -Eo '"Mozilla[^"]+' access.log | sort | uniq -c | sort -nr | head -5 >> homwork1.txt

