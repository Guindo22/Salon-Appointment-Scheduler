-- Create customers table
CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  phone VARCHAR(15) UNIQUE NOT NULL,
  name VARCHAR(50) NOT NULL
);

-- Create services table
CREATE TABLE services (
  service_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

-- Create appointments table
CREATE TABLE appointments (
  appointment_id SERIAL PRIMARY KEY,
  customer_id INT REFERENCES customers(customer_id),
  service_id INT REFERENCES services(service_id),
  time VARCHAR(20) NOT NULL
);

INSERT INTO services (name) VALUES
('cut'),
('color'),
('perm'),
('style'),
('trim');

INSERT INTO services (service_id, name) VALUES
(1, 'cut'),
(2, 'color'),
(3, 'perm'),
(4, 'style'),
(5, 'trim');

UPDATE services SET service_id = 1 WHERE name = 'cut';
UPDATE services SET service_id = 2 WHERE name = 'color';
UPDATE services SET service_id = 3 WHERE name = 'perm';
UPDATE services SET service_id = 4 WHERE name = 'style';
UPDATE services SET service_id = 5 WHERE name = 'trim';
