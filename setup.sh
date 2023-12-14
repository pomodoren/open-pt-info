#!/bin/sh

python3 -m venv venv

# keep things separate and dont push
mkdir tools
cd tools

# create frequency
# git clone https://github.com/mapanica/easy-timetable-generator 
# cd tools
python3 easy-timetable-generator/convert.py -f prishtina
cp -r data/* ../results/frequency2timetable/

# git clone https://github.com/Jungle-Bus/osm2gtfs
osm2gtfs -c ../../results/tirana/config.json > ../../osm-issues/logging.tirana.txt 2>&1
osm2gtfs -c ../../results/prishtina/config.json > ../../osm-issues/logging.prishtina.txt 2>&1

