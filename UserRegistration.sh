#!/bin/bash/

echo "Welcome to The User Registration System"

# Function that validates First Name............................

fName(){
	
	read -p "Enter your First Name keeping first letter as capital: " firstName

	# Regex pattern for First Name Validation where first character must be Capital
	reg_pattern='^[A-Z]{1}[a-z]{2,}$'
	
	if [[ $firstName =~ $reg_pattern ]]
	then
       	echo "Valid Entry : $firstName "
	else
       	echo "Invalid Entry! Please ensure that first letter of your name is capital"
	fName
	fi
}

# Function that validates Last Name ...............................

lName(){

	read -p "Enter your Last Name keeping first letter as capital: " lastName

	# Regex pattern for Last Name Validation where first character must be Capital
	reg_pattern='^[A-Z]{1}[a-z]{2,}$'

	if [[ $lastName =~ $reg_pattern ]]
	then
       		echo "Valid Entry : $lastName "
	else
       		echo "Invalid Entry! Please ensure that first letter of your last name is capital"
		lName
	fi

	}


# Function that Validates Email....................................

mailId(){

	read -p "Enter your email id in the format as abc.xyz@gmail.co.in : " email

	#Regex pattern for valid email id eg abc.xyz@gmail.co.in
	reg_pattern="^[a-zA-Z0-9]+([._+-][a-zA-Z0-9]+)*@[a-zA-Z0-9]+[.]+[a-z]{2,3}([.][a-z]{2})*$"

	if [[ $email =~ $reg_pattern ]]
	then
        	echo "Valid Entry: $email"
	else
       	 	echo "Invalid Entry: Please enter email-id in the proper format "
		mailId
	fi
}

# Function that Validates Mobile Number..........................

mobileNum(){

	read -p "Enter your Mobile Number in the format as [ 91 1234567890 ]  : " mobNum

	# Regex pattern for valid Mobile Number as 91 1234567890
	reg_pattern="^[0-9]{2}[ ][0-9]{10}$"

	if [[ $mobNum =~ $reg_pattern ]]
	then
        	echo "Valid Entry : $mobNum"
	else
        	echo "Invaild Entry! Please enter in the format described"
		mobileNum
	fi
}

Password(){

	read -p "Enter your Password : " password

	# Regex pattern for valid Mobile Number as 91 1234567890
	reg_pattern="^[a-zA-Z0-9]{8,}$ "

	if [[ $mobNum =~ $reg_pattern ]]
	then
        	echo "Valid Entry : $password"
	else
        	echo "Invaild Entry! Please enter in the format described"
		Password
	fi
}

# function call for First Name
fName

# Function Call for Last Name
lName 

#function call for Mail Address
mailId

#function call for Mobile Number
mobileNum

#function call for Password
Password
