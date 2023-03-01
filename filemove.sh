#!/bin/bash
#storing the main directory where we are searching for files-- note tht below script will check in all child directories also
path="/d"
find "$path" > f.log
#storing user input file i.e; filename or substring
x=$1
c=0
grep "$x" "f.log" | while read -r line; do
#copying file to target path..here taget path is python directory
cp "$line" "/d/python"
((c+=line))
done
echo $c
if [ $c==0 ];then
echo "no file found"
else
echo "$c files are moved"
fi
