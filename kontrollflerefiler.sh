#!/bin/bash

while true
do
for f in "$@"; do 
statusIn=0
if [ -f "$f" ]
then
statusIn=$(stat $f)
sleep 60
    if [ ! -f "$f" ]
    then
        echo "Filen "$f" ble slettet"
        continue
    fi
    if [[ $fileExist=0 && $statusOut = 0 ]]
    then
        echo "Filen "$f" ble opprettet"
        continue
    fi
    if [[ $statusIn != $(stat $1) ]]
    then
        echo "Filen "$f" ble endret"
        continue
    fi 
else 
  sleep 60
  #echo "No file"
  fileExist=0
  statusOut=0
fi
done
exit 1
done
