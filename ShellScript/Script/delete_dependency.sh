for file in $( ls -1 )
do
    if [ -d $file ]
    then
        cd "$file" 
        if grep $1 pom.xml
        then
           linenumber=$( grep -n "$1" pom.xml | cut -d : -f 1 )
            startline=$( head -n $linenumber pom.xml | grep -n "<dependency>" | tail -1 | cut -d : -f 1 )
            temendline=$( tail -n +$linenumber  pom.xml | grep -n "</dependency>" | head -1 | cut -d : -f 1 )
            endline=$(( $linenumber + $temendline -1 ))
            sed -i -e "${startline},${endline}d" pom.xml
            echo "the artifact id deleted !!!!"
            cd ..
        else
          echo "project doesnt have pom.xml or artifact in pom.xml"
          cd ..
        fi         
    fi
done
