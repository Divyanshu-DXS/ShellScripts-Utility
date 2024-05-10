#!/bin/bash

echo "Welcome to the password generator" 
sleep 2
echo "Please enter the length of the password required: "
read PWD_LENGTH

for p in $(seq 1 5);
do 
    openssl rand -base64 48 | cut -c1-${PWD_LENGTH}
done