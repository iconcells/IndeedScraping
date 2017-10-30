#!/usr/bin/env bash
python scrap_indeed.py > /dev/null &
awk -F "\"*,\"*" '{print $2,"\t",$3}' output.csv
nosetests --with-coverage
