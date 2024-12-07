#!/bin/bash

cd /home/charlie/wwamapTracker/

DATE=`date -Iseconds`

URL="https://www.weather.gov/wwamap/png/US.png"

FN="data/${DATE}_wwamapUS.png"

curl $URL > $FN

git stage data/*

timestamp(){
    date +"%d.%m.%Y um %H:%M"
}

git commit -am "Auto Server Commit $(timestamp)"

git push --repo https://4kbt:`cat wwaAccessToken.txt`@github.com/4kbt/wwamapTracker.git 
