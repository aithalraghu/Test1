#!/bin/sh

for file in *.txt
do
 echo "fine name before appending time stamp --> $file"
 filename=$(cut -d'.' -f1 <<<"$file") 
echo "file name :$filename"
 echo "file name after appending time stamp --> $filename.$(date +%s).txt"
 mv $file /home/MyDataMove/$filename.$(date +%s).txt 
done
echo " list of files in destination path after moving /home/MyDataMove with timestamp appended"
ls -a /home/MyDataMove/*.txt
