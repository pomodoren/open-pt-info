# osm-generated-gtfs

Tools in usage:

- https://github.com/mapanica/easy-timetable-generator  <-- decide on frequencies
- https://github.com/Jungle-Bus/osm2gtfs   <-- generate trips


Visualizations:
- https://gtfs-validator.mobilitydata.org/ <-- get report on GTFS validity
- https://github.com/blinktaginc/gtfs-to-html <-- render schedules and map - https://run.gtfstohtml.com/

<br><hr><br>


## Notes on possible issues

- Make sure OSM data is correct:
    - Order of Stations is correct 
    - From and To is same to From and To that you have defined in the frequencies table
    - Via is defined (in case no error comes up - might be related to this)
- Make sure you have cleaned up after error in osm2gtfs
    - the data is cached under data/
-  python3 unpickling.py - for debugging routes


```python
            # trip via removed in trip creator
            trip_via = trip["via"] if "via" in trip else None
            if (trip_fr == itinerary.fr and
                    trip_to == itinerary.to and
                    # trip_via == itinerary.via and
                    service in trip_services):
                for stop in trip["stations"]:
                    stops.append(stop)
                break
```