SELECT
    m.title,
    AVG(r.rating) AS rating
FROM
    ratings r -- JOIN movies m
    JOIN movies m ON m.id = r.movie_id
GROUP BY
    m.title
;
