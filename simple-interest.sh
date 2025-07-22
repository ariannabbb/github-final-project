#!/bin/bash

# simple-interest.sh
# A basic shell script to calculate simple interest

echo "Simple Interest Calculator"

# Prompt user for input values
read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (in %): " rate
read -p "Enter the time (in years): " time

# Validate inputs (check for empty or non-numeric values)
if ! [[ $principal =~ ^[0-9]+([.][0-9]+)?$ ]] || ! [[ $rate =~ ^[0-9]+([.][0-9]+)?$ ]] || ! [[ $time =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter valid numeric values for principal, rate, and time."
    exit 1
fi

# Calculate simple interest: SI = (P × R × T) / 100
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Output the result
echo "The Simple Interest is: $interest"
