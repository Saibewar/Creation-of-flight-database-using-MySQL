-- CLASS PROJECT 2

-- 1. Get the state name,cityname of the flights that flew the least distance with AIRTIME less than 30.
-- When we run this query we can observe that the Flights which had airtime less than 30 majorly had origin as Miami Florida.
select S.STATE_NM,A.CITY_NAME AS ORIGIN,DATE(F.FL_DATE),SUBSTRING(A.AIRPORT_SEQ_ID, 1, 5) AS AIRPORT_ID, F.DISTANCE FROM FLIGHT_SUMMARIES F
join  AIRPORT A on F.ORIGIN_AIRPORT_SEQ_ID = A.AIRPORT_SEQ_ID
join STATE S on A.STATE_FIPS = S.STATE_FIPS 
WHERE DISTANCE = (SELECT MIN(DISTANCE) FROM FLIGHT_SUMMARIES)
AND F.AIR_TIME<30 limit 10;

-- Extra:
select S.STATE_NM,A.CITY_NAME AS ORIGIN,DATE(F.FL_DATE),SUBSTRING(A.AIRPORT_SEQ_ID, 1, 5) AS AIRPORT_ID, F.DISTANCE FROM FLIGHT_SUMMARIES F
join  AIRPORT A on F.ORIGIN_AIRPORT_SEQ_ID = A.AIRPORT_SEQ_ID
join STATE S on A.STATE_FIPS = S.STATE_FIPS 
WHERE DISTANCE = (SELECT MIN(DISTANCE) FROM FLIGHT_SUMMARIES)
AND F.AIR_TIME<30;


-- 2. Get the cityname,flight date,carrier airline id, DEPARTURE TIME for the flights whose cityname started with letter A and which had departure time between 6pm and 6.15pm

SELECT A.CITY_NAME,DATE(P.FL_DATE),P.OP_CARRIER_AIRLINE_ID,P.DEP_TIME FROM AIRPORT A
join  DEPARTURE_PERFORMANCE P on A.AIRPORT_SEQ_ID = P.ORIGIN_AIRPORT_SEQ_ID
WHERE DEP_TIME IN(select DEP_TIME FROM DEPARTURE_PERFORMANCE where DEP_TIME BETWEEN '18:00:00' AND '18:15:00' )
AND A.CITY_NAME LIKE "A%"
AND YEAR(P.FL_DATE)=1998;



-- 3. Get the sum of the distance covered by the flights whose airtime was between 100 and 200 and which had carrier AA. Similarly do it for carrier UA and combine it in a single result and create a view.
create view  Sum_Of_Distance as 
select sum(F.DISTANCE) AS "Sum of Distance",C.OP_UNIQUE_CARRIER FROM FLIGHT_SUMMARIES F
join  CARRIER C on F.OP_CARRIER_AIRLINE_ID = C.OP_CARRIER_AIRLINE_ID
WHERE AIR_TIME BETWEEN 100 AND 200
AND C.OP_UNIQUE_CARRIER='AA'
GROUP BY 2
UNION ALL
select sum(F.DISTANCE) AS "Sum of Distance",C.OP_UNIQUE_CARRIER FROM FLIGHT_SUMMARIES F
join  CARRIER C on F.OP_CARRIER_AIRLINE_ID = C.OP_CARRIER_AIRLINE_ID
WHERE AIR_TIME BETWEEN 100 AND 200
AND C.OP_UNIQUE_CARRIER='UA'
GROUP BY 2;



-- 4.Carrier with the maximum number of flights for each year.
-- When we run this query we can observe that UA has maximum number of flights in 1998 and 1999 and WN has maximum number of flights in 2015,2016,2020,2021
select * from (
SELECT *,
rank() OVER (PARTITION BY FL_YEAR ORDER BY Count DESC) as FL_RANK FROM 
(
SELECT C.OP_UNIQUE_CARRIER, YEAR(FL_DATE) AS FL_YEAR,COUNT(distinct OP_CARRIER_FL_NUM,ORIGIN_AIRPORT_SEQ_ID,DEST_AIRPORT_SEQ_ID) AS Count
FROM AIRLINE I
JOIN CARRIER C ON I.OP_CARRIER_AIRLINE_ID = C.OP_CARRIER_AIRLINE_ID
GROUP BY 1,2) AS A) b where FL_RANK = 1;


-- 5. Longest distance coverage for each carrier in each year
-- When we run this query we can observe that,
-- In 1998 & 1999, the carrier "CO" flying to and fro from HNL and EWR has travelled the longest distance of 4962
-- In 2015 $ 2016, the carrier "HA","DL" flying to and fro from HNL and JFK has travelled the longest distance of 4983
-- In 2020 & 2021, the carrier "HA" flying to and fro from HNL and BOS has travelled the longest distance of 5095 
 
