#!/usr/bin/env bash
python scrap_indeed.py > /dev/null &
awk -F "\"*,\"*" '{print $2 $3}' textfile.csv
nosetests --with-coverage
