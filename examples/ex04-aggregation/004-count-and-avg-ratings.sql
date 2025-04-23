SELECT r.movie_id,
    m.title as movie_title,
    r.total_ratings,
    r.avg_rating
FROM (
        SELECT movie_id,
            COUNT(r.rating) AS total_ratings,
            AVG(r.rating) AS avg_rating
        from ratings r
        GROUP BY movie_id
    ) r
    JOIN movies m ON m.id = r.movie_id;