select distinct YEAR(FL_DATE), b.OP_UNIQUE_CARRIER, C.AIRPORT_CODE as ORIGIN, D.AIRPORT_CODE as DESTINATION, distance as longest_distance
FROM  FLIGHT_SUMMARIES F
 JOIN CARRIER b 
      on F.OP_CARRIER_AIRLINE_ID = b.OP_CARRIER_AIRLINE_ID
 join airport c 
      on F.ORIGIN_AIRPORT_SEQ_ID = c.AIRPORT_SEQ_ID
 join airport d 
      on F.DEST_AIRPORT_SEQ_ID = d.AIRPORT_SEQ_ID  
 WHERE 
(YEAR(F.FL_DATE), F.OP_CARRIER_AIRLINE_ID, F.DISTANCE) in 
(select * from (SELECT YEAR(FL_DATE) AS FL_YEAR,OP_CARRIER_AIRLINE_ID, MAX(DISTANCE) 
FROM FLIGHT_SUMMARIES group by 1,2)as a)
 group by 1,2,3,4,5
 order by YEAR(FL_DATE), DISTANCE desc;
 
 
/* -- 6. Get the airport codes,carrier airline id and their maximum arrival time at each airport on '2020-12-01'

select distinct A.AIRPORT_CODE,P.ARR_TIME,F.OP_CARRIER_AIRLINE_ID FROM AIRPORT A
JOIN AIRLINE F ON A.AIRPORT_SEQ_ID = F.ORIGIN_AIRPORT_SEQ_ID
JOIN ARRIVAL_PERFORMANCE P ON F.OP_CARRIER_AIRLINE_ID = P.OP_CARRIER_AIRLINE_ID
where P.ARR_TIME IN (select AVG(ARR_TIME) from ARRIVAL_PERFORMANCE GROUP BY OP_CARRIER_AIRLINE_ID) 
AND F.FL_DATE='2020-12-01';*/


-- 6. Get the flights whose scheduled arrival time is before 7:00 am and  departure time is after 6pm and whose carrier is DL.
SELECT DATE(AP.FL_DATE),AP.OP_CARRIER_AIRLINE_ID,AP.ARR_TIME,DP.DEP_TIME FROM DEPARTURE_PERFORMANCE DP
join  ARRIVAL_PERFORMANCE AP on DP.ORIGIN_AIRPORT_SEQ_ID = AP.ORIGIN_AIRPORT_SEQ_ID
join  CARRIER C on AP.OP_CARRIER_AIRLINE_ID = C.OP_CARRIER_AIRLINE_ID
WHERE DP.DEP_TIME IN(select DEP_TIME FROM DEPARTURE_PERFORMANCE where DEP_TIME >'18:00:00' )
AND AP.ARR_TIME IN(select ARR_TIME FROM ARRIVAL_PERFORMANCE where ARR_TIME <'7:00:00' )
AND C.OP_UNIQUE_CARRIER="DL";


-- 7.Busiest ORIGIN airport
select FL_YEAR, b.AIRPORT_CODE, no_of_flights
from (select YEAR(FL_DATE) as fl_year, ORIGIN_AIRPORT_SEQ_ID, count(*) as no_of_flights , rank() over(partition by YEAR(FL_DATE) order by count(*) desc) as FL_RANK
from AIRLINE
group by 1,2) a
join airport b on a.ORIGIN_AIRPORT_SEQ_ID = b.AIRPORT_SEQ_ID
where FL_RANK <=5;

 -- We can observe that
-- in 1998, most of flights that have origin as ORD,ATL,DFW,LAX,STL 
-- in 1999, most of flights that have origin as ORD,ATL,DFW,LAX,PHX 
-- in 2015, most of flights that have origin as ATL,ORD,DFW,DEN,LAX
-- in 2016, most of flights that have origin as ATL,ORD,DEN,DFW,LAX
-- in 2021, most of flights that have origin as ATL,DFW,DEN,CLT,ORD
-- in 2020, most of flights that have origin as ATL,DFW,DEN,ORD,CLT

-- It looks like ALT, ORD, DFW are the busiest origin airports.



-- 8.Busiest Destination airports
select FL_YEAR, b.AIRPORT_CODE, no_of_flights
from (select YEAR(FL_DATE) as fl_year, DEST_AIRPORT_SEQ_ID, count(*) as no_of_flights , rank() over(partition by YEAR(FL_DATE) order by count(*) desc) as FL_RANK
from AIRLINE
group by 1,2) a
join airport b on a.DEST_AIRPORT_SEQ_ID = b.AIRPORT_SEQ_ID
where FL_RANK <=5;

 -- We can observe that
