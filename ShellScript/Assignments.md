1. Identify memory used on / directory, if its more than 50% then delete files in /tmp.

```
📏 : Medium 
🔑 : make use of df, awk & cut commands
Testing 🔑 : download a big file using wget command 
```  
----------------
2. In a file [domain.list](https://github.com/DeekshithSN/Lets-Practice/blob/main/ShellScript/Script/domain.list)  we have list of domain names, read each domain name and send a curl request. display domain name which are not responding.  


    Reference : [click here](https://stackoverflow.com/questions/10929453/read-a-file-line-by-line-assigning-the-value-to-a-variable)

```
📏 : Medium 
🔑 : use while loop, input redirection & curl command might help you 
``` 
---------------------------
3. In a given directory identify shell script files ( file names ends with .sh ), check whether shebang line exsists or not. if its present dont do any change else insert shebang ( /bin/bash ) 
       
     Setup : download files which present in this [directory](https://github.com/DeekshithSN/Lets-Practice/tree/main/ShellScript/Script)

```
📏 : Hard 
🔑 : use while loop, input redirection & curl command might help you 
``` 
----------------------------
4. If you want to become better devops engineer its not about only writing script from scratch, you should know how to fix the issues in exsisting scripts. In [palindrome.sh](https://github.com/DeekshithSN/Lets-Practice/blob/main/ShellScript/Script/palindrome.sh) we are expecting one param i.e, string that you need check whether its palindrome or not. one issue is if user doesn't supply string, its executing to the success ( exit status of script is zero ) and o/p is "this is not palindrome", but its not correct. we should handle it properly. if the string is not supplied to the script,it shuold execute to failure ( exit status should not be zero ) and error message which says "Please supply string for which you want to check palindrome" 

```
📏 : Easy 
🔑 : make use of if condition and positional parameters concept 
``` 
------------------------
5. Identify the position of the parameter, lets say we have script position.sh that can accept n number of parameters, assume "-f" is one of the param. whenever the script is executed we need identify the position of "-f"?

```
  Examples - 
  1. sh position.sh a b -f d
     Output: position is 3
  2. sh position.sh a b z x -f 
     Output: position is 5
  3. sh position.sh
     Output: -f is not supplied
```
```
📏 : Easy 
🔑 : Make use of for loop, if condition and string operator  
``` 
--------------------
6. Need a script which get us information like public ip, used memory capacity,time, loggedin username. here we need to give user options, for what what info needed?like if user executes ( assuming script file name is info.sh )
 - info.sh ip  : print public ip
 - info.sh memory : print used memory capacity 
 - info.sh time : print time with timestamp 
 - info.sh user : print loggedin user name 

```
📏 : Easy 
🔑 : make use of case and other basic commands like date, df and logname. to get public ip use https://api.ipify.org   
```
