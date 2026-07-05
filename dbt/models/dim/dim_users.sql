WITH ratings AS (
    SELECT DISTINCT user_id FROM {{ ref('src_ratings') }}
),
tags AS (
    SELECT DISTINCT user_id FROM {{ ref('src_tags') }}
)
SELECT * FROM (
    SELECT * FROM ratings
    UNION
    SELECT * FROM tags
) AS all_users