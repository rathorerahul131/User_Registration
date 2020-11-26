#!/bin/bash/

echo "Welcome to The User Registration System"

# First Name Validation ............................

read -p "Enter your First Name keeping first letter as capital: " firstName

# Regex pattern for First Name Validation where first character must be Capital

reg_pattern='^[A-Z]{1}[a-z]{2,}$'

if [[ $firstName =~ $reg_pattern ]]
then
       echo "Valid Entry : $firstName "
else
       echo "Invalid Entry! Please ensure that first letter of your name is capital"
fi


# Last Name Validation...............................

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


# Email Validation....................................

read -p "Enter your email id in the format as abc.xyz@gmail.co.in : " email

#Regex pattern for valid email id eg abc.xyz@gmail.co.in

reg_pattern="^[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)*@[a-zA-Z0-9]+[.]+[a-z]{2,4}([.][a-z]{2})*$"

if [[ $email =~ $reg_pattern ]]
then
        echo "Valid Entry: $email"
else
        echo "Invalid Entry: Please enter email-id in the proper format "
fi

