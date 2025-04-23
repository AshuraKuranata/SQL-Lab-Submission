-- 1. The average square footage of all offices.
SELECT SUM(sq_ft) id FROM offices;

-- 2. The total number of apartments.
SELECT COUNT(id) FROM apartments;

-- 3. The apartments where there is no tenant
SELECT COUNT(*) FROM apartments WHERE occupied IS false; 

-- 4. The names of all of the companies
SELECT company FROM offices;

-- 5. The number of cubicles and bathrooms in the 3rd office
SELECT cubicles, bathrooms FROM offices OFFSET 2;

-- 6. The storefronts that have kitchens
SELECT address FROM storefronts WHERE kitchen IS true;

-- 7. The storefront with the highest square footage and outdoor seating
SELECT * FROM storefronts WHERE outdoor_seating IS true ORDER BY sq_ft DESC LIMIT 1;

-- 8. The office with the lowest number of cubicles
SELECT * FROM offices ORDER BY cubicles ASC LIMIT 1;

-- 9. The office with the most cubicles and bathrooms
-- MULTIPLE MODIFICATIONS, learned how to use SUM function and the requirement to use GROUP BY to create opportunity for
-- code to function properly when displaying the table of the added values, then sorting by the sum total that then filters.
SELECT SUM(cubicles + bathrooms), company FROM offices GROUP BY company ORDER BY SUM(cubicles + bathrooms) DESC LIMIT 1;