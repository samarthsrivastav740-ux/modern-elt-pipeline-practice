WITH raw_movies AS (
    SELECT * FROM MOVIELENS.RAW.RAW_TAGS
)
SELECT
    userid as user_id,
    movieid as movie_id,
    tag,
    TO_TIMESTAMP_LTZ(timestamp) as tag_timestamp
FROM raw_movies