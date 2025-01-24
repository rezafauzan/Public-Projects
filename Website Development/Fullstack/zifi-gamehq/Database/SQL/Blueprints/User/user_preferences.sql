-- id
-- username
-- language
-- ui_theme

CREATE SCHEMA IF NOT EXISTS users;

CREATE TABLE IF NOT EXISTS users.users_preference (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    language_id SMALLINT NOT NULL DEFAULT 1,
    ui_theme VARCHAR(255) NOT NULL DEFAULT 'system',

    CONSTRAINT fk_username_user_preferences FOREIGN KEY (username) REFERENCES users(username) ON DELETE RESTRICT ON UPDATE CASCADE
);