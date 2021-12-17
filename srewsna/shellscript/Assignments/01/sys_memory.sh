FILESYSTEM=/
capacity=`df -Pm $FILESYSTEM | awk 'FNR==2 {print$5}' | cut -d% -f1`

if [ $capacity -gt 50 ]
then
    echo 'space is more than 50'
    rm /tmp/*
else
    echo 'space available'
fi
