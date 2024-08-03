#!/bin/bash

# Tmp Files Cleanup
# Run as root

FOLDER="/tmp/006261db-1e66-48c8-b4c9-7b080cce1cbb.tmp"

if [[ -e ${FOLDER} && -d ${FOLDER} ]];
then
    cd ${FOLDER} || echo "Error while moving to Folder ${FOLDER} "
    ls -lrt ./*.tmp
    rm -rf ./*.tmp
    echo "Files ending with .tmp are deleted"
else
    echo "Invalid path ${FOLDER}"
    exit 2
fi
exit