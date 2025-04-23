--enter your seed data below

INSERT INTO apartments (
    apartment_number,
    bedrooms,
    bathrooms,
    address,
    tenant,
    occupied,
    sq_ft,
    price
) VALUES
(101, 2, 1, '123 Maple St, Springfield, IL', 'Alice Johnson', true, 900, 1200),
(202, 3, 2, '456 Oak Ave, Springfield, IL', 'Michael Smith', false, 1350, 1600),
(305, 1, 1, '789 Pine Rd, Springfield, IL', 'Jennifer Lee', true, 750, 1000);

INSERT INTO offices (
    office_number,
    floors,
    sq_ft,
    cubicles,
    bathrooms,
    address,
    company,
    occupied,
    price
) VALUES
(10, 2, 2000, 20, 2, '1000 Tech Blvd, Silicon City, CA', 'Innovatech LLC', true, 5000),
(22, 3, 3500, 40, 4, '200 Business Rd, Silicon City, CA', 'GreenCore Inc.', false, 8000),
(5, 1, 1200, 10, 1, '300 Finance Ln, Silicon City, CA', 'QuickTax Services', true, 3200);

INSERT INTO storefronts (
    address,
    occupied,
    price,
    kitchen,
    sq_ft,
    owner,
    outdoor_seating
) VALUES
('150 Market St, Downtown, NY', true, 4500, true, 1100, 'Diane Cooper', false),
('99 Riverwalk Dr, Waterfront, NY', false, 6000, false, 1800, 'Terry Nguyen', true),
('35 Elm St, Midtown, NY', true, 5200, true, 1500, 'Carlos Ramirez', true);
