#!/bin/bash
nexusUrl="http://34.125.147.30:8081"
 if [ "$1" = "count" ]
 then
  count1=$(curl -s -u admin:$password $nexusUrl/service/rest/v1/repositories |  jq ".[].name" | wc -l)
  echo $count1
 fi

if [ "$1" = "deleteartifact" ]
 then 
version_list=$(curl -s -u admin:$password $nexusUrl/service/rest/v1/components?repository=maven-releases |  jq ".items[].version" | cut -d '"' -f 2)
 echo $version_list
i=0
for version in $version_list; do
  if [ $version = $2 ]
  then
   id=$(curl -s -u admin:$password $nexusUrl/service/rest/v1/components?repository=maven-releases |  jq ".items[$i].id" | cut -d '"' -f 2)
  fi
        i=$(( $i + 1 ))
done
echo $id
verdel=$(curl -u admin:$password -X DELETE "$nexusUrl/service/rest/v1/components/$id")
fi
  
