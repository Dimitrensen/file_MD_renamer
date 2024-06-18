#!/bin/bash

#make a script which copies all the files from Files to Backup directory and pastes them inside backup folder with their name convension c.hanged

set -ex

if [ ! -d "./Backup" ]; then
    echo "Backup\ does not exist"
    echo "Creating directory"
    mkdir ./Backup
fi

echo test
cp -R Files/* Backup/

#output somewhere temprarily the md5sum of every file of Files directory, take the output and create a file for each and every md5 that is output in the Backup folder
##can be put in a function