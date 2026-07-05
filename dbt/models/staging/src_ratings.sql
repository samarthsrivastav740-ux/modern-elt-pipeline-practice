{{
    config(
        materialized='table'
    )
}}

WITH raw_movies AS (
    SELECT * FROM MOVIELENS.RAW.RAW_RATINGS
)
SELECT
    userid as user_id,
    movieid as movie_id,
    rating,
    TO_TIMESTAMP_LTZ(timestamp) as rating_timestamp
FROM raw_movies