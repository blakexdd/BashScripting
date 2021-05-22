#!/bin/bash

while(true)
do
    echo -n "Proceed with backup (Y/y/N/n): "
    read response
    proceed=""

    case $response in
        n*|N*) proceed="false";;
        y*|Y*) proceed="true";;
    esac

    if [[ "$proceed" == "true" ]]
    then
        echo "Proceed with backup"
    elif [[ "$proceed" == "false" ]]
    then
        echo "Cancelling backup"
    else
        echo "Unrecognizable commane"
    fi
done