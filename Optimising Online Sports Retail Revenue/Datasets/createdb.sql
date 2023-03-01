DROP TABLE IF EXISTS info;

CREATE TABLE info (
  product_name VARCHAR(64),
  product_id VARCHAR(100) PRIMARY KEY,
  description VARCHAR(64)
);

DROP TABLE IF EXISTS finance;

CREATE TABLE finance (
    product_id VARCHAR(100) PRIMARY KEY,
    listing_price FLOAT,   
    sale_price FLOAT,
    discount FLOAT,
    revenue FLOAT,
);

DROP TABLE IF EXISTS reviews;

CREATE TABLE reviews (
    product_name VARCHAR (64),
    product_id  VARCHAR(100) PRIMARY KEY,
    rating FLOAT,
    reviews FLOAT
);

DROP TABLE IF EXISTS traffic;

CREATE TABLE traffic (
    product_id VARCHAR(100) PRIMARY KEY,
    last_visited TIMESTAMP  
);

DROP TABLE IF EXISTS brands;

CREATE TABLE brands (
    product_id VARCHAR(100) PRIMARY KEY,
    brand VARCHAR(64)
);

\copy info FROM 'info_v2.csv' DELIMITER ',' CSV HEADER;
\copy finance FROM 'finance.csv' DELIMITER ',' CSV HEADER;
\copy reviews FROM 'reviews_v2.csv' DELIMITER ',' CSV HEADER;
\copy traffic FROM 'traffic_v3.csv' DELIMITER ',' CSV HEADER;
\copy brands FROM 'brands_v2.csv' DELIMITER ',' CSV HEADER;