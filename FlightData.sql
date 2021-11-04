-- Caroline Kiesling and Matt Daniel

-- CREATE the DATABASE
DROP DATABASE IF EXISTS FlightData;
CREATE DATABASE FlightData;

-- select the DATABASE
USE FlightData;

/* Delete the TABLEs if they already exist */
DROP TABLE IF EXISTS flights_megatable;

/* CREATE the schema for our TABLEs */
CREATE TABLE flights_megatable(
	flight_year YEAR, 
	flight_quarter INT, -- 1 num
    flight_month INT, 
    day_of_month INT, -- 2 nums
    day_of_week INT, 
    fl_date VARCHAR(10), 
    mkt_unique_carrier VARCHAR(2), 
    mkt_carrier_fl_num INT,  -- 4 numbers
    tail_num VARCHAR(10), 
    origin VARCHAR(3),
	origin_city_name VARCHAR(30), 
    origin_state_abr VARCHAR(2), 
    origin_state_nm VARCHAR(15), 
    dest VARCHAR(3), 
    dest_city_name VARCHAR(30), 
    dest_state_abr VARCHAR(2), 
    dest_state_nm VARCHAR(15), 
    crs_dep_time INT,
    dep_time DECIMAL(4,2), 
    dep_delay DECIMAL(4,2), 
    dep_delay_new DECIMAL(4,2),
    dep_del15 DECIMAL(4,2), 
    dep_delay_group DECIMAL(4,2), 
    dep_time_blk VARCHAR(10), 
    taxi_out DECIMAL(4,2), 
    wheels_off DECIMAL(4,2), 
    wheels_on DECIMAL(4,2),
    taxi_in DECIMAL(4,2), 
    crs_arr_time INT,
    arr_time DECIMAL(4,2),
    arr_delay DECIMAL(4,2),
    arr_delay_new DECIMAL(4,2),
    arr_del15 DECIMAL(4,2),
    arr_delay_group DECIMAL(4,2),
    arr_time_blk VARCHAR(10),
    cancelled TINYINT,
    cancellation_code VARCHAR(1),
    crs_elapsed_time DECIMAL(4,2),
    actual_elapsed_time DECIMAL(4,2),
    air_time DECIMAL(4,2),
    distance INT,
    distance_group INT,
    carrier_delay DECIMAL(4,2),
    weather_delay DECIMAL(4,2),
    nas_delay DECIMAL(4,2),
    security_delay DECIMAL(4,2),
    late_aircraft_delay DECIMAL(4,2)
    ); 
