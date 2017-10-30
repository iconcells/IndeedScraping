#!/usr/bin/env bash
rm output.csv
python scrap_indeed.py > /dev/null &
awk -F "\"*,\"*" '{print $2,"\t",$3}' output.csv
nosetests --with-coverage
