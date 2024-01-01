#!/bin/bash

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "No arguments provided. Please provide a location."
    exit 1
fi

# Assign the first argument to a variable
location=$1

# Generate 
python3 tools/easy-timetable-generator/convert.py -f $location

# Get OSM data
rm -rf data/al_*  # remove pickled info (in collab with config)
osm2gtfs -c data/$location/config/osm2gtfs.config.json

# Generate maps
cd tools/gtfs-to-html/
gtfs-to-html --configPath ../../data/$location/config/gtfs-to-html.config.json
echo
