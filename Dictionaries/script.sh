#!/bin/bash

declare -A demomap

demomap["user1"]="pwd1"
demomap["user2"]="pwd2"
demomap["user3"]=""
demomap["user4"]="pwd4"


for each in "${!demomap[@]}";
do
    echo "Key:  ${each}, Value: ${demomap[$each]}"
    if [[ -z ${demomap[${each}]} ]];
    then
        echo "key: ${each} has empty value"
        # exit 2
    fi
done


declare -A demo2=(
    ["HOSTNAME"]="${HOSTNAME}"
    ["USERNAME"]="${USERNAME}"
    ["DATA"]=""
)

echo "Demo2"
for each in "${!demo2[@]}";
do
    echo "Key-${each}, Value-${demo2[${each}]}"
done