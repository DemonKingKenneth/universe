-- Create the database
CREATE DATABASE universe;

-- Connect to the database
\c universe;

-- Create the galaxy table
CREATE TABLE galaxy (
    galaxy_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    size_in_light_years NUMERIC(10, 2) NOT NULL,
    type TEXT NOT NULL,
    has_black_hole BOOLEAN NOT NULL
);

-- Create the star table
CREATE TABLE star (
    star_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    galaxy_id INT NOT NULL REFERENCES galaxy(galaxy_id),
    temperature INT NOT NULL,
    is_main_sequence BOOLEAN NOT NULL
);

-- Create the planet table
CREATE TABLE planet (
    planet_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    star_id INT NOT NULL REFERENCES star(star_id),
    mass NUMERIC(10, 2) NOT NULL,
    has_life BOOLEAN NOT NULL
);

-- Create the moon table
CREATE TABLE moon (
   moon_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    planet_id INT NOT NULL REFERENCES planet(planet_id),
    radius INT NOT NULL,
    is_tidally_locked BOOLEAN NOT NULL
);

-- Create the space_station table
CREATE TABLE space_station (
    space_station_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    purpose TEXT NOT NULL,
    capacity INT NOT NULL,
    is_operational BOOLEAN NOT NULL
);

-- Insert rows into the galaxy table
INSERT INTO galaxy (name, size_in_light_years, type, has_black_hole) VALUES
('Milky Way', 100000.00, 'Spiral', TRUE),
('Andromeda', 110000.00, 'Spiral', TRUE),
('Triangulum', 60000.00, 'Spiral', FALSE),
('Large Magellanic Cloud', 14000.00, 'Irregular', FALSE),
('Small Magellanic Cloud', 7000.00, 'Irregular', FALSE),
('Whirlpool', 76000.00, 'Spiral', TRUE);

-- Insert rows into the star table
INSERT INTO star (name, galaxy_id, temperature, is_main_sequence) VALUES
('Sun', 1, 5778, TRUE),
('Sirius', 1, 9940, TRUE),
('Betelgeuse', 1, 3500, FALSE),
('Rigel', 2, 12100, FALSE),
('Proxima Centauri', 1, 3042, TRUE),
('Vega', 1, 9602, TRUE);

-- Insert rows into the planet table
INSERT INTO planet (name, star_id, mass, has_life) VALUES
('Mercury', 1, 0.33, FALSE),
('Venus', 1, 4.87, FALSE),
('Earth', 1, 5.97, TRUE),
('Mars', 1, 0.64, FALSE),
('Jupiter', 1, 1898.00, FALSE),
('Saturn', 1, 568.00, FALSE),
('Uranus', 1, 86.80, FALSE),
('Neptune', 1, 102.00, FALSE),
('Alpha Centauri Bb', 6, 1.13, FALSE),
('Kepler-22b', 2, 36.00, TRUE),
('Gliese 581g', 3, 4.80, TRUE),
('HD 209458b', 4, 220.00, FALSE);

-- Insert rows into the moon table
INSERT INTO moon (name, planet_id, radius, is_tidally_locked) VALUES
('Moon', 3, 1737, TRUE),
('Phobos', 4, 11, TRUE),
('Deimos', 4, 6, TRUE),
('Io', 5, 1821, TRUE),
('Europa', 5, 1560, TRUE),
('Ganymede', 5, 2634, TRUE),
('Callisto', 5, 2410, TRUE),
('Titan', 6, 2575, TRUE),
('Enceladus', 6, 252, TRUE),
('Mimas', 6, 198, TRUE),
('Triton', 8, 1353, TRUE),
('Charon', 7, 606, TRUE),
('Oberon', 7, 761, TRUE),
('Titania', 7, 789, TRUE),
('Miranda', 7, 235, TRUE),
('Ariel', 7, 578, TRUE),
('Dione', 6, 561, TRUE),
('Rhea', 6, 764, TRUE),
('Iapetus', 6, 734, TRUE),
('Hyperion', 6, 135, TRUE);

-- Insert rows into the space_station table
INSERT INTO space_station (name, purpose, capacity, is_operational) VALUES
('ISS', 'Research', 6, TRUE),
('Tiangong', 'Research', 3, TRUE),
('Skylab', 'Research', 3, FALSE);
