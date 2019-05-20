-- We are running a new contest to see who can get the most likes on a single
-- photo. WHO WON??!!

SELECT
  photos.id AS photo_id,
  COUNT(*) AS likes,
  username
FROM
  photos
INNER JOIN
  likes
  ON likes.photo_id = photos.id
INNER JOIN
  users
  ON users.id = photos.user_id
GROUP BY
  photos.id
ORDER BY
  likes
  DESC;
