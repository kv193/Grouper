#!/bin/sh

dir_prj=~/KV/Grouper
name_prj=Grouper
name_file=grouper
file_list="*.DSN *.dsn allegro/*[!1].brd"
dir_cur= pwd

file_txt=${name_file}.hw.txt
file_zip=${name_file}.hw.zip

echo '****'
echo $dir_cur

cd ${dir_prj}/sch

vi ${name_file}.hw.txt

zip -uz $file_zip $file_list < $file_txt

cd $dir_cur
