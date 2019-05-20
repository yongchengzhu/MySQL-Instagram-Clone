CREATE TABLE tags (
  id         INT AUTO_INCREMENT PRIMARY KEY,
  tag_name   VARCHAR(255) NOT NULL UNIQUE,
  created_at TIMESTAMP DEFAULT NOW()
);