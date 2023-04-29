create schema airline_schema;
use airline_schema;


CREATE TABLE `airline_marketing` (
  `YEAR` int DEFAULT NULL,
  `QUARTER` int DEFAULT NULL,
  `MONTH` int DEFAULT NULL,
  `DAY_OF_MONTH` int DEFAULT NULL,
  `DAY_OF_WEEK` int DEFAULT NULL,
  `FL_DATE` TEXT DEFAULT NULL,
  `MKT_UNIQUE_CARRIER` varchar(70),
  `BRANDED_CODE_SHARE` varchar(70),
  `MKT_CARRIER_AIRLINE_ID` int DEFAULT NULL,
  `MKT_CARRIER` varchar(70),
  `MKT_CARRIER_FL_NUM` int DEFAULT NULL,
  `SCH_OP_UNIQUE_CARRIER` varchar(70),
  `SCH_OP_CARRIER_AIRLINE_ID` varchar(70),
  `SCH_OP_CARRIER` varchar(70),
  `SCH_OP_CARRIER_FL_NUM` varchar(70),
  `OP_UNIQUE_CARRIER` varchar(70),
  `OP_CARRIER_AIRLINE_ID` int DEFAULT NULL,
  `OP_CARRIER` varchar(70),
  `TAIL_NUM` varchar(70),
  `OP_CARRIER_FL_NUM` int DEFAULT NULL,
  `ORIGIN_AIRPORT_ID` int DEFAULT NULL,
  `ORIGIN_AIRPORT_SEQ_ID` int DEFAULT NULL,
  `ORIGIN_CITY_MARKET_ID` int DEFAULT NULL,
  `ORIGIN` varchar(70),
  `ORIGIN_CITY_NAME` varchar(70),
  `ORIGIN_STATE_ABR` varchar(70),
  `ORIGIN_STATE_FIPS` int DEFAULT NULL,
  `ORIGIN_STATE_NM` varchar(70),
  `ORIGIN_WAC` int DEFAULT NULL,
  `DEST_AIRPORT_ID` int DEFAULT NULL,
  `DEST_AIRPORT_SEQ_ID` int DEFAULT NULL,
  `DEST_CITY_MARKET_ID` int DEFAULT NULL,
  `DEST` varchar(70),
  `DEST_CITY_NAME` varchar(70),
  `DEST_STATE_ABR` varchar(70),
  `DEST_STATE_FIPS` int DEFAULT NULL,
  `DEST_STATE_NM` varchar(70),
  `DEST_WAC` int DEFAULT NULL,
  `CRS_DEP_TIME` int DEFAULT NULL,
  `DEP_TIME` int DEFAULT NULL,
  `DEP_DELAY` int DEFAULT NULL,
  `DEP_DELAY_NEW` int DEFAULT NULL,
  `DEP_DEL15` int DEFAULT NULL,
  `DEP_DELAY_GROUP` int DEFAULT NULL,
  `DEP_TIME_BLK` varchar(70),
  `TAXI_OUT` int DEFAULT NULL,
  `WHEELS_OFF` int DEFAULT NULL,
  `WHEELS_ON` int DEFAULT NULL,
  `TAXI_IN` int DEFAULT NULL,
  `CRS_ARR_TIME` int DEFAULT NULL,
  `ARR_TIME` int DEFAULT NULL,
  `ARR_DELAY` int DEFAULT NULL,
  `ARR_DELAY_NEW` int DEFAULT NULL,
  `ARR_DEL15` int DEFAULT NULL,
  `ARR_DELAY_GROUP` int DEFAULT NULL,
  `ARR_TIME_BLK` varchar(70),
  `CANCELLED` int DEFAULT NULL,
  `CANCELLATION_CODE` varchar(70),
  `DIVERTED` int DEFAULT NULL,
  `DUP` varchar(70),
  `CRS_ELAPSED_TIME` int DEFAULT NULL,
  `ACTUAL_ELAPSED_TIME` int DEFAULT NULL,
  `AIR_TIME` int DEFAULT NULL,
  `FLIGHTS` int DEFAULT NULL,
  `DISTANCE` int DEFAULT NULL,
  `DISTANCE_GROUP` int DEFAULT NULL,
  `CARRIER_DELAY` varchar(70),
  `WEATHER_DELAY` varchar(70),
  `NAS_DELAY` varchar(70),
  `SECURITY_DELAY` varchar(70),
  `LATE_AIRCRAFT_DELAY` varchar(70),
  `FIRST_DEP_TIME` varchar(70),
  `TOTAL_ADD_GTIME` varchar(70),
  `LONGEST_ADD_GTIME` varchar(70),
  `DIV_AIRPORT_LANDINGS` int DEFAULT NULL,
  `DIV_REACHED_DEST` varchar(70),
  `DIV_ACTUAL_ELAPSED_TIME` varchar(70),
  `DIV_ARR_DELAY` varchar(70),
  `DIV_DISTANCE` varchar(70),
  `DIV1_AIRPORT` varchar(70),
  `DIV1_AIRPORT_ID` varchar(70),
  `DIV1_AIRPORT_SEQ_ID` varchar(70),
  `DIV1_WHEELS_ON` varchar(70),
  `DIV1_TOTAL_GTIME` varchar(70),
  `DIV1_LONGEST_GTIME` varchar(70),
  `DIV1_WHEELS_OFF` varchar(70),
  `DIV1_TAIL_NUM` varchar(70),
  `DIV2_AIRPORT` varchar(70),
  `DIV2_AIRPORT_ID` varchar(70),
  `DIV2_AIRPORT_SEQ_ID` varchar(70),
  `DIV2_WHEELS_ON` varchar(70),
  `DIV2_TOTAL_GTIME` varchar(70),
  `DIV2_LONGEST_GTIME` varchar(70),
  `DIV2_WHEELS_OFF` varchar(70),
  `DIV2_TAIL_NUM` varchar(70),
  `DIV3_AIRPORT` varchar(70),
  `DIV3_AIRPORT_ID` varchar(70),
  `DIV3_AIRPORT_SEQ_ID` varchar(70),
  `DIV3_WHEELS_ON` varchar(70),
  `DIV3_TOTAL_GTIME` varchar(70),
  `DIV3_LONGEST_GTIME` varchar(70),
  `DIV3_WHEELS_OFF` varchar(70),
  `DIV3_TAIL_NUM` varchar(70),
  `DIV4_AIRPORT` varchar(70),
  `DIV4_AIRPORT_ID` varchar(70),
  `DIV4_AIRPORT_SEQ_ID` varchar(70),
  `DIV4_WHEELS_ON` varchar(70),
  `DIV4_TOTAL_GTIME` varchar(70),
  `DIV4_LONGEST_GTIME` varchar(70),
  `DIV4_WHEELS_OFF` varchar(70),
  `DIV4_TAIL_NUM` varchar(70),
  `DIV5_AIRPORT` varchar(70),
  `DIV5_AIRPORT_ID` varchar(70),
  `DIV5_AIRPORT_SEQ_ID` varchar(70),
  `DIV5_WHEELS_ON` varchar(70),
  `DIV5_TOTAL_GTIME` varchar(70),
  `DIV5_LONGEST_GTIME` varchar(70),
  `DIV5_WHEELS_OFF` varchar(70),
  `DIV5_TAIL_NUM` varchar(70)
);



