for file in $( ls -1 )
do
  if [ -f $file ]
  then
    echo "scanning $file"
    linecount=$( cat $file | wc -l )
    if [ $linecount -gt 10 ]
    then
        echo "$file" >> result.txt
    fi
  fi
done
