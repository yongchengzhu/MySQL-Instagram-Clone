-- A brand wants to know which hashtags to use in a post.
-- What are the top 5 most commonly used hashtags?

SELECT     tag_name, COUNT(*) AS top_5_tags
FROM       tags
INNER JOIN photo_tags ON tags.id = tag_id
GROUP BY   tag_id
ORDER BY   top_5_tags DESC
LIMIT      5;