CREATE TABLE `airline_reporting` (
  `YEAR` int DEFAULT NULL,
  `QUARTER` int DEFAULT NULL,
  `MONTH` int DEFAULT NULL,
  `DAY_OF_MONTH` int DEFAULT NULL,
  `DAY_OF_WEEK` int DEFAULT NULL,
  `FL_DATE` TEXT DEFAULT NULL,
  `OP_UNIQUE_CARRIER` varchar(70),
  `OP_CARRIER_AIRLINE_ID` int DEFAULT NULL,
  `OP_CARRIER` varchar(70),
  `TAIL_NUM` varchar(70),
  `OP_CARRIER_FL_NUM` int DEFAULT NULL,
  `ORIGIN_AIRPORT_ID` int DEFAULT NULL,
  `ORIGIN_AIRPORT_SEQ_ID` int DEFAULT NULL,
  `ORIGIN_CITY_MARKET_ID` int DEFAULT NULL,
  `ORIGIN` varchar(70),
  `ORIGIN_CITY_NAME` varchar(70),
  `ORIGIN_STATE_ABR` varchar(70),
  `ORIGIN_STATE_FIPS` int DEFAULT NULL,
  `ORIGIN_STATE_NM` varchar(70),
  `ORIGIN_WAC` int DEFAULT NULL,
  `DEST_AIRPORT_ID` int DEFAULT NULL,
  `DEST_AIRPORT_SEQ_ID` int DEFAULT NULL,
  `DEST_CITY_MARKET_ID` int DEFAULT NULL,
  `DEST` varchar(70),
  `DEST_CITY_NAME` varchar(70),
  `DEST_STATE_ABR` varchar(70),
  `DEST_STATE_FIPS` int DEFAULT NULL,
  `DEST_STATE_NM` varchar(70),
  `DEST_WAC` int DEFAULT NULL,
  `CRS_DEP_TIME` int DEFAULT NULL,
  `DEP_TIME` int DEFAULT NULL,
  `DEP_DELAY` int DEFAULT NULL,
  `DEP_DELAY_NEW` int DEFAULT NULL,
  `DEP_DEL15` int DEFAULT NULL,
  `DEP_DELAY_GROUP` int DEFAULT NULL,
  `DEP_TIME_BLK` varchar(70),
  `TAXI_OUT` int DEFAULT NULL,
  `WHEELS_OFF` int DEFAULT NULL,
  `WHEELS_ON` int DEFAULT NULL,
  `TAXI_IN` int DEFAULT NULL,
  `CRS_ARR_TIME` int DEFAULT NULL,
  `ARR_TIME` int DEFAULT NULL,
  `ARR_DELAY` int DEFAULT NULL,
  `ARR_DELAY_NEW` int DEFAULT NULL,
  `ARR_DEL15` int DEFAULT NULL,
  `ARR_DELAY_GROUP` int DEFAULT NULL,
  `ARR_TIME_BLK` varchar(70),
  `CANCELLED` int DEFAULT NULL,
  `CANCELLATION_CODE` varchar(70),
  `DIVERTED` int DEFAULT NULL,
  `CRS_ELAPSED_TIME` int DEFAULT NULL,
  `ACTUAL_ELAPSED_TIME` int DEFAULT NULL,
  `AIR_TIME` int DEFAULT NULL,
  `FLIGHTS` int DEFAULT NULL,
  `DISTANCE` int DEFAULT NULL,
  `DISTANCE_GROUP` int DEFAULT NULL,
  `CARRIER_DELAY` varchar(70),
  `WEATHER_DELAY` varchar(70),
  `NAS_DELAY` varchar(70),
  `SECURITY_DELAY` varchar(70),
  `LATE_AIRCRAFT_DELAY` varchar(70),
  `FIRST_DEP_TIME` varchar(70),
  `TOTAL_ADD_GTIME` varchar(70),
  `LONGEST_ADD_GTIME` varchar(70),
  `DIV_AIRPORT_LANDINGS` int DEFAULT NULL,
  `DIV_REACHED_DEST` varchar(70),
  `DIV_ACTUAL_ELAPSED_TIME` varchar(70),
  `DIV_ARR_DELAY` varchar(70),
  `DIV_DISTANCE` varchar(70),
  `DIV1_AIRPORT` varchar(70),
  `DIV1_AIRPORT_ID` varchar(70),
  `DIV1_AIRPORT_SEQ_ID` varchar(70),
  `DIV1_WHEELS_ON` varchar(70),
  `DIV1_TOTAL_GTIME` varchar(70),
  `DIV1_LONGEST_GTIME` varchar(70),
  `DIV1_WHEELS_OFF` varchar(70),
  `DIV1_TAIL_NUM` varchar(70),
  `DIV2_AIRPORT` varchar(70),
  `DIV2_AIRPORT_ID` varchar(70),
  `DIV2_AIRPORT_SEQ_ID` varchar(70),
  `DIV2_WHEELS_ON` varchar(70),
  `DIV2_TOTAL_GTIME` varchar(70),
  `DIV2_LONGEST_GTIME` varchar(70),
  `DIV2_WHEELS_OFF` varchar(70),
  `DIV2_TAIL_NUM` varchar(70),
  `DIV3_AIRPORT` varchar(70),
  `DIV3_AIRPORT_ID` varchar(70),
  `DIV3_AIRPORT_SEQ_ID` varchar(70),
  `DIV3_WHEELS_ON` varchar(70),
  `DIV3_TOTAL_GTIME` varchar(70),
  `DIV3_LONGEST_GTIME` varchar(70),
  `DIV3_WHEELS_OFF` varchar(70),
  `DIV3_TAIL_NUM` varchar(70),
  `DIV4_AIRPORT` varchar(70),
  `DIV4_AIRPORT_ID` varchar(70),
  `DIV4_AIRPORT_SEQ_ID` varchar(70),
  `DIV4_WHEELS_ON` varchar(70),
  `DIV4_TOTAL_GTIME` varchar(70),
  `DIV4_LONGEST_GTIME` varchar(70),
  `DIV4_WHEELS_OFF` varchar(70),
  `DIV4_TAIL_NUM` varchar(70),
  `DIV5_AIRPORT` varchar(70),
  `DIV5_AIRPORT_ID` varchar(70),
  `DIV5_AIRPORT_SEQ_ID` varchar(70),
  `DIV5_WHEELS_ON` varchar(70),
  `DIV5_TOTAL_GTIME` varchar(70),
  `DIV5_LONGEST_GTIME` varchar(70),
  `DIV5_WHEELS_OFF` varchar(70),
  `DIV5_TAIL_NUM` varchar(70)
);




