-- We want to reward our users who have been around the longest.
-- Find the 5 oldest users.

SELECT   username, created_at
FROM     users
ORDER BY created_at
LIMIT    5;
