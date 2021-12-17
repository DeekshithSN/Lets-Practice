for file in ls -1
do
  if [ -d $file ]
  then
    echo "scanning $file"
    linecount=$( cat $file1 | wc -c )
    if [ $linecount = 10 ]
    then
        echo "$file" > result.txt
  fi
done