-- in 1998, most of flights that have dest as ORD,ATL,DFW,LAX,STL 
-- in 1999, most of flights that have dest as ORD,ATL,DFW,LAX,PHX 
-- in 2015, most of flights that have dest as ATL,ORD,DFW,DEN,LAX
-- in 2016, most of flights that have dest as ATL,ORD,DEN,DFW,LAX
-- in 2021, most of flights that have dest as ATL,DFW,DEN,CLT,ORD
-- in 2020, most of flights that have dest as ATL,DFW,DEN,ORD,CLT

-- Therefore it looks like  ALT, ORD, DFW are the busies destination airports 


-- 9. flight count by day of the week

select YEAR(FL_DATE) as FL_YEAR,dayofweek(FL_DATE) as FL_DOW,
case 
when dayofweek(FL_DATE) = 1 then 'Sunday'
when dayofweek(FL_DATE) = 2 then 'Monday'
when dayofweek(FL_DATE) = 3 then 'Tuesday'
when dayofweek(FL_DATE) = 4 then 'Wednesday'
when dayofweek(FL_DATE) = 5 then 'Thursday'
when dayofweek(FL_DATE) = 6 then 'Friday'
when dayofweek(FL_DATE) = 7 then 'Saturday'
end as DAY
,c.AIRPORT_CODE as origin_airport
, count(*) as no_of_flights
from AIRLINE a
join AIRPORT c on a.ORIGIN_AIRPORT_SEQ_ID = c.AIRPORT_SEQ_ID
where AIRPORT_CODE = 'DCA'
group by 1,2,3,4
order by 1,2
;
-- We can get the number of flights for each day and we can observe that the number of flights are more on Tuesday comparatively.



-- 10.Finding out the MAXIMUM TAXI IN time for every dest airport in 2021
select FL_YEAR,DEST_AIRPORT,MAX_TAXI_IN 
from 
(
SELECT YEAR(a.FL_DATE) as FL_YEAR, c.CITY_NAME as DEST_AIRPORT, count(*) as flights, 
rank() over(partition by YEAR(FL_DATE) order by count(*) desc) as RANK_FL, 
MAX(b.TAXI_IN) as MAX_TAXI_IN
FROM 
AIRLINE a 
join ARRIVAL_PERFORMANCE b 
     on a.FL_DATE = b.FL_DATE
     and a.OP_CARRIER_AIRLINE_ID = b.OP_CARRIER_AIRLINE_ID
     and a.OP_CARRIER_FL_NUM = b.OP_CARRIER_FL_NUM
     and a.ORIGIN_AIRPORT_SEQ_ID = b.ORIGIN_AIRPORT_SEQ_ID
     and a.DEST_AIRPORT_SEQ_ID = b.DEST_AIRPORT_SEQ_ID
join airport c on a.DEST_AIRPORT_SEQ_ID = c.AIRPORT_SEQ_ID
where 
 year(a.FL_DATE) = 2020
group by 1,2
) a 
where RANK_FL <=10;
-- The Taxi In is maximum in Dallas Texas compared to all other destinations





-- 11.Finding out the MAXIMUM TAXI OUT time for every ORIGIN airport in 2021
select FL_YEAR,CITY,AVG_TAXI_OUT 
from 
(
SELECT YEAR(a.FL_DATE) as FL_YEAR, c.CITY_NAME as CITY, count(*) as flights, 
rank() over(partition by YEAR(FL_DATE) order by count(*) desc) as RANK_FL, 
AVG(b.TAXI_OUT) as AVG_TAXI_OUT
FROM 
AIRLINE a  
join DEPARTURE_PERFORMANCE b 
     on a.FL_DATE = b.FL_DATE
     and a.OP_CARRIER_AIRLINE_ID = b.OP_CARRIER_AIRLINE_ID
     and a.OP_CARRIER_FL_NUM = b.OP_CARRIER_FL_NUM
     and a.ORIGIN_AIRPORT_SEQ_ID = b.ORIGIN_AIRPORT_SEQ_ID
     and a.DEST_AIRPORT_SEQ_ID = b.DEST_AIRPORT_SEQ_ID
join airport c on a.ORIGIN_AIRPORT_SEQ_ID = c.AIRPORT_SEQ_ID
where 
 year(a.FL_DATE) = 2020
group by 1,2
) a 
where RANK_FL <=10;

-- The Taxi out is also maximum in Dallas Texas compared to all other origins



-- NUMBER OF FLIGHTS BY DAY
select DATE(FL_DATE), COUNT(FLIGHTS) FROM FLIGHT_SUMMARIES
GROUP BY FL_DATE;


--
select 
	FL_DATE,
    OP_CARRIER_FL_NUM,
    OP_CARRIER_AIRLINE_ID,
    ORIGIN_AIRPORT_SEQ_ID,
	DEST_AIRPORT_SEQ_ID,
    dep_time,
    crs_dep_time,
