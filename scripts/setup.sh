#!/bin/sh

python3 -m venv venv

# keep things separate
mkdir tools
cd tools

git clone https://github.com/mapanica/easy-timetable-generator 
git clone https://github.com/Jungle-Bus/osm2gtfs
