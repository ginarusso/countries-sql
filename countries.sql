CREATE TABLE continents (id SERIAL PRIMARY KEY, continent_name VARCHAR(50) NOT NULL);
CREATE TABLE countries (id SERIAL PRIMARY KEY, country_name VARCHAR(50) NOT NULL, capital_city VARCHAR(50) NOT NULL, population INT, continent_id INT, FOREIGN KEY (continent_id) REFERENCES continents(id));

INSERT INTO continents (continent_name) VALUES 
('North America'),
('South America'),
('Europe'),
('Asia'),
('Africa'),
('Australia'),
('Antarctica');

INSERT INTO countries (
    country_name, 
    capital_city, 
    population, 
    continent_id) 
    VALUES 
    ('United States', 'Washington D.C.', 328200000, 1),
    ('Canada', 'Ottawa', 37590000, 1),
    ('Mexico', 'Mexico City', 126200000, 1),
    ('Brazil', 'Brasilia', 209500000, 2),
    ('Argentina', 'Buenos Aires', 44940000, 2),
    ('Colombia', 'Bogota', 50340000, 2),
    ('France', 'Paris', 67060000, 3),
    ('Germany', 'Berlin', 83020000, 3),
    ('Italy', 'Rome', 60360000, 3),
    ('China', 'Beijing', 1393000000, 4),
    ('India', 'New Delhi', 1353000000, 4),
    ('Japan', 'Tokyo', 126500000, 4),
    ('Nigeria', 'Abuja', 200900000, 5),
    ('Egypt', 'Cairo', 100400000, 5),
    ('Ethiopia', 'Addis Ababa', 107500000, 5),
    ('Australia', 'Canberra', 25400000, 6),
    ('New Zealand', 'Wellington', 5000000, 6),
    ('Papua New Guinea', 'Port Moresby', 8600000, 6),
    ('Antarctica', 'N/A', 1000, 7);