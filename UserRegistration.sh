#!/bin/bash/

echo "Welcome to The User Registration System"

read -p "Enter your First Name keeping first letter as capital: " firstName

# Regex pattern for First Name Validation where first character must be Capital
reg_pattern='^[A-Z]{1}[a-z]{2,}$'

if [[ $firstName =~ $reg_pattern ]]
then
       echo "Valid Entry : $firstName "
else
       echo "Invalid Entry! Please ensure that first letter of your name is capital"
fi


read -p "Enter your Last Name keeping first letter as capital: " lastName

# Regex pattern for Last Name Validation where first character must be Capital
reg_pattern='^[A-Z]{1}[a-z]{2,}$'

if [[ $lastName =~ $pattern ]]
then
       echo "Valid Entry : $lastName "
else
       echo "Invalid Entry! Please ensure that first letter of your last name is capital"
fi

echo "Your Full Name is $firstName $lastName"