-- Merging airline_marketing and airline_reporting into one table

CREATE TABLE airline_schema.AIRLINE_DATA AS

SELECT `airline_marketing`.`YEAR`,
    `airline_marketing`.`QUARTER`,
    `airline_marketing`.`MONTH`,
    `airline_marketing`.`DAY_OF_MONTH`,
    `airline_marketing`.`DAY_OF_WEEK`,
    `airline_marketing`.`FL_DATE`,
    `airline_marketing`.`MKT_UNIQUE_CARRIER`,
    `airline_marketing`.`BRANDED_CODE_SHARE`,
    `airline_marketing`.`MKT_CARRIER_AIRLINE_ID`,
    `airline_marketing`.`MKT_CARRIER`,
    `airline_marketing`.`MKT_CARRIER_FL_NUM`,
    `airline_marketing`.`SCH_OP_UNIQUE_CARRIER`,
    `airline_marketing`.`SCH_OP_CARRIER_AIRLINE_ID`,
    `airline_marketing`.`SCH_OP_CARRIER`,
    `airline_marketing`.`SCH_OP_CARRIER_FL_NUM`,
    `airline_marketing`.`OP_UNIQUE_CARRIER`,
    `airline_marketing`.`OP_CARRIER_AIRLINE_ID`,
    `airline_marketing`.`OP_CARRIER`,
    `airline_marketing`.`TAIL_NUM`,
    `airline_marketing`.`OP_CARRIER_FL_NUM`,
    `airline_marketing`.`ORIGIN_AIRPORT_ID`,
    `airline_marketing`.`ORIGIN_AIRPORT_SEQ_ID`,
    `airline_marketing`.`ORIGIN_CITY_MARKET_ID`,
    `airline_marketing`.`ORIGIN`,
    `airline_marketing`.`ORIGIN_CITY_NAME`,
    `airline_marketing`.`ORIGIN_STATE_ABR`,
    `airline_marketing`.`ORIGIN_STATE_FIPS`,
    `airline_marketing`.`ORIGIN_STATE_NM`,
    `airline_marketing`.`ORIGIN_WAC`,
    `airline_marketing`.`DEST_AIRPORT_ID`,
    `airline_marketing`.`DEST_AIRPORT_SEQ_ID`,
    `airline_marketing`.`DEST_CITY_MARKET_ID`,
    `airline_marketing`.`DEST`,
    `airline_marketing`.`DEST_CITY_NAME`,
    `airline_marketing`.`DEST_STATE_ABR`,
    `airline_marketing`.`DEST_STATE_FIPS`,
    `airline_marketing`.`DEST_STATE_NM`,
    `airline_marketing`.`DEST_WAC`,
    `airline_marketing`.`CRS_DEP_TIME`,
    `airline_marketing`.`DEP_TIME`,
    `airline_marketing`.`DEP_DELAY`,
    `airline_marketing`.`DEP_DELAY_NEW`,
    `airline_marketing`.`DEP_DEL15`,
    `airline_marketing`.`DEP_DELAY_GROUP`,
    `airline_marketing`.`DEP_TIME_BLK`,
    `airline_marketing`.`TAXI_OUT`,
    `airline_marketing`.`WHEELS_OFF`,
    `airline_marketing`.`WHEELS_ON`,
    `airline_marketing`.`TAXI_IN`,
    `airline_marketing`.`CRS_ARR_TIME`,
    `airline_marketing`.`ARR_TIME`,
    `airline_marketing`.`ARR_DELAY`,
    `airline_marketing`.`ARR_DELAY_NEW`,
    `airline_marketing`.`ARR_DEL15`,
    `airline_marketing`.`ARR_DELAY_GROUP`,
    `airline_marketing`.`ARR_TIME_BLK`,
    `airline_marketing`.`CANCELLED`,
    `airline_marketing`.`CANCELLATION_CODE`,
    `airline_marketing`.`DIVERTED`,
    `airline_marketing`.`DUP`,
    `airline_marketing`.`CRS_ELAPSED_TIME`,
    `airline_marketing`.`ACTUAL_ELAPSED_TIME`,
    `airline_marketing`.`AIR_TIME`,
    `airline_marketing`.`FLIGHTS`,
    `airline_marketing`.`DISTANCE`,
    `airline_marketing`.`DISTANCE_GROUP`,
    `airline_marketing`.`CARRIER_DELAY`,
    `airline_marketing`.`WEATHER_DELAY`,
    `airline_marketing`.`NAS_DELAY`,
    `airline_marketing`.`SECURITY_DELAY`,
    `airline_marketing`.`LATE_AIRCRAFT_DELAY`,
    `airline_marketing`.`FIRST_DEP_TIME`,
    `airline_marketing`.`TOTAL_ADD_GTIME`,
    `airline_marketing`.`LONGEST_ADD_GTIME`,
    `airline_marketing`.`DIV_AIRPORT_LANDINGS`,
    `airline_marketing`.`DIV_REACHED_DEST`,
    `airline_marketing`.`DIV_ACTUAL_ELAPSED_TIME`,
    `airline_marketing`.`DIV_ARR_DELAY`,
    `airline_marketing`.`DIV_DISTANCE`,
    `airline_marketing`.`DIV1_AIRPORT`,
    `airline_marketing`.`DIV1_AIRPORT_ID`,
    `airline_marketing`.`DIV1_AIRPORT_SEQ_ID`,
    `airline_marketing`.`DIV1_WHEELS_ON`,
    `airline_marketing`.`DIV1_TOTAL_GTIME`,
    `airline_marketing`.`DIV1_LONGEST_GTIME`,
    `airline_marketing`.`DIV1_WHEELS_OFF`,
    `airline_marketing`.`DIV1_TAIL_NUM`,
    `airline_marketing`.`DIV2_AIRPORT`,
    `airline_marketing`.`DIV2_AIRPORT_ID`,
    `airline_marketing`.`DIV2_AIRPORT_SEQ_ID`,
    `airline_marketing`.`DIV2_WHEELS_ON`,
    `airline_marketing`.`DIV2_TOTAL_GTIME`,
    `airline_marketing`.`DIV2_LONGEST_GTIME`,
    `airline_marketing`.`DIV2_WHEELS_OFF`,
    `airline_marketing`.`DIV2_TAIL_NUM`,
    `airline_marketing`.`DIV3_AIRPORT`,
    `airline_marketing`.`DIV3_AIRPORT_ID`,
    `airline_marketing`.`DIV3_AIRPORT_SEQ_ID`,
    `airline_marketing`.`DIV3_WHEELS_ON`,
    `airline_marketing`.`DIV3_TOTAL_GTIME`,
    `airline_marketing`.`DIV3_LONGEST_GTIME`,
    `airline_marketing`.`DIV3_WHEELS_OFF`,
    `airline_marketing`.`DIV3_TAIL_NUM`,
    `airline_marketing`.`DIV4_AIRPORT`,
    `airline_marketing`.`DIV4_AIRPORT_ID`,
    `airline_marketing`.`DIV4_AIRPORT_SEQ_ID`,
    `airline_marketing`.`DIV4_WHEELS_ON`,
    `airline_marketing`.`DIV4_TOTAL_GTIME`,
    `airline_marketing`.`DIV4_LONGEST_GTIME`,
    `airline_marketing`.`DIV4_WHEELS_OFF`,
    `airline_marketing`.`DIV4_TAIL_NUM`,
    `airline_marketing`.`DIV5_AIRPORT`,
    `airline_marketing`.`DIV5_AIRPORT_ID`,
    `airline_marketing`.`DIV5_AIRPORT_SEQ_ID`,
    `airline_marketing`.`DIV5_WHEELS_ON`,
    `airline_marketing`.`DIV5_TOTAL_GTIME`,
    `airline_marketing`.`DIV5_LONGEST_GTIME`,
    `airline_marketing`.`DIV5_WHEELS_OFF`,
    `airline_marketing`.`DIV5_TAIL_NUM`
