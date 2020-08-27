CREATE DATABASE soccer_league;

\c soccer_league;

CREATE TABLE teams
(
    id SERIAL PRIMARY KEY,
    team_name TEXT NOT NULL
);

CREATE TABLE referees
(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE season
(
    id SERIAL PRIMARY KEY,
    start_date DATE,
    end_date DATE,
    standings TEXT
    []
);

    CREATE TABLE game
    (
        id SERIAL PRIMARY KEY,
        home_team INTEGER REFERENCES teams ON DELETE SET NULL,
        away_team INTEGER REFERENCES teams ON DELETE SET NULL,
        CHECK (away_team!=home_team),
        referee INTEGER REFERENCES referees ON DELETE SET NULL,
        season_id INTEGER REFERENCES season ON DELETE SET NULL
    );

    CREATE TABLE goals
    (
        id SERIAL PRIMARY KEY,
        player TEXT NOT NULL,
        game_id INTEGER REFERENCES game ON DELETE SET NULL
    );
