-- Our investors want to know how many times does the average user post.

SELECT
  (SELECT COUNT(*) FROM photos) /
  (SELECT COUNT(*) FROM users)
  AS average_user_post;