(select (dep_time - crs_dep_time)/100 from departure_performance)as dep_delay
 from departure_performance;


 select 
	FL_DATE,
    OP_CARRIER_FL_NUM,
    OP_CARRIER_AIRLINE_ID,
    ORIGIN_AIRPORT_SEQ_ID,
	DEST_AIRPORT_SEQ_ID,
    dep_time,
    crs_dep_time,
 case when crs_dep_time = '00:00:00' then 0 else (dep_time - crs_dep_time)/100 end as dep_delay
 from departure_performance;

 
 
 
 
 (select 
    FL_DATE,
    OP_CARRIER_FL_NUM,
    OP_CARRIER_AIRLINE_ID,
    ORIGIN_AIRPORT_SEQ_ID,
	DEST_AIRPORT_SEQ_ID,
    ARR_TIME,
    CRS_ARR_TIME,
    case when crs_arr_time = '00:00:00' then 0 else (ARR_TIME - crs_arr_time)/100 end as arr_delay,
    case when (case when crs_arr_time = '00:00:00' then 0 else (ARR_TIME - crs_arr_time)/100 end) > 15 then 1 else 0 end as arr_del15
    from ARRIVAL_PERFORMANCE
    WHERE (case when crs_arr_time = '00:00:00' then 0 else (ARR_TIME - crs_arr_time)/100 end) > 0)
 UNION
 (select 
    FL_DATE,
    OP_CARRIER_FL_NUM,
    OP_CARRIER_AIRLINE_ID,
    ORIGIN_AIRPORT_SEQ_ID,
	DEST_AIRPORT_SEQ_ID,
    DEP_TIME,
    CRS_DEP_TIME,
    case when crs_dep_time = '00:00:00' then 0 else (dep_time - crs_dep_time)/100 end as dep_delay,
    case when (case when crs_dep_time = '00:00:00' then 0 else (dep_time - crs_dep_time)/100 end) > 15 then 1 else 0 end as dep_del15
    from departure_performance
    WHERE (case when crs_dep_time = '00:00:00' then 0 else (dep_time - crs_dep_time)/100 end) > 0);
    
    

 
 
 select  DATE(F.FL_DATE) ,A.CITY_NAME AS origin, B.CITY_NAME as destination, F.AIR_TIME  from  FLIGHT_SUMMARIES  F
 JOIN AIRPORT A ON F.ORIGIN_AIRPORT_SEQ_ID=A.AIRPORT_SEQ_ID
  JOIN AIRPORT B ON F.DEST_AIRPORT_SEQ_ID=B.AIRPORT_SEQ_ID;
 
 
 select YEAR(D.FL_DATE),C.OP_CARRIER_AIRLINE_ID,C.OP_UNIQUE_CARRIER, D.TAXI_OUT from DEPARTURE_PERFORMANCE D JOIN
 CARRIER C ON D.OP_CARRIER_AIRLINE_ID=C.OP_CARRIER_AIRLINE_ID;
 
 
 
 
 select FL_YEAR,CITY,AVG_TAXI_OUT 
from 
(
SELECT YEAR(a.FL_DATE) as FL_YEAR, c.CITY_NAME as CITY, count(*) as flights, 
rank() over(partition by YEAR(FL_DATE) order by count(*) desc) as RANK_FL, 
AVG(b.TAXI_OUT) as AVG_TAXI_OUT
FROM 
AIRLINE a  
join DEPARTURE_PERFORMANCE b 
     on a.FL_DATE = b.FL_DATE
     and a.OP_CARRIER_AIRLINE_ID = b.OP_CARRIER_AIRLINE_ID
     and a.OP_CARRIER_FL_NUM = b.OP_CARRIER_FL_NUM
     and a.ORIGIN_AIRPORT_SEQ_ID = b.ORIGIN_AIRPORT_SEQ_ID
     and a.DEST_AIRPORT_SEQ_ID = b.DEST_AIRPORT_SEQ_ID
join airport c on a.ORIGIN_AIRPORT_SEQ_ID = c.AIRPORT_SEQ_ID
group by 1,2
) a 
where RANK_FL <=10;
 
 
 
 
 
 
 


  select  DATE(F.FL_DATE) ,A.CITY_NAME AS origin, B.CITY_NAME as destination, F.FLIGHTS, F.DISTANCE, F.AIR_TIME  from  FLIGHT_SUMMARIES  F
 JOIN AIRPORT A ON F.ORIGIN_AIRPORT_SEQ_ID=A.AIRPORT_SEQ_ID
  JOIN AIRPORT B ON F.DEST_AIRPORT_SEQ_ID=B.AIRPORT_SEQ_ID;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
























