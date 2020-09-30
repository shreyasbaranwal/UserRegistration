#!/bin/bash -x

#constants
VALIDNAMEPATTERN="^[A-Z]{1}[a-z]{2,}$"

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