FROM `airline_schema`.`airline_marketing`

UNION

SELECT `airline_reporting`.`YEAR`,
    `airline_reporting`.`QUARTER`,
    `airline_reporting`.`MONTH`,
    `airline_reporting`.`DAY_OF_MONTH`,
    `airline_reporting`.`DAY_OF_WEEK`,
    `airline_reporting`.`FL_DATE`,
    NULL AS             `MKT_UNIQUE_CARRIER`,
    NULL AS             `BRANDED_CODE_SHARE`,
    NULL AS             `MKT_CARRIER_AIRLINE_ID`,
    NULL AS             `MKT_CARRIER`,
    NULL AS             `MKT_CARRIER_FL_NUM`,
    NULL AS             `SCH_OP_UNIQUE_CARRIER`,
    NULL AS             `SCH_OP_CARRIER_AIRLINE_ID`,
    NULL AS             `SCH_OP_CARRIER`,
    NULL AS             `SCH_OP_CARRIER_FL_NUM`,
    `airline_reporting`.`OP_UNIQUE_CARRIER`,
    `airline_reporting`.`OP_CARRIER_AIRLINE_ID`,
    `airline_reporting`.`OP_CARRIER`,
    `airline_reporting`.`TAIL_NUM`,
    `airline_reporting`.`OP_CARRIER_FL_NUM`,
    `airline_reporting`.`ORIGIN_AIRPORT_ID`,
    `airline_reporting`.`ORIGIN_AIRPORT_SEQ_ID`,
    `airline_reporting`.`ORIGIN_CITY_MARKET_ID`,
    `airline_reporting`.`ORIGIN`,
    `airline_reporting`.`ORIGIN_CITY_NAME`,
    `airline_reporting`.`ORIGIN_STATE_ABR`,
    `airline_reporting`.`ORIGIN_STATE_FIPS`,
    `airline_reporting`.`ORIGIN_STATE_NM`,
    `airline_reporting`.`ORIGIN_WAC`,
    `airline_reporting`.`DEST_AIRPORT_ID`,
    `airline_reporting`.`DEST_AIRPORT_SEQ_ID`,
    `airline_reporting`.`DEST_CITY_MARKET_ID`,
    `airline_reporting`.`DEST`,
    `airline_reporting`.`DEST_CITY_NAME`,
    `airline_reporting`.`DEST_STATE_ABR`,
    `airline_reporting`.`DEST_STATE_FIPS`,
    `airline_reporting`.`DEST_STATE_NM`,
    `airline_reporting`.`DEST_WAC`,
    `airline_reporting`.`CRS_DEP_TIME`,
    `airline_reporting`.`DEP_TIME`,
    `airline_reporting`.`DEP_DELAY`,
    `airline_reporting`.`DEP_DELAY_NEW`,
    `airline_reporting`.`DEP_DEL15`,
    `airline_reporting`.`DEP_DELAY_GROUP`,
    `airline_reporting`.`DEP_TIME_BLK`,
    `airline_reporting`.`TAXI_OUT`,
    `airline_reporting`.`WHEELS_OFF`,
    `airline_reporting`.`WHEELS_ON`,
    `airline_reporting`.`TAXI_IN`,
    `airline_reporting`.`CRS_ARR_TIME`,
    `airline_reporting`.`ARR_TIME`,
    `airline_reporting`.`ARR_DELAY`,
    `airline_reporting`.`ARR_DELAY_NEW`,
    `airline_reporting`.`ARR_DEL15`,
    `airline_reporting`.`ARR_DELAY_GROUP`,
    `airline_reporting`.`ARR_TIME_BLK`,
    `airline_reporting`.`CANCELLED`,
    `airline_reporting`.`CANCELLATION_CODE`,
    `airline_reporting`.`DIVERTED`,
    NULL AS             `DUP`,    
    `airline_reporting`.`CRS_ELAPSED_TIME`,
    `airline_reporting`.`ACTUAL_ELAPSED_TIME`,
    `airline_reporting`.`AIR_TIME`,
    `airline_reporting`.`FLIGHTS`,
    `airline_reporting`.`DISTANCE`,
    `airline_reporting`.`DISTANCE_GROUP`,
    `airline_reporting`.`CARRIER_DELAY`,
    `airline_reporting`.`WEATHER_DELAY`,
    `airline_reporting`.`NAS_DELAY`,
    `airline_reporting`.`SECURITY_DELAY`,
    `airline_reporting`.`LATE_AIRCRAFT_DELAY`,
    `airline_reporting`.`FIRST_DEP_TIME`,
    `airline_reporting`.`TOTAL_ADD_GTIME`,
    `airline_reporting`.`LONGEST_ADD_GTIME`,
    `airline_reporting`.`DIV_AIRPORT_LANDINGS`,
    `airline_reporting`.`DIV_REACHED_DEST`,
    `airline_reporting`.`DIV_ACTUAL_ELAPSED_TIME`,
    `airline_reporting`.`DIV_ARR_DELAY`,
    `airline_reporting`.`DIV_DISTANCE`,
    `airline_reporting`.`DIV1_AIRPORT`,
    `airline_reporting`.`DIV1_AIRPORT_ID`,
    `airline_reporting`.`DIV1_AIRPORT_SEQ_ID`,
    `airline_reporting`.`DIV1_WHEELS_ON`,
    `airline_reporting`.`DIV1_TOTAL_GTIME`,
    `airline_reporting`.`DIV1_LONGEST_GTIME`,
    `airline_reporting`.`DIV1_WHEELS_OFF`,
    `airline_reporting`.`DIV1_TAIL_NUM`,
    `airline_reporting`.`DIV2_AIRPORT`,
    `airline_reporting`.`DIV2_AIRPORT_ID`,
    `airline_reporting`.`DIV2_AIRPORT_SEQ_ID`,
    `airline_reporting`.`DIV2_WHEELS_ON`,
    `airline_reporting`.`DIV2_TOTAL_GTIME`,
    `airline_reporting`.`DIV2_LONGEST_GTIME`,
    `airline_reporting`.`DIV2_WHEELS_OFF`,
    `airline_reporting`.`DIV2_TAIL_NUM`,
    `airline_reporting`.`DIV3_AIRPORT`,
    `airline_reporting`.`DIV3_AIRPORT_ID`,
    `airline_reporting`.`DIV3_AIRPORT_SEQ_ID`,
    `airline_reporting`.`DIV3_WHEELS_ON`,
    `airline_reporting`.`DIV3_TOTAL_GTIME`,
    `airline_reporting`.`DIV3_LONGEST_GTIME`,
    `airline_reporting`.`DIV3_WHEELS_OFF`,
    `airline_reporting`.`DIV3_TAIL_NUM`,
    `airline_reporting`.`DIV4_AIRPORT`,
    `airline_reporting`.`DIV4_AIRPORT_ID`,
    `airline_reporting`.`DIV4_AIRPORT_SEQ_ID`,
    `airline_reporting`.`DIV4_WHEELS_ON`,
    `airline_reporting`.`DIV4_TOTAL_GTIME`,
    `airline_reporting`.`DIV4_LONGEST_GTIME`,
    `airline_reporting`.`DIV4_WHEELS_OFF`,
    `airline_reporting`.`DIV4_TAIL_NUM`,
    `airline_reporting`.`DIV5_AIRPORT`,
    `airline_reporting`.`DIV5_AIRPORT_ID`,
    `airline_reporting`.`DIV5_AIRPORT_SEQ_ID`,
    `airline_reporting`.`DIV5_WHEELS_ON`,
    `airline_reporting`.`DIV5_TOTAL_GTIME`,
    `airline_reporting`.`DIV5_LONGEST_GTIME`,
    `airline_reporting`.`DIV5_WHEELS_OFF`,
    `airline_reporting`.`DIV5_TAIL_NUM`
