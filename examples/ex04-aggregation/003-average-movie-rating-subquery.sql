SELECT
    r.movie_id,
    m.title AS movie_title,
    r.rating
FROM
    (
        SELECT
            movie_id,
            AVG(r.rating) AS rating
        FROM
            ratings r
        GROUP BY
            movie_id
    ) r
    JOIN movies m ON m.id = r.movie_id
;
