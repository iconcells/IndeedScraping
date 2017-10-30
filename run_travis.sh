#!/usr/bin/env bash
python scrap_indeed > /dev/null &
nosetests --with-coverage
