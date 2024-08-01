
Traffic Analytics


In this project you’ll use what you’ve learned about database maintenance to manage a table that receives constant updates from a network of sensors.

Imagine that your company provides information about vehicle traffic around it’s retail locations. After anyone passes by one of your company’s cameras, an observation is created with the time, location, time spent in the observation area (in seconds), and their distance traveled in the observation area (in meters). To start, we’ll have a single table in the database named sensors.observations with the following format.

         Table "sensors.observations"
+-----------------+-----------------------------+
|     Column      |            Type             |
+-----------------+-----------------------------+
| id              | text                        |
| datetime        | timestamp without time zone |
| location_id     | int                         |
| duration        | double precision            |
| distance_meters | double precision            |
| category        | text                        |
+-----------------+-----------------------------+
Indexes:
    "observations_pkey" PRIMARY KEY, btree (id)
    "observations_location_id_datetime_idx" btree (location_id, datetime)