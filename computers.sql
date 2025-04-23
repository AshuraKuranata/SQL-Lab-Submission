-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.

-- Write SQL commands under the prompts below, and run the file to get results.

-- In case there is already a computers table, drop it

-- Create a computers table

-- The table should have id, make, model, cpu_speed, memory_size,
--  price, release_date, photo_url, storage_amount, number_usb_ports,
--  number_firewire_ports, number_thunderbolt_ports

-- CODE TO CREATE TABLE:
----------------------------------------
-- CREATE TABLE computers ( id serial, make varchar(20), model varchar(20
-- ), cpu_speed decimal, memory_size decimal, price decimal, release_date timestamp, photo_url
-- varchar(1000), storage_amount decimal, number_usb_ports int, number_firewire_ports int, numb
-- er_thunderbolt_ports int );

-- OUTPUT from Select view query:
----------------------------------------
--  id | make | model | cpu_speed | memory_size | price | release_date | photo_url | storage_amount | number_usb_ports | number_firewire_ports | number_thunderbolt_ports
-- ----+------+-------+-----------+-------------+-------+--------------+-----------+----------------+------------------+-----------------------+--------------------------

-- Insert 4 computers into the computers table
----------------------------------------
-- Re-evaluated datasets and updated columns:
-- ALTER TABLE computers ALTER COLUMN storage_amount TYPE varchar(10), ALTER COLUMN cpu_speed TYPE varchar(10), ALTER COLUMN memory_size TYPE varchar(10), ALTER COLUMN photo_url TYPE text;
----------------------------------------
-- Adding new computers to table commands:
-- INSERT INTO computers ( make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports ) VALUES ( 'Windows', 'MTX-231', '6.5 GHz', '99 GB', 2000, NOW(), 'fake1.fakeimg.lol', '3Tb', 4, 2, 2 );
-- INSERT INTO computers ( make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports ) VALUES ( 'Mac', 'MacBook Pro', '4.5 GHz', '2 GB', 6000, NOW(), 'fake2.fakeimg.lol', '2GB', 0, 0, 2 );
-- INSERT INTO computers ( make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports ) VALUES ( 'Ye Olde PC', 'Rock Tower', '2 horses', 'Wicker Bag', 5, NOW(), 'fake3.fakeimg.lol', 'Satchel', 0, 0, 0 ), ( 'Alienware', 'PWN-420', '100 GHz', '2 TB', 9001, NOW(), 'fake4.fakeimg.lol', '90TB', 6, 6, 6 );
----------------------------------------
-- Select all entries from the computers table
-- SELECT * FROM computers;

--  id |    make    |    model    | cpu_speed | memory_size | price |        release_date        |     photo_url     | storage_amount | number_usb_ports | number_firewire_ports | number_thunderbolt_ports
-- ----+------------+-------------+-----------+-------------+-------+----------------------------+-------------------+----------------+------------------+-----------------------+--------------------------
--   1 | Windows    | MTX-231     | 6.5 GHz   | 99 GB       |  2000 | 2025-04-23 11:02:14.442633 | fake1.fakeimg.lol | 3Tb            |                4 |                     2 |                        2
--   2 | Mac        | MacBook Pro | 4.5 GHz   | 2 GB        |  6000 | 2025-04-23 11:08:06.929259 | fake1.fakeimg.lol | 2GB            |                0 |                     0 |                        2
--   3 | Ye Olde PC | Rock Tower  | 2 horses  | Wicker Bag  |     5 | 2025-04-23 11:20:06.389389 | fake3.fakeimg.lol | Satchel        |                0 |                     0 |                        0
--   4 | Alienware  | PWN-420     | 100 GHz   | 2 TB        |  9001 | 2025-04-23 11:20:06.389389 | fake4.fakeimg.lol | 90TB           |                6 |                     6 |                        6
----------------------------------------
-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below

-- Alter the computers_models, removing the storage_amount column
-- and add storage_type and storage_size columns
