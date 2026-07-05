WITH src_movies AS (
    SELECT * FROM {{ ref('src_movies') }}
)
SELECT 
    movie_id,
    INITCAP(TRIM(title)) as title,
    SPLIT(genres, '|') as genre_array
FROM src_movies