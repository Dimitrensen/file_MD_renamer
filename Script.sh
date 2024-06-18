#!/bin/bash

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