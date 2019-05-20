-- We want to target our inactive users with an email campaign.
-- Find the users who have never posted a photo.

SELECT    username, photos.id AS 'photo_id'
FROM      users
LEFT JOIN photos ON user_id = users.id
WHERE     photos.id IS NULL;
