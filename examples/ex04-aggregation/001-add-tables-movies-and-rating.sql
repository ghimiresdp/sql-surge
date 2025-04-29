BEGIN
;

CREATE TABLE IF NOT EXISTS movies (id SERIAL PRIMARY KEY, title VARCHAR(128))
;

CREATE TABLE IF NOT EXISTS ratings (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users (id),
    movie_id INTEGER REFERENCES movies (id),
    rating INTEGER,
    UNIQUE (user_id, movie_id) -- a user can rate a movie only once
)
;

INSERT INTO
    movies (title)
VALUES
    ('Interstellar'),
    ('Star Wars')
;

INSERT INTO
    ratings (user_id, movie_id, rating)
VALUES
    (1, 1, 3),
    (2, 1, 8),
    (3, 1, 7),
    (4, 1, 8),
    (5, 1, 9),
    (6, 1, 6),
    (1, 2, 7),
    (2, 2, 6),
    (3, 2, 9),
    (4, 2, 3),
    (5, 2, 6)
;

COMMIT
;
