DROP TABLE flights;
DROP TABLE airlines;
DROP TABLE destinations;
DROP TABLE departures;

CREATE TABLE departures (
  id serial8 primary key,
  departure_airport_name VARCHAR(255),
  departure_city VARCHAR(255)
);

CREATE TABLE destinations (
  id serial8 primary key,
  destination_airport_name VARCHAR(255),
  destination_city VARCHAR(255),
  country VARCHAR(255)
);

CREATE TABLE airlines (
  id serial8 primary key,
  airline_name VARCHAR(255),
  phone VARCHAR(255),
  email VARCHAR(255)
);

CREATE TABLE flights (
  id serial8 primary key,
  flight_number VARCHAR(255),
  ticket_cost FLOAT(2),
  flight_date DATE,
  capacity INT8,
  available_seats INT8,
  status VARCHAR(255),
  airline_id INT8 REFERENCES airlines(id),
  departure_id INT8 REFERENCES departures(id),
  destination_id INT8 REFERENCES destinations(id)
);
