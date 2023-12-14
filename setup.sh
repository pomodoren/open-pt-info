#!/bin/sh

python3 -m venv venv

# keep things separate and dont push
mkdir tools
cd tools

# create frequency
# git clone https://github.com/mapanica/easy-timetable-generator 
# cd tools
# python3 easy-timetable-generator/convert.py -f prishtina

git clone https://github.com/Jungle-Bus/osm2gtfs

