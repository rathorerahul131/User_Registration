#!/bin/bash/

echo "Welcome to The User Registration System"

read -p "Enter your First Name keeping first letter as capital: " firstName

reg_pattern='^[A-Z]{1}[a-z]{2,}$'

if [[ $firstName =~ $reg_pattern ]]
then
       echo "Valid Entry : $firstName "
else
       echo "Invalid Entry! Please ensure that first letter of your name is capital"
fi