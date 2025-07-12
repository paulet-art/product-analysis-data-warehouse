-- Drop table if exists
DROP TABLE IF EXISTS fact_user_events;
DROP TABLE IF EXISTS dim_users;
DROP TABLE IF EXISTS dim_products;
DROP TABLE IF EXISTS dim_time;

-- Create table dim_users
CREATE TABLE dim_users(
    user_id INT PRIMARY KEY,
    signup_date DATE NOT NULL,
    country VARCHAR(50),
    device_type VARCHAR(50)
);

-- Create table dim_products
CREATE TABLE dim_products(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    tier VARCHAR(20) CHECK(tier IN ('free', 'premium', 'enterprise'))
);

-- Create table dim_time
CREATE TABLE dim_time(
    date DATE PRIMARY KEY,
    day_of_week VARCHAR(10),
    week INT,
    month INT,
    year INT
);

-- CREATE table fact_user_events
CREATE TABLE fact_user_events(
    event_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES dim_users(user_id),
    product_id INT REFERENCES dim_product(product_id),
    event_type VARCHAR(20) CHECK(event_type IN ('signup', 'login', 'purchase', 'upgrade', 'downgrade', 'cancel')),
    event_timestamp TIMESTAMP NOT NULL
);