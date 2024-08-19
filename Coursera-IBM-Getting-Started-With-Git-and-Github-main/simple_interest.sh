#!/bin/bash

# This script calculates the simple interest based on user inputs.

# Prompt the user for the principal amount, annual interest rate, and time period
echo "Welcome to the Simple Interest Calculator!"

# Read the principal amount from the user
echo "Please enter the principal amount (e.g., 1000):"
read principal

# Read the annual interest rate from the user (as a decimal)
echo "Please enter the annual interest rate (e.g., 0.05 for 5%):"
read rate

# Read the time period in years from the user
echo "Please enter the time period in years (e.g., 2):"
read time

# Validate input to ensure they are positive numbers
if [[ ! $principal =~ ^[0-9]+(\.[0-9]+)?$ ]] || [[ ! $rate =~ ^[0-9]+(\.[0-9]+)?$ ]] || [[ ! $time =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
  echo "Invalid input. Please enter positive numbers for principal, rate, and time."
  exit 1
fi

# Calculate simple interest using the formula: Interest = Principal * Rate * Time
interest=$(echo "$principal * $rate * $time" | bc)

# Display the result to the user
echo "The calculated simple interest is: $interest"
