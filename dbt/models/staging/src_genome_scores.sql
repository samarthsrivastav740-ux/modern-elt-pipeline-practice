WITH raw_movies AS (
    SELECT * FROM MOVIELENS.RAW.RAW_GENOME_SCORES
)
SELECT
    movieid as movie_id,
    tagid as tag_id,
    relevance
FROM raw_movies