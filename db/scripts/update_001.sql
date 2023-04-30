CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(128),
    phone VARCHAR(128),
    password TEXT,
    CONSTRAINT phone_unique UNIQUE (phone)
);

CREATE TABLE IF NOT EXISTS brand(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE
);

INSERT INTO brand(name) VALUES ('BMW');
INSERT INTO brand(name) VALUES ('Audi');
INSERT INTO brand(name) VALUES ('Toyota');
INSERT INTO brand(name) VALUES ('Honda');
INSERT INTO brand(name) VALUES ('Kia');
INSERT INTO brand(name) VALUES ('Nissan');
INSERT INTO brand(name) VALUES ('Ford');

CREATE TABLE IF NOT EXISTS body(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE
);

INSERT INTO body(name) VALUES ('Sedan');
INSERT INTO body(name) VALUES ('SUV');
INSERT INTO body(name) VALUES ('Cinvertable');
INSERT INTO body(name) VALUES ('Coupe');

CREATE TABLE IF NOT EXISTS transmission(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE
);

INSERT INTO transmission(name) VALUES ('Automatic');
INSERT INTO transmission(name) VALUES ('Manual');

CREATE TABLE if not exists advertisement (
    id SERIAL PRIMARY KEY,
    name TEXT,
    price INT,
    photo BYTEA,
    description TEXT,
    sold BOOLEAN,
    created TIMESTAMP,
    brand_id INT NOT NULL REFERENCES brand(id),
    body_id INT NOT NULL REFERENCES body(id),
    transmission_id INT NOT NULL REFERENCES transmission(id),
    users_id INT NOT NULL REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS users_advertisement (
    id SERIAL PRIMARY KEY,
    advertisement_id INT NOT NULL REFERENCES advertisement,
    users_id INT NOT NULL REFERENCES users
);