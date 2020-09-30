#!/bin/bash -x

#constants
VALIDNAMEPATTERN="^[A-Z]{1}[a-z]{2,}$"
EMAILPATTERN="^[[:alnum:]]+(([._+-]*)[[:alnum:]]+)*@[[:alnum:]]+.[[:alpha:]]{2,4}([.][[:alpha:]]{2,3})*$"
MOBILEPATTERN="^[+][0-9]{2}[ ][0-9]{10}$"
PASSWORDPATTERN="[[:alnum:]]{8,}$"

#function for pattern check
function patternCheck()
{
   if [[ $1 =~ $2 ]]
   then
      echo "Valid Pattern."
   else
      echo "Invalid Pattern."
   fi
}

#Function calling and passing parameter
read -p "Enter first name: " firstName
patternCheck $firstName $VALIDNAMEPATTERN

read -p "Enter last name: " lastName
patternCheck $lastName $VALIDNAMEPATTERN

read -p "Enter Email ID: " email
patternCheck $email $EMAILPATTERN

read -p "Enter mobile number with country code: " mobno
patternCheck $mobno $MOBILEPATTERN

read -p "Enter password: " password
patternCheck $password $PASSWORDPATTERN