FROM `airline_schema`.`airline_reporting`
;


-- identify primary key in airline_data table
SELECT FL_DATE,
    OP_CARRIER_FL_NUM,
    OP_CARRIER_AIRLINE_ID,
    ORIGIN_AIRPORT_SEQ_ID,
	DEST_AIRPORT_SEQ_ID,
    count(*)
from AIRLINE_DATA
group by 1,2,3,4,5
having count(*) > 1
;



ALTER TABLE Reporting_Carrier
RENAME TO airline_reporting;


ALTER TABLE Marketing_Carrier
RENAME TO airline_marketing;

-- backup
Create table AIRLINE_DATA_BACKUP as
select  *
FROM airline_schema.AIRLINE_DATA;


-- Creating AIRLINE table
Create table AIRLINE as
select  FL_DATE,OP_CARRIER_AIRLINE_ID,TAIL_NUM,OP_CARRIER_FL_NUM,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID
FROM airline_schema.AIRLINE_DATA;


ALTER TABLE AIRLINE
ADD PRIMARY KEY (FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID);


 -- Creating table for AIRPORT:
Create table AIRPORT as
select DISTINCT ORIGIN_AIRPORT_SEQ_ID, ORIGIN_CITY_MARKET_ID,ORIGIN,ORIGIN_CITY_NAME,ORIGIN_STATE_FIPS
 FROM airline_schema.AIRLINE_DATA;
 
 ALTER TABLE AIRPORT RENAME COLUMN ORIGIN_AIRPORT_SEQ_ID TO AIRPORT_SEQ_ID;
 ALTER TABLE AIRPORT RENAME COLUMN ORIGIN_CITY_MARKET_ID TO CITY_MARKET_ID;
 ALTER TABLE AIRPORT RENAME COLUMN ORIGIN TO AIRPORT_CODE;
 ALTER TABLE AIRPORT RENAME COLUMN ORIGIN_CITY_NAME TO CITY_NAME;
 ALTER TABLE AIRPORT RENAME COLUMN ORIGIN_STATE_FIPS TO STATE_FIPS;

