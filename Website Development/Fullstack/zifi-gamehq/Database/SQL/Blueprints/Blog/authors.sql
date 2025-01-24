-- id
-- user_id
-- author_bio
-- created_at
-- updated_at

CREATE SCHEMA IF NOT EXISTS users;

CREATE TABLE IF NOT EXISTS users.authors (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL UNIQUE,
    author_bio TEXT,
    author_facebook_link TEXT,
    author_instagram_link TEXT,
    author_linkedin_link TEXT,
    author_github_link TEXT,
    show_email BOOLEAN NOT NULL DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users.users(id) ON DELETE RESTRICT ON UPDATE CASCADE
);