-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE producers
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE artists
(
  id SERIAL PRIMARY KEY
);

CREATE TABLE albums
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  release_date DATE NOT NULL
);

CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  album_ID INTEGER REFERENCES albums
);

CREATE TABLE songs_artists
(
  id SERIAL PRIMARY KEY,
  song_id INTEGER REFERENCES songs,
  artist_id INTEGER REFERENCES artists
);

CREATE TABLE songs_producers
(
  id SERIAL PRIMARY KEY,
  song_id INTEGER REFERENCES songs,
  producer_id INTEGER REFERENCES producers
);

