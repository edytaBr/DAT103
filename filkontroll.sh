#!/bin/bash

while true
do
statusIn=0
if [ -f "$1" ]
then
statusIn=$(stat $1)
sleep $2
    if [ ! -f "$1" ]
    then
        echo "Filen "$1" ble slettet"
        exit 1 
    fi
    if [[ $fileExist=0 && $statusNoFile = 0 ]]
    then
        echo "Filen "$1" ble opprettet"
        exit 1
    fi
    if [[ $statusIn != $(stat $1) ]]
    then
        echo "Filen "$1" ble endret"
        exit 1
    fi 
else 
  sleep $2
  fileExist=0
  statusNoFile=0
fi
done