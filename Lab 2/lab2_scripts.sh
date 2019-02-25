
#!/bin/bash
# Author : Auragzeb Malik
# Date: 1/31/2019
# Script follows here:
echo "Commandline arguement: $1"
echo "Number of phone numbers in regex_practice.txt"
grep -Ec [0-9]{3}-[0-9]{3}-[0-9]{4}$ regex_practice.txt
echo "Number of emails"
grep -Ec @ regex_practice.txt
echo "All 303 number (also can be found in phone_results.txt)"
grep -E 303-[0-9]{3}-[0-9]{4}$ regex_practice.txt
grep -E 303-[0-9]{3}-[0-9]{4}$ regex_practice.txt > phone_results.txt
echo "All the @geocities.com emails (also can be found in email_results.txt)"
grep -E @geocities.com regex_practice.txt 
grep -E @geocities.com regex_practice.txt > email_results.txt
echo "Command line arguement requested (results can also be found int command_results.txt)"
grep -E $1 regex_practice.txt 
grep -E $1 regex_practice.txt > command_results.txt
git add phone_results.txt
git add email_results.txt
git add command_results.txt
git add lab2_scripts.sh
git commit -m "Updating phone_results.txt, email_results.txt, and command_results.txt"
#Thank you, Goodbye!
