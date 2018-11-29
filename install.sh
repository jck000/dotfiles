#!/bin/sh

BACKUPTIME=`date +'_%F_%H%M'`
LIST=".bashrc .colorsrc colortest.sh .vim .vimrc vi_ruler.txt"
IFS=" ";

echo "$LIST
"
for i in $LIST ;do 
  echo "Installing $i
  "
  cp -r --backup --suffix=$BACKUPTIME $i ../$i
done

