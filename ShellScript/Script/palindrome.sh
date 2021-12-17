# This script is to check given string is palindrome or not 
# Maintainer DeekshithSN
# How to run the script 
#         palindrom.sh <string_that_you_want_to_check>
# examples -
#         palindrome.sh wow
#            o/p : this is palindrome
#         palindrome.sh abc 
#             o/p : this is not palindrome
#         palindrome.sh 
#             o/p : this is not palindrome
#!/bin/bash
reverse=$( echo $1 | rev  )
if [ "$1" = "$reverse" ] 
then
 echo "this is palindrome"
 else
     echo "this is not palindrome"
fi
