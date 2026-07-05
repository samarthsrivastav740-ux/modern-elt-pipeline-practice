WITH raw_movies AS (
    SELECT * FROM MOVIELENS.RAW.RAW_LINKS
)
SELECT
    movieid as movie_id,
    imdbid as imdb_id,
    tmdbid as tmdb_id
FROM raw_movies