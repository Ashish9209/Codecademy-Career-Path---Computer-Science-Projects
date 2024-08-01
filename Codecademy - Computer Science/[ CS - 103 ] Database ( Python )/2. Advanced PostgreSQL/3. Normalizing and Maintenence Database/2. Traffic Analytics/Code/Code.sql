-- STEP 1
SELECT pg_size_pretty(pg_table_size('sensors.observations'));

-- STEP 2 & STEP 3
SELECT
pg_size_pretty(pg_total_relation_size('sensors.observations_pkey')) as idx_1_size,
pg_size_pretty(pg_total_relation_size('sensors.observations_location_id_datetime_idx'))as idx_2_size;

SELECT
pg_size_pretty(pg_table_size('sensors.observations')) as tbl_size,
pg_size_pretty(pg_indexes_size('sensors.observations')) as idx_size,
pg_size_pretty(pg_total_relation_size('sensors.observations')) as total_size;

-- STEP 4
UPDATE sensors.observations
SET distance = (distance * 3.281)
WHERE TRUE;

-- STEP 5
SELECT
pg_size_pretty(pg_table_size('sensors.observations')) as tbl_size,
pg_size_pretty(pg_indexes_size('sensors.observations')) as idx_size,
pg_size_pretty(pg_total_relation_size('sensors.observations')) as total_size;

-- Step 6
VACUUM sensors.observations;

SELECT pg_size_pretty(pg_table_size('sensors.observations')) as total_size;

-- Step 7
\COPY sensors.observations (id, datetime, location_id, duration, distance, category) FROM './additional_obs_types.csv' WITH DELIMITER ',' CSV HEADER;

-- STEP 8 NOTHING HAPPENDS…
VACUUM sensors.observations;

SELECT pg_size_pretty(pg_table_size('sensors.observations')) as total_size;

-- STEP 9 VACCUM FULL
VACUUM FULL sensors.observations;

SELECT pg_size_pretty(pg_table_size('sensors.observations')) as total_size;

-- STEP 10
DELETE from sensors.observations WHERE location_id > 24;

-- STEP 11
SELECT pg_size_pretty(pg_table_size('sensors.observations')) as total_size;

-- STEP 12
TRUNCATE sensors.observations;

-- STEP 13
\COPY sensors.observations (id, datetime, location_id, duration, distance, category) FROM './original_obs_types.csv' WITH DELIMITER ',' CSV HEADER;

\COPY sensors.observations (id, datetime, location_id, duration, distance, category) FROM './additional_obs_types.csv' WITH DELIMITER ',' CSV HEADER;

-- STEP 14
SELECT
pg_size_pretty(pg_table_size('sensors.observations')) as tbl_size,
pg_size_pretty(pg_indexes_size('sensors.observations')) as idx_size,
pg_size_pretty(pg_total_relation_size('sensors.observations')) as total_size;