ALTER TABLE AIRPORT
ADD PRIMARY KEY (AIRPORT_SEQ_ID);


  -- Creating table for STATE:
 Create table STATE as
select DISTINCT ORIGIN_STATE_FIPS, ORIGIN_STATE_ABR, ORIGIN_STATE_NM, ORIGIN_WAC
 FROM airline_schema.AIRLINE_DATA;
 
 ALTER TABLE STATE RENAME COLUMN ORIGIN_STATE_FIPS TO STATE_FIPS;
 ALTER TABLE STATE RENAME COLUMN ORIGIN_STATE_ABR TO STATE_ABR;
 ALTER TABLE STATE RENAME COLUMN ORIGIN_STATE_NM TO STATE_NM;
 ALTER TABLE STATE RENAME COLUMN ORIGIN_WAC TO WAC;
 
 ALTER TABLE STATE
ADD PRIMARY KEY (STATE_FIPS);
 


   -- Creating table for CARRIER:
Create table CARRIER as
select  distinct OP_CARRIER_AIRLINE_ID, OP_UNIQUE_CARRIER
FROM airline_schema.AIRLINE_DATA;

ALTER TABLE CARRIER
ADD PRIMARY KEY (OP_CARRIER_AIRLINE_ID);

 

-- Creating table for DEPARTURE_PERFORMANCE  
CREATE TABLE DEPARTURE_PERFORMANCE AS
SELECT FL_DATE,
       OP_CARRIER_FL_NUM,
       OP_CARRIER_AIRLINE_ID,
       ORIGIN_AIRPORT_SEQ_ID,
       DEST_AIRPORT_SEQ_ID,
	   str_to_date(case when CRS_DEP_TIME =  2400 then '0000'
						when length(cast(CRS_DEP_TIME as char)) = 4 then cast(CRS_DEP_TIME as char)
						when length(cast(CRS_DEP_TIME as char)) = 3 then concat("0",cast(CRS_DEP_TIME as char))
						when length(cast(CRS_DEP_TIME as char)) = 2 then concat("00",cast(CRS_DEP_TIME as char))
						when length(cast(CRS_DEP_TIME as char)) = 1 then concat("000",cast(CRS_DEP_TIME as char))
					end, '%H%i' )as CRS_DEP_TIME,
       str_to_date(case  when DEP_TIME =  2400 then '0000'
                         when length(cast(DEP_TIME as char)) = 4 then cast(DEP_TIME as char)
						 when length(cast(DEP_TIME as char)) = 3 then concat("0",cast(DEP_TIME as char))
                         when length(cast(DEP_TIME as char)) = 2 then concat("00",cast(DEP_TIME as char))
                         when length(cast(DEP_TIME as char)) = 1 then concat("000",cast(DEP_TIME as char))
					end, '%H%i' )as DEP_TIME,
       TAXI_OUT, 
       WHEELS_OFF
FROM airline_schema.AIRLINE_DATA;
 
 
 ALTER TABLE DEPARTURE_PERFORMANCE
ADD PRIMARY KEY (FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID);
 
 
 
 -- Creating table for ARRIVAL_PERFORMANCE
CREATE TABLE ARRIVAL_PERFORMANCE AS
SELECT FL_DATE,
       OP_CARRIER_FL_NUM,
       OP_CARRIER_AIRLINE_ID,
       ORIGIN_AIRPORT_SEQ_ID,
       DEST_AIRPORT_SEQ_ID, 
	   str_to_date(case when CRS_ARR_TIME =  2400 then '0000'
                        when length(cast(CRS_ARR_TIME as char)) = 4 then cast(CRS_ARR_TIME as char)
					    when length(cast(CRS_ARR_TIME as char)) = 3 then concat("0",cast(CRS_ARR_TIME as char))
					    when length(cast(CRS_ARR_TIME as char)) = 2 then concat("00",cast(CRS_ARR_TIME as char))
					    when length(cast(CRS_ARR_TIME as char)) = 1 then concat("000",cast(CRS_ARR_TIME as char))
					end, '%H%i') as CRS_ARR_TIME,
       str_to_date(case when ARR_TIME =  2400 then '0000'
				         when length(cast(ARR_TIME as char)) = 4  then cast(ARR_TIME as char)
						 when length(cast(ARR_TIME as char)) = 3 then concat("0",cast(ARR_TIME as char))
                         when length(cast(ARR_TIME as char)) = 2 then concat("00",cast(ARR_TIME as char))
                         when length(cast(ARR_TIME as char)) = 1 then concat("000",cast(ARR_TIME as char))
				   end, '%H%i' )as ARR_TIME,
       TAXI_IN, 
       WHEELS_ON
FROM airline_schema.AIRLINE_DATA;


 
ALTER TABLE ARRIVAL_PERFORMANCE
ADD PRIMARY KEY (FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID);




-- Creating table for CANCEL_DIVERT
CREATE TABLE CANCEL_DIVERT AS
SELECT FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID, CANCELLED,CANCELLATION_CODE,DIVERTED 
FROM airline_schema.AIRLINE_DATA;

 
 ALTER TABLE CANCEL_DIVERT
