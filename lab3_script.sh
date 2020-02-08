#!/bin/bash
# Authors : Ryan Jones
# Date: 2/7/2020

#Problem 1 Code:

#Prompting user for filename and regex statement
echo "Enter a filename: "
read filename
echo "Enter a regex statement: "
read regex

#Searching file for regex
printf "\nSearching filr for regex expression:\n"
grep $regex $filename

test=regex_practice.txt

#Searching for phone numbers
printf "\nNumber of phone numbers: "
egrep -c "[0-9]{3}-[0-9]{3}-[0-9]{4}" $test

#Searching for emails
printf "\nNumber of emails: "
egrep -c ".+@.+\..{2,3}$" $test

#Listing 303 phone numbers
printf "\n303 area code phone numbers:\n"
egrep -o "^303-[0-9]{3}-[0-9]{4}$" $test

#Finding geocities emails
printf "\nSending geocities emails to file\n\n"
egrep ".+@geocities.com" $test > email_results.txt

#Adding and committing changes
git add email_results.txt
git commit -m "Added email_results.txt"
