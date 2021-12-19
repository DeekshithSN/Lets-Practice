#!/bin/bash 
echo "Branch Name, when its updated" > branch.txt
echo "Please provide the password"
read -s password
presentdate=`date +'%s'`
list_of_branch=$(curl -s -u $2:$password https://api.github.com/repos/$2/$1/branches | jq ".[].name" | cut -d '"' -f 2)

for branch in $list_of_branch; do 
last_updated_date=$(curl -s -u $2:$password https://api.github.com/repos/$2/$1/branches/$branch |  jq '.commit.commit.author.date' | cut -d '"' -f 2 )
last_updated_date_sec=$(date -d $last_updated_date +%s)
numberofdays=$(( ($presentdate - $last_updated_date_sec) / (60*60*24) ))

    if [ $numberofdays -gt 60 ] ; then
            echo "$branch,$numberofdays" >> branch.txt
        
        echo "Branch $branch  is updated $numberofdays days back"
     fi
done
