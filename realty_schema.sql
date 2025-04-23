-- enter your schema for apartments, offices and storefronts below

CREATE TABLE apartments (
    id serial PRIMARY KEY,
    apartment_number integer,
    bedrooms integer,
    bathrooms integer,
    address varchar(255),
    tenant varchar(255),
    occupied boolean,
    sq_ft integer,
    price integer
);

CREATE TABLE offices (
    id serial PRIMARY KEY,
    office_number integer,
    floors integer,
    sq_ft integer,
    cubicles integer,
    bathrooms integer,
    address varchar(255),
    company varchar(255),
    occupied boolean,
    price integer
);

CREATE TABLE storefronts (
    address varchar(255),
    occupied boolean,
    price integer,
    kitchen boolean,
    sq_ft integer,
    owner varchar(255),
    outdoor_seating boolean
);