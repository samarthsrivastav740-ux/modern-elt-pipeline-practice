WITH raw_movies AS (
    SELECT * FROM MOVIELENS.RAW.RAW_GENOME_TAGS
)
SELECT
    tagid as tag_id,
    tag
FROM raw_movies