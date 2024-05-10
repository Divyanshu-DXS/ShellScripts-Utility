#!/bin/bash

echo "Welcome to the password generator" 
sleep 2

# Function to validate password length input
validate_input() {
    local input=$1
    re='^[0-9]+$'
    if ! [[ $input =~ $re ]]; then
        echo "Error: Please enter a valid positive integer."
        exit 1
    fi
}

# Taking input from user on the length requried for the password
echo "Please enter the length of the password required: "
read PWD_LENGTH

# Validate user input
validate_input "$PWD_LENGTH"

# Function to generate a random password
generate_password() {
    local length=$1
    local password=$(openssl rand -base64 32 | tr -dc 'a-zA-Z0-9!@#$%^&*()_+-=' | head -c "$length")
    echo "$password"
}

echo "How many passwords would you like to generate?"
read NUM_PASSWORDS

# Validate user input
validate_input "$NUM_PASSWORDS"

echo "Generating $NUM_PASSWORDS passwords with length $PWD_LENGTH..."

for ((i = 1; i <= NUM_PASSWORDS; i++)); do
    echo "Password $i: $(generate_password "$PWD_LENGTH")"
done

######












