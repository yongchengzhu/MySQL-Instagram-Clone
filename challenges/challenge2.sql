-- What day of the week do most users register on?
-- We neeed to figure out when to schedule an ad campaign.

SELECT
  DAYNAME(created_at) AS day,
  COUNT(DAYNAME(created_at)) AS count
FROM
  users
GROUP BY
  day
ORDER BY
  count
  DESC;
