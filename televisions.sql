-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.

-- Write SQL commands under the prompts below, and run the file to get results.

-- In case there is already a televisions table, drop it

----------------------------------------
-- Create a televisions table
--  The table should have id, model_name, screen_size, resolution,
--  price, release_date, photo_url
----------------------------------------
-- CREATE TABLE televisions ( id serial, model_name text, screen_size text, resolution text, price decimal, release_date timestamp, photo_url text );

--  id | model_name | screen_size | resolution | price | release_date | photo_url
-- ----+------------+-------------+------------+-------+--------------+-----------
----------------------------------------

----------------------------------------
-- Insert 4 televisions into the tv_models table

-- INSERT INTO televisions ( model_name, screen_size, resolution, price, release_date, photo_url ) VALUES ( 'SHARP CRT TV', '32''', '800 x 600', 300, NOW(), 'faketv1.fake.lol' ), ( 'Better LCD TV', '40''', '1200 x 800', 450, NOW(), 'faketv2.fake.lol' ), ( 'FlatScreen Real Good', '52''', '1920 x 1080', 600, NOW(), 'faketv3.fake.lol' ), ( 'Theater Wall TV', '96''', '4K', 1000, NOW(), 'faketv4.fake.lol' );
----------------------------------------

----------------------------------------
-- Select all entries from the tv_models table

-- SELECT * FROM televisions

--  id |      model_name      | screen_size | resolution  | price |        release_date        |    photo_url
-- ----+----------------------+-------------+-------------+-------+----------------------------+------------------
--   1 | SHARP CRT TV         | 32'         | 800 x 600   |   300 | 2025-04-23 11:47:19.575644 | faketv1.fake.lol
--   2 | Better LCD TV        | 40'         | 1200 x 800  |   450 | 2025-04-23 11:47:19.575644 | faketv2.fake.lol
--   3 | FlatScreen Real Good | 52'         | 1920 x 1080 |   600 | 2025-04-23 11:47:19.575644 | faketv3.fake.lol
--   4 | Theater Wall TV      | 96'         | 4K          |  1000 | 2025-04-23 11:47:19.575644 | faketv4.fake.lol
----------------------------------------

-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below

-- Alter the tv_models, removing the resolution column
--  and add vertical_resolution and horizontal_resolution columns
