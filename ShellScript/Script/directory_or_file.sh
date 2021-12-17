set -x                         # very useful when we want debug the script ( also we will call this as debug mode )
if [ "$1" = "-f" -a -n "$2" ] 
then
    if [ -f $2 ]
    then
     echo "file found"
     else
     echo "file not found"    
    fi
elif [ "$1" = "-d" -a -n "$2" ] 
then
    if [ -d $2 ]
    then
       echo "directory found"
    else
     echo "directory not found"    
    fi
else
    echo "the options might be wrong please check script details"
fi