ADD PRIMARY KEY (FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID);


 
-- Creating table for FLIGHT_SUMMARIES
CREATE TABLE FLIGHT_SUMMARIES AS
SELECT  FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID,CRS_ELAPSED_TIME, ACTUAL_ELAPSED_TIME, AIR_TIME,FLIGHTS,DISTANCE,DISTANCE_GROUP
FROM airline_schema.AIRLINE_DATA;
 
ALTER TABLE FLIGHT_SUMMARIES
ADD PRIMARY KEY (FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID);


 
-- Creating table for DELAY
CREATE TABLE DELAY AS
SELECT  FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID, CARRIER_DELAY,WEATHER_DELAY, NAS_DELAY, SECURITY_DELAY, LATE_AIRCRAFT_DELAY
FROM airline_schema.AIRLINE_DATA;
 
 ALTER TABLE DELAY
ADD PRIMARY KEY (FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID);



-- Creating table for GATE_INFO
CREATE TABLE GATE_INFO AS
SELECT  FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID,FIRST_DEP_TIME,TOTAL_ADD_GTIME,LONGEST_ADD_GTIME
FROM airline_schema.AIRLINE_DATA;

ALTER TABLE GATE_INFO
ADD PRIMARY KEY (FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID);




-- Creating table for DIVERTED_INFO
CREATE TABLE DIVERTED_INFO AS
SELECT FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID,DIVERTED,DIV_AIRPORT_LANDINGS,DIV_REACHED_DEST,DIV_ACTUAL_ELAPSED_TIME,DIV_ARR_DELAY,DIV_DISTANCE,DIV1_AIRPORT,DIV1_AIRPORT_ID,DIV1_AIRPORT_SEQ_ID,DIV1_WHEELS_ON,DIV1_TOTAL_GTIME,DIV1_LONGEST_GTIME,DIV1_WHEELS_OFF,DIV1_TAIL_NUM,DIV2_AIRPORT,DIV2_AIRPORT_ID,DIV2_AIRPORT_SEQ_ID,DIV2_WHEELS_ON,DIV2_TOTAL_GTIME,DIV2_LONGEST_GTIME,DIV2_WHEELS_OFF,DIV2_TAIL_NUM,DIV3_AIRPORT,DIV3_AIRPORT_ID,DIV3_AIRPORT_SEQ_ID,DIV3_WHEELS_ON,DIV3_TOTAL_GTIME,DIV3_LONGEST_GTIME,DIV3_WHEELS_OFF,DIV3_TAIL_NUM,DIV4_AIRPORT,DIV4_AIRPORT_ID,DIV4_AIRPORT_SEQ_ID,DIV4_WHEELS_ON,DIV4_TOTAL_GTIME,DIV4_LONGEST_GTIME,DIV4_WHEELS_OFF,DIV4_TAIL_NUM,DIV5_AIRPORT,DIV5_AIRPORT_ID,DIV5_AIRPORT_SEQ_ID,DIV5_WHEELS_ON,DIV5_TOTAL_GTIME,DIV5_LONGEST_GTIME,DIV5_WHEELS_OFF,DIV5_TAIL_NUM
 FROM airline_schema.AIRLINE_DATA;


ALTER TABLE DIVERTED_INFO
ADD PRIMARY KEY (FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID);


 
-- Including foreign keys
-- Adding Foreign keys in AIRLINE table
ALTER TABLE AIRLINE
ADD FOREIGN KEY (ORIGIN_AIRPORT_SEQ_ID) REFERENCES AIRPORT(AIRPORT_SEQ_ID);

ALTER TABLE AIRLINE
ADD FOREIGN KEY (DEST_AIRPORT_SEQ_ID) REFERENCES AIRPORT(AIRPORT_SEQ_ID);

ALTER TABLE AIRLINE
ADD FOREIGN KEY (OP_CARRIER_AIRLINE_ID) REFERENCES CARRIER(OP_CARRIER_AIRLINE_ID);




-- Adding Foreign keys in AIRPORT table
ALTER TABLE AIRPORT
ADD FOREIGN KEY (STATE_FIPS) REFERENCES STATE(STATE_FIPS);

ALTER TABLE AIRLINE
ADD FOREIGN KEY (FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID) REFERENCES ARRIVAL_PERFORMANCE(FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID);

ALTER TABLE AIRLINE
ADD FOREIGN KEY (FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID) REFERENCES DEPARTURE_PERFORMANCE(FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID);

ALTER TABLE AIRLINE
ADD FOREIGN KEY (FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID) REFERENCES CANCEL_DIVERT(FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID);

ALTER TABLE AIRLINE
ADD FOREIGN KEY (FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID) REFERENCES FLIGHT_SUMMARIES(FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID);

ALTER TABLE AIRLINE
ADD FOREIGN KEY (FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID) REFERENCES DELAY(FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID);

ALTER TABLE AIRLINE
ADD FOREIGN KEY (FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID) REFERENCES GATE_INFO(FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID);

ALTER TABLE AIRLINE
ADD FOREIGN KEY (FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID) REFERENCES DIVERTED_INFO(FL_DATE,OP_CARRIER_FL_NUM,OP_CARRIER_AIRLINE_ID,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID);




















