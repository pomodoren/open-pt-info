#!/bin/sh

python3 -m venv venv

# keep things separate
mkdir tools
cd tools

git clone https://github.com/mapanica/easy-timetable-generator 
git clone https://github.com/Jungle-Bus/osm2gtfs

# show results
echo "!Warning!"
echo "Make sure you have the latest node version"
sudo npm install -g gtfs-to-html
