#!/bin/bash

DATE=`date -Iseconds`

URL="https://www.weather.gov/wwamap/png/US.png"

FN="data/${DATE}_wwamapUS.png"

curl $URL > $FN
