CREATE DATABASE craigslist;

\c craigslist;

CREATE TABLE region (
    id SERIAL PRIMARY KEY,
    location TEXT
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    location TEXT
);

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE posts(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT,
    user_id INTEGER REFERENCES users ON DELETE CASCADE, 
    category_id INTEGER REFERENCES categories ON DELETE SET NULL, 
    region_id INTEGER REFERENCES region ON DELETE SET NULL
);
