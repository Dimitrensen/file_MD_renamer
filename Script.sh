#!/bin/bash

#make a script which copies all the files from Files to Backup directory and pastes them inside backup folder with their name convension c.hanged

set -ex

if [ ! -d "./Backup" ]; then
    echo "Backup\ does not exist"
    echo "Creating directory"
    mkdir ./Backup
fi

for file in $(ls ./Files); do
    md5=$(md5sum ./Files/$file | cut -d ' ' -f 1)
    mv ./Files/$file ./Files/$md5
done

# echo $md5
# firstName=$(echo ${name} | cut -d ' ' -f 1)
# cp -R Files/* Backup/

#output somewhere temporarily the md5sum of every file of Files directory, take the output and create a file for each and every md5 that is output in the Backup folder
##can be put in a function