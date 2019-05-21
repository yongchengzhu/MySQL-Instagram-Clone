SELECT
  username,
  COUNT(*) AS photos_liked
FROM
  users
INNER JOIN
  likes ON user_id = users.id
GROUP BY
  user_id
HAVING
  photos_liked = (SELECT COUNT(*) FROM photos)
