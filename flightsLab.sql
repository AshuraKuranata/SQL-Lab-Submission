-- Flight Labs Goal: Our main goal is to find out how many flights go from NYC to Paris.

------------------  HINTS  ------------------
-- The routes table has a column called origin_id and another called dest_id. These map to the id column in the airport table. Think about how to treat the ids as foreign keys.
-- You’re going to have to use the airports table twice in the same SQL statement. In order to tell which airport is the destination and which is the origin, you’re going to have to temporarily rename the airports table like so:

-- /* note that once you rename a table, you MUST refer to it by its new name */
-- SELECT * FROM airports AS origin WHERE origin.city = 'New York';
-- /* later on in the SQL statement, when dealing with the destination, you should do the same for airports AS destination */

-- Note that you’ll only need to use the routes and airports tables
-- Think about using aggregation and inner joins
-- Can solve with a single statement
----------------------------------------------

airlines
 id |                     name                     | alias | iata | icao |    callsign    |    country     | active
----+----------------------------------------------+-------+------+------+----------------+----------------+--------
  1 | Private flight                               | NULL  |      |      |                | NULL           | Y
  2 | 135 Airways                                  | NULL  |      | GNL  | GENERAL        | United States  | N
  3 | 1Time Airline                                | NULL  | 1T   | RNX  | NEXTIME        | South Africa   | Y
  4 | 2 Sqn No 1 Elementary Flying Training School | NULL  |      | WYT  |                | United Kingdom | N
  5 | 213 Flight Unit                              | NULL  |      | TFU  |                | Russia         | N
  6 | 223 Flight Unit State Airline                | NULL  |      | CHD  | CHKALOVSK-AVIA | Russia         | N
  7 | 224th Flight Unit                            | NULL  |      | TTF  | CARGO UNIT     | Russia         | N
  8 | 247 Jet Ltd                                  | NULL  |      | TWF  | CLOUD RUNNER   | United Kingdom | N
  9 | 3D Aviation                                  | NULL  |      | SEC  | SECUREX        | United States  | N

airports
 id |  name  |  city  |     country      | iata_faa | icao | latitude  | longitude  | altitude | utc_offset | dst |          tz
----+--------+--------+------------------+----------+------+-----------+------------+----------+------------+-----+----------------------
  1 | Goroka | Goroka | Papua New Guinea | GKA      | AYGA | -6.081689 | 145.391881 | 5282     | 10         | U   | Pacific/Port_Moresby


routes
 airline_code | airline_id | origin_code | origin_id | dest_code | dest_id | codeshare | stops | equipment
--------------+------------+-------------+-----------+-----------+---------+-----------+-------+-----------
 2B           |        410 | AER         |      2965 | KZN       |    2990 |           |     0 | CR2

-- Find all airports that originate from New York
-- Find all destination airports in Paris
-- Find out how many routes originate from New York
-- Find out how many routes have destinations in Paris
-- Try to decide which statements are necessary and find how to combine them to find out how many routes originate from New York and land in Paris!

-- How to get flights from NYC to Paris:
-- 1. Filter airports that are in Paris and in NYC
-- 2. Using that, determine which routes have NYC as the origin_id and Paris as the dest_id
-- 3. join the airline_id from routes to the id from airlines  

-- Original thought process:
-- SELECT airlines.name FROM airlines, airports AS dest WHERE dest.city = 'Paris' JOIN routes ON origin_id = airports.id WHERE airports.city = 'New York'

-- origin.id, origin.name, routes.airline_id, routes.origin_id, routes.dest_id
SELECT routes.airline_id FROM routes INNER JOIN airports AS origin ON routes.origin_id = origin.id INNER JOIN airports AS destination ON routes.dest_id = destination.id WHERE origin.city = 'New York' AND destination.city = 'Paris' GROUP BY routes.airline_id;

/* SOLUTION AFTER RUNNING CODE */
Answer = 11 or 14 depending on meaning of flights going from New York to Paris:
There are 14 airline entries that are listed to have an origin in New York and a destination in Paris.
However, 3 of the listed airline_ids are the same, with a landing in two different locations in Paris, so while there are 14 listed airlines flights, 3 of them are listed as the same airline id
So, either the answer is 14 for any listing, or 11 if you are looking for unique flight ID instances.
