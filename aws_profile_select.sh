#!/bin/bash

profiles=($(perl -lne '/\[\K[^\]]+/ and print $&' <PATH TO YOUR CREDENTIALS FILE>))
PS3='Profile number: '

export AWS_SHARED_CREDENTIALS_FILE=<PATH TO YOUR CREDENTIALS FILE>

echo " "
echo "-------------------------------"
echo "Please select a profile to load"
echo "-------------------------------"

select choice in "${profiles[@]}"
do
    export AWS_PROFILE=$choice
    echo "-------------------------------"
    echo "AWS CLI profile set to "$choice    
    echo "-------------------------------"
    echo " "
    break
done
