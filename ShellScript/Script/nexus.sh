#!/bin/sh
help()
{
echo "to run this script there are many options to know more about read link"
}

if [[ $# -eq 0 || "$1" = "help" ]]
then
help
exit 0
fi

nexusUrl="http://34.125.243.163:8081"
echo "enter nexus password"
read -s password
 if [ "$1" = "count" ]
 then
  count=$(curl -s -u admin:$password $nexusUrl/service/rest/v1/repositories |  jq ".[].name" | wc -l)
  echo $count
elif [ "$1" = "allrepoinfo" ]
then 
  echo "Repo Name, Type"
  curl -s -u admin:admin $nexusUrl/service/rest/v1/repositories |  jq ' .[] | .name + "," + .type' | sed 's/"//g'
elif [ "$1" = "hosted" ]
then 
  echo "Repo Name"
  curl -s -u admin:admin $nexusUrl/service/rest/v1/repositories |  jq '.[] | select(.type == "hosted") | .name' | sed 's/"//g'
elif [ "$1" = "proxy" ]
then
   echo "Repo Name, Remote Repo name"
   curl -s -u admin:admin $nexusUrl/service/rest/v1/repositories | jq ' .[] | select(.type == "proxy") | .name + "," + .attributes.proxy.remoteUrl' | sed 's/"//g'

elif [[ "$1" = "admin" && "$2" = "mvnrc" ]]
  then
    echo "Are you sure you want to create maven repo?"
    echo "please enter repo name"
    read mvnreponame
    sed -i "s/REPONAME/$mvnreponame/" maven.json
    curl -H "Content-Type: application/json" -u admin:admin -d @maven.json 'http://34.125.243.163:8081/service/rest/v1/repositories/maven/hosted'
    sed -i "s/$mvnreponame/REPONAME/" maven.json
fi

# curl -v -u admin:admin --header "Content-Type: application/json" http://34.125.243.163:8081/service/rest/v1/script/ -d @maven.json

# curl -v -u admin:admin -X 'PUT'   'http://34.125.243.163:8081/service/rest/v1/repositories/docker/hosted'   -H 'accept: application/json'   -H 'Content-Type: application/json' -T docker.json

#curl -H "Content-Type: application/json" -u admin:admin -d @docker.json 'http://34.125.243.163:8081/service/rest/v1/repositories/docker/hosted'

# /v1/repositories/maven/hosted
