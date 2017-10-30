#!/usr/bin/env bash
python scrap_indeed.py > /dev/null &
nosetests --with-coverage
