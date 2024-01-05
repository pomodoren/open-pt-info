# osm-generated-pt-info

<br>

> **VISIT WEBSITE**: https://pomodoren.github.io/osm-generated-pt-info/

<br>

- `sh scripts/setup.sh` - used to install main tools used
- `sh scripts/build_website.sh` - used to update website
- `sh run.sh durres` - example usage of `run.sh` file

<br>

### Tools used

- https://github.com/mapanica/easy-timetable-generator  <-- decide on frequencies
- https://github.com/Jungle-Bus/osm2gtfs   <-- generate trips
- https://gtfs-validator.mobilitydata.org/ <-- get report on GTFS validity
- https://github.com/blinktaginc/gtfs-to-html <-- render schedules and map - https://run.gtfstohtml.com/

<br>

### Notes on possible issues

- Make sure OSM data is correct:
    - Order of Stations is correct 
    - From and To is same to From and To that you have defined in the frequencies table
    - Via is defined (in case no error comes up - might be related to this) 
- Make sure you have cleaned up after error in osm2gtfs
    - the data is cached under data/ - `rm -rf data/al_*`
-  python3 tools/unpickling.py - for debugging routes built


<br>

### Sneak Peek



| Example| Example per line |
| --|--|
| ![](docs/example.png) | ![](docs/example-line.png) |
| **Tirana - L2** | **Prishtina - L1A** |
| ![](docs/tirana.png) | ![](docs/prishtina.png) |


