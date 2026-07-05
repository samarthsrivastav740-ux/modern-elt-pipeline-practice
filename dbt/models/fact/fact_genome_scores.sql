WITH raw_movies AS (
    SELECT * FROM {{ ref('src_genome_scores') }}
)
SELECT
    movie_id,
    tag_id,
    ROUND(relevance, 4) as relevance_score
FROM raw_movies
WHERE relevance > 0